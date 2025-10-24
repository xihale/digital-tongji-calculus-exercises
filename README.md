# 高等数学习题册（上册）

**一份开源的高等数学习题集电子化版本，使用 Typst 排版，内容配套同济大学《高等数学(第七版)》。**

有一些漏网之鱼没有处理，以后再弄。

## Intro

本项目是《高等数学习题册》的 Typst 排版项目，包含：

- **详细的答案解析**：由 AI 辅助生成，人工校对题干、部分公式
- **灵活的排版**：使用 Typst 进行排版，如有需要可以执行调整 `template.typ`，“牵一发而动全身”
- **完整的目录**：自动生成两级目录（章和节），支持点击跳转和页码显示

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

>TODO: 之后会添加 `style.typ`，保证全局样式统一

## License

本项目采用 [MIT License](./LICENSE) 开源许可证。

## 相关资源

- [Typst 官方文档](https://typst.app/docs)
- [Typst 中文文档](https://typst-doc-cn.github.io/)

