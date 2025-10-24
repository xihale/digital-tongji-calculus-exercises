# 网页版说明

这是高等数学习题册的在线预览版本。

## 功能特性

- **主页 (index.html)**: 显示版本信息、勘误信息和章节目录
- **预览页 (preview.html)**: 在线预览答案内容，支持：
  - 可折叠的侧边栏目录导航
  - 答案显示/隐藏切换
  - PDF 生成（规划中）
  - 基于 WebAssembly 的实时渲染（规划中）

## 目录结构

```
web/
├── index.html          # 主页
├── preview.html        # 预览页
├── css/
│   ├── style.css       # 通用样式
│   └── preview.css     # 预览页样式
├── js/
│   ├── main.js         # 主页脚本
│   └── preview.js      # 预览页脚本
└── pdf/                # 自动生成的PDF文件（由CI构建）
```

## 本地预览

直接在浏览器中打开 `index.html` 即可预览。

对于完整的功能（包括 PDF 加载），建议使用本地服务器：

```bash
# 使用 Python
python -m http.server 8000

# 使用 Node.js
npx http-server

# 然后访问 http://localhost:8000
```

## 自动部署

本项目通过 GitHub Actions 自动构建和部署：

1. 每次推送到 main 分支时自动触发
2. 编译 Typst 文档为 PDF（带答案和不带答案两个版本）
3. 部署到 GitHub Pages

## 技术栈

- **前端**: HTML5, CSS3, JavaScript (ES6+)
- **排版**: Typst 0.13.1
- **构建**: GitHub Actions
- **部署**: GitHub Pages
- **未来计划**: 集成 typst-wasm 实现完整的在线编译和预览

## 待实现功能

- [ ] 完整的 Typst WASM 集成
- [ ] 实时在线 PDF 生成
- [ ] 章节内容的直接渲染
- [ ] 搜索功能
- [ ] 书签功能
- [ ] 打印优化

## 贡献

欢迎提交 Issue 和 Pull Request！
