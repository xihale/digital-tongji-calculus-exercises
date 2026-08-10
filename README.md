# 高等数学习题册（上·下总集）

**一份开源的高等数学习题集电子化版本，使用 Typst 排版，内容配套同济大学《高等数学(第七版)》。**

有一些漏网之鱼没有处理，以后再弄。

## Intro

本项目是《高等数学习题册》的 Typst 排版项目，包含：

- **详细的答案解析**：由 AI 辅助生成，人工校对题干、部分公式
- **统一 data-driven 版式**：题目数据与样式分离；样式集中在 `lib/`
- **三态输出**：练习版 / 完整版（题+解）/ 答案速查+详解
- **完整的目录**：自动生成两级目录（章和节），支持点击跳转和页码显示

> ⚠️ **重要声明**：本书大量借助 AI 进行处理，题干部分经由人工校对，但答案和解析部分主要由 AI 生成。由于人手不足，可能存在错误，**请读者自行甄别**。如遇错误或疑惑，欢迎提交 issue 或 pull request。

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
├── 模拟卷与真题/
└── exp/                      # 独立一节实验入口（同 lib）
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

### 内容格式约定

| 项 | 约定 |
|----|------|
| 公式 | 一律行内 `$…$`；微分写 `dif`，如 $(dif y)/(dif x)$、$(dif^2 y)/(dif x^2)$ |
| 判断 | 答案 `√` / `×`；题干不写句号；渲染器只贴 `（　）`，括号后不加 `。` |
| 选择 | 答案 `A`–`D`；题干不写句号；渲染器只贴 `（　）`，括号后不加 `。` |
| 填空 | 题干不写句号；空位后不加 `。`；数学答案包在 `$…$`；多空用 `answers: (…, …)`；句中空写 `#blank()`（按序消费答案），未写则空位仍在题末 |
| 小问 `parts` | 非末项以 `；` 收束，末项以 `。` |
| 计算/简答/证明题干 | 无需结尾句号（需要语气时可用 `？` / `：`） |
| 参数方程 | `$x = …,\; y = …$`，不用 `cases` 独行 |


## 下册并入说明

- 第八～十二章：自 `高数下/x` 迁入统一 `book-section` 格式；**第八、十章**在整理过程中被裁减的题目已从 git 提交 `449e1d0` 恢复（总题量 88 + 66）。
- 下册四套期末卷：因扫描版 PDF + MinerU OCR 公式损坏严重，**题面以原书页图嵌入**（`模拟卷与真题/images/下册/`），答案为 OCR 纯文本速查；结构化录入待后续校对。
- 共享数学宏见 `lib/math.typ`（`dif`/`pd`/`Prj`/`int`/`iint` 等）。

## 三态

| 输入 | 效果 |
|------|------|
| 默认 / `MODE=practice` | 纯题（练习版） |
| `MODE=full` | 题干 + 蓝色详解 |
| `MODE=answers` | 无题干：答案速查 + 详解 |

## 自行构建

### 前置

- 必须安装 Typst 环境（推荐使用 0.14.0 或更高版本以支持图片无障碍标签）
  详情请参考 官网

- **字体**：正文使用 Noto Serif CJK SC，需系统已安装（多数 Linux 发行版自带）

### 编译文档

项目根目录提供 `Makefile`，三态编译一把梭（统一带 `--no-pdf-tags`，与发布版体积一致）：

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
typst compile --no-pdf-tags --input MODE=practice index.typ 高等数学习题册.pdf
typst compile --no-pdf-tags --input MODE=full     index.typ 高等数学习题册_附答案.pdf
typst compile --no-pdf-tags --input MODE=answers  index.typ 高等数学习题册_纯答案.pdf
```

### 实时预览

```bash
make watch                    # 默认练习版
WATCH=full make watch         # 完整版
```

### 版式约定

- **题干**近黑；**答案**醒目蓝；**详解**深蓝
- 垂直间距只认 `gap-inner` / `gap-block` / `gap-item`（见 `lib/style.typ`）
- 选项无边框，按宽度自动分列；填空答案带下划线（多空 `answers` 拆成多个空位）
- 公式一律行内；微分统一 `dif`；参数方程写 $x=\ldots,\; y=\ldots$
- 章/节标题居左（进入目录）

## License

本项目采用 [MIT License](./LICENSE) 开源许可证。

## 相关资源

- [Typst 官方文档](https://typst.app/docs)
- [Typst 中文文档](https://typst-doc-cn.github.io/)
