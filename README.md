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
  (kind: "blank", stem: […分别为], answers: ([$a$], [$b$]), solution: […]),
  (kind: "compute", stem: […], parts: (…), solution-parts: (…)),
)
#book-section(section-title, problems)
```

题型 `kind`：`judge` | `choice` | `blank` | `compute` | `short` | `proof`。

### 内容格式约定

| 项 | 约定 |
|----|------|
| 公式 | 一律行内 `$…$`；微分写 `dif`，如 $(dif y)/(dif x)$、$(dif^2 y)/(dif x^2)$ |
| 判断 | 答案 `√` / `×` |
| 选择 | 答案 `A`–`D`；题干不写句号（渲染器在选项括号后补 `。`） |
| 填空 | 题干不写句号；数学答案包在 `$…$`；多空用 `answers: (…, …)` |
| 小问 `parts` | 非末项以 `；` 收束，末项以 `。` |
| 计算/证明题干 | 以 `。` / `？` / `：` 收束 |
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

## 自动构建与部署

本项目配置了 GitHub Actions 自动化工作流，当代码推送到 `master` 分支时会自动：

1. 编译生成两个版本的 PDF：
   - `高等数学习题册上册.pdf`（无答案版）
   - `高等数学习题册上册_带答案.pdf`（带答案版）

2. 将 PDF 文件与 `web/` 文件夹合并，部署到 GitHub Pages

3. 创建 GitHub Release，版本号自动从 `index.typ` 中的 `VERSION` 变量获取

### 在线访问

- 网站主页：[https://dtce.xihale.top](https://dtce.xihale.top) 或 GitHub Pages
- 在线预览 PDF 版本（浏览器内打开）
- 下载 PDF 文件

> ℹ️ **关于 Tagged PDF（无障碍 PDF）**：为了减小文件体积，发布的 PDF 默认不包含 tagged PDF 标签。如需带标签的无障碍 PDF 版本，可以自行构建（参见下方「自行构建」章节）或联系作者获取。

### 版本管理

要发布新版本，只需：
1. 修改 `index.typ` 中的 `VERSION` 变量
2. 提交并推送到 `master` 分支
3. GitHub Actions 会自动完成构建和发布

### 网站架构

- `web/` 文件夹：存放网站基础文件（index.html, style.css）
- CI/CD 自动将 web 文件夹和 PDF 文件部署到 GitHub Pages

## 自行构建

### 前置

- 必须安装 Typst 环境（推荐使用 0.14.0 或更高版本以支持图片无障碍标签）
  详情请参考 官网

- **字体**：正文使用 Noto Serif CJK SC，需系统已安装（多数 Linux 发行版自带；CI runner 已预装）

### 编译文档

```bash
# 练习版（纯题，默认；等价 MODE=practice）
typst compile index.typ 高等数学习题册上册.pdf

# 完整版（题 + 蓝色详解）
typst compile --input MODE=full index.typ 高等数学习题册上册_带答案.pdf

# 答案速查 + 详解
typst compile --input MODE=answers index.typ 高等数学习题册上册_答案.pdf
```

如需生成较小体积的 PDF（与发布版本相同，不含无障碍标签），可添加 `--no-pdf-tags` 标志：

```bash
typst compile --no-pdf-tags index.typ 高等数学习题册上册.pdf
typst compile --no-pdf-tags --input MODE=full index.typ 高等数学习题册上册_带答案.pdf
```

### 实时预览

```bash
typst watch index.typ
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
