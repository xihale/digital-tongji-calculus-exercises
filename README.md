# 高等数学习题册

## Intro

本项目是《高等数学习题册》的电子版（一般配套同济大学出版社的《高等数学》使用），包含：

- **详细的答案解析**：由 AI 辅助生成，暂时没有人工校对
- **统一 data-driven 版式**：题目数据与样式分离；样式集中在 `lib/`
- **三态输出**：练习版 / 完整版（题+解）/ 答案速查+详解

> ⚠️ **重要声明**：本书大量借助 AI 进行处理，题干部分经由人工校对，但答案和解析部分主要由 AI 生成。由于人手不足，暂时没有人工校对，**请读者自行甄别**。如遇错误或疑惑，欢迎提交 issue 或 pull request。

## 结构

```
高数/
├── index.typ                 # 全书入口
├── intro.typ
├── lib/
│   ├── style.typ             # 页边距 / 字号 / 行高 / 色 / MODE
│   ├── ui.typ                # 选项 / 填空 / 解 / 题号
│   └── render.typ            # book-section / book-chapter / 三态渲染
├── 第一章 … / 第七章 … /     # 上册
├── 第八章 … / 第十二章 … /   # 下册
│   ├── index.typ             # book-chapter + include 各节
│   └── *.typ                 # 每节：section-title + problems 数据
└── 模拟卷与真题/
```

每节数据形态：

```typ
#import "../lib/render.typ": book-section

#let section-title = [第一节 ……]
#let problems = (
  (kind: "choice", stem: […], options: (…), answer: [A], solution: […]),
  (kind: "blank", stem: […], answer: [$…$], solution: […]),
  // 空在题末（默认）：不写 #blank()，渲染器自动贴在 stem 后
  (kind: "blank", stem: […分别为], answers: ([$a$], [$b$]), solution: […]),
  // 空在题干内：用 #blank() 占位，按出现顺序对应 answer/answers
  (kind: "blank", stem: [设 $f(x)=$ #blank()，则 $f'(0)=$ #blank()], answers: ([$x^2$], [$0$]), solution: […]),
  (kind: "compute", stem: […], parts: (…), solution-parts: (…)),
)
#book-section(section-title, problems)
```

导入：`#import "../lib/render.typ": book-section, blank`（题干内嵌空时需要 `blank`）。

题型 `kind`：`judge` | `choice` | `blank` | `compute` | `short` | `proof`。

小节标题（「一、判断题」等）由 `problems` 中 `kind` 的首次出现顺序**自动推断**，不必写 `kind-title`。仅在需要覆盖默认名时，在该组**首题**写可选 `kind-title`（如「判断题（如果错误，请加以改正）」、试卷分值、同 `kind` 下另起的应用题/选答题）。

## 三态

| 输入                   | 效果                    |
| ---------------------- | ----------------------- |
| 默认 / `MODE=practice` | 纯题（练习版）          |
| `MODE=full`            | 题干 + 蓝色详解         |
| `MODE=answers`         | 无题干：答案速查 + 详解 |

## 自行构建

### 前置

- Typst 环境
- **字体**：推荐使用 Noto Serif CJK SC

### 编译文档

项目根目录提供 `Makefile`，三态编译一把梭（统一 `--no-pdf-tags`）：

```bash
make practice   # 练习版（纯题）
make full       # 完整版（题 + 蓝色详解）
make answers    # 答案速查 + 详解
make all        # 三态全出
make watch      # 实时预览（默认 practice；WATCH=full make watch 切换）
make clean      # 清理产物
```

对应底层命令（亦可直接调用）：

```bash
typst compile --no-pdf-tags --input MODE=practice --input VERSION=$(git describe --tags --always) index.typ 高等数学习题册.pdf
typst compile --no-pdf-tags --input MODE=full     --input VERSION=$(git describe --tags --always) index.typ 高等数学习题册_附答案.pdf
typst compile --no-pdf-tags --input MODE=answers  --input VERSION=$(git describe --tags --always) index.typ 高等数学习题册_纯答案.pdf
```

封面版本号由 git tag 自动识别（`git describe --tags --always --dirty`）：贴在 tag 上为 `vX.Y.Z`，中间提交为 `vX.Y.Z-N-gHASH`。可覆盖：`VERSION=v1.0.0 make practice`。

### 实时预览

```bash
make watch                    # 默认练习版
WATCH=full make watch         # 完整版
```

### 发版

推送符合 `v*` 的 git tag 后，GitHub Actions（`.github/workflows/release.yml`）会：

1. 检出完整历史（供 `git describe`）
2. `make all` 编译三态 PDF
3. 创建 GitHub Release 并挂上产物

```bash
git tag -a v0.2.1 -m "v0.2.1"
git push origin v0.2.1
# 或：git push origin master --tags
```

**注意**：workflow 文件必须存在于**被 tag 的那次提交**里，否则该 tag 不会触发 CI。

## License

本项目采用 [MIT License](./LICENSE) 开源许可证。

## 相关资源

- [Typst 官方文档](https://typst.app/docs)
- [Typst 中文文档](https://typst-doc-cn.github.io/)
