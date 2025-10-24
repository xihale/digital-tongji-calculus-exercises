# 高等数学习题册（上册）

**一份开源的高等数学习题集电子化版本，使用 Typst 排版，内容配套同济大学《高等数学(第七版)》。**

有一些漏网之鱼没有处理，以后再弄。

## Intro

本项目是《高等数学习题册》的 Typst 排版项目，包含：

- **详细的答案解析**：由 AI 辅助生成，人工校对题干、部分公式
- **灵活的排版**：使用 Typst 进行排版，如有需要可以执行调整 `template.typ`，“牵一发而动全身”

> ⚠️ **重要声明**：本书大量借助 AI 进行处理，题干部分经由人工校对，但答案和解析部分主要由 AI 生成。由于人手不足，可能存在错误，**请读者自行甄别**。如遇错误或疑惑，欢迎提交 issue 或 pull request。


## 自行构建

### 前置

- 必须安装 Typst 环境 （我使用 0.13.1 ）
  详情请参考 官网

- 字体选择性安装，不做说明

### 编译文档

```bash
# 编译整个项目为 PDF（不显示答案）
typst compile index.typ 高等数学习题册上册.pdf

# 编译并显示答案
typst compile --input SHOW_ANSWER=true index.typ 高等数学习题册上册_带答案.pdf
```

### 实时预览

```bash
# 在 VS Code 中预览（需要安装 Typst 扩展）
typst watch index.typ
```

### 项目配置

主要配置文件：
- `index.typ`：主文档，定义页面格式和章节包含
- `template.typ`：通用模板，定义标题样式、答案控制函数等
- `versions.typ`：版本管理配置文件，管理题目和答案的版本

>TODO: 之后会添加 `style.typ`，保证全局样式统一

## 版本管理

本项目实现了细粒度的版本管理系统，用于跟踪题目和答案的更新。

### 版本管理原则

1. **题目与答案版本分离**：每个章节的题目和答案各自独立维护版本号
2. **章节独立版本**：每个章节都有自己的版本号，便于追踪更新历史
3. **主文件版本自动对齐**：主文件（整本书）的版本号自动与所有章节中最新的版本号保持一致

### 版本配置文件

所有版本信息集中管理在 `versions.typ` 文件中：

```typst
// 题目版本 (Question versions for each chapter)
#let CHAPTER_VERSIONS = (
  "第一章 函数与极限": "1.0.0",
  "第二章 导数与微分": "1.0.0",
  // ...
)

// 答案版本 (Answer versions for each chapter)
#let ANSWER_VERSIONS = (
  "第一章 函数与极限": "1.0.0",
  "第二章 导数与微分": "1.0.0",
  // ...
)
```

### 版本号规范

采用语义化版本号（Semantic Versioning），格式为 `主版本.次版本.修订号`：

- **主版本号**：重大内容变更或结构调整（如章节重组）
- **次版本号**：内容更新（如新增题目、修改题目）
- **修订号**：小修改（如错误修正、格式调整）

### 更新版本流程

1. **修改内容**：对某个章节的题目或答案进行修改
2. **更新版本号**：在 `versions.typ` 中更新对应章节的版本号
   - 如果修改的是题目，更新 `CHAPTER_VERSIONS`
   - 如果修改的是答案，更新 `ANSWER_VERSIONS`
3. **提交变更**：提交代码时说明修改内容和版本号变化
4. **发布 Release**：只需上传版本号有变化的章节和主文件

### 版本查看

- 主文件版本显示在封面
- 各章节版本显示在章节标题下方
- 版本信息格式：`题目版本: X.Y.Z | 答案版本: X.Y.Z`

### Release 说明

发布新版本时：
1. 确认所有需要发布的章节已更新版本号
2. 主文件版本会自动与最新章节版本对齐
3. 只需要上传版本号有变化的章节 PDF 和主文件 PDF

### 版本管理工具

项目提供了多个辅助脚本来管理版本：

#### 1. 查看当前版本

```bash
python3 check_versions.py
```

该脚本会显示：
- 所有章节的题目版本
- 所有章节的答案版本  
- 自动计算的主文件版本
- 版本管理使用说明

#### 2. 手动递增版本

```bash
# 递增第二章的题目版本（patch）
python3 auto_increment_version.py "第二章 导数与微分" --type patch --version-type question

# 递增第三章的答案版本（minor）
python3 auto_increment_version.py "第三章 微分中值定理与导数的应用" --type minor --version-type answer

# 同时递增多个章节的版本
python3 auto_increment_version.py "第一章 函数与极限" "第二章 导数与微分" --type patch --version-type question
```

参数说明：
- `--type`: 递增类型，可选 `patch`（修订号）、`minor`（次版本）、`major`（主版本）
- `--version-type`: 版本类型，可选 `question`（题目）、`answer`（答案）、`both`（两者）

### 自动版本管理（CI）

项目配置了 GitHub Actions 工作流，可以在每次 push 到 main 分支时自动递增版本：

**工作原理：**
1. 检测哪些章节的 `.typ` 文件被修改
2. 自动递增这些章节的题目版本（patch 级别）
3. 提交版本更新到仓库（带 `[skip ci]` 标记避免循环触发）

**触发条件：**
- push 到 `main` 分支
- 修改了章节目录下的 `.typ` 文件

**注意：**
- CI 只自动递增题目版本（`CHAPTER_VERSIONS`）
- 如需递增答案版本，请手动使用 `auto_increment_version.py` 脚本
- 如需 minor 或 major 版本递增，也请手动操作
- 所有章节的题目版本
- 所有章节的答案版本  
- 自动计算的主文件版本
- 版本管理使用说明

## License

本项目采用 [MIT License](./LICENSE) 开源许可证。

## 相关资源

- [Typst 官方文档](https://typst.app/docs)
- [Typst 中文文档](https://typst-doc-cn.github.io/)

