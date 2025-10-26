# Web 文件夹

本文件夹包含网站的基础架构文件，在 CI/CD 构建过程中会与导出的 HTML 内容合并。

## 文件说明

- `index.html` - 网站主页，提供在线阅读和下载入口
- `style.css` - 主页样式文件

## 部署流程

1. GitHub Actions 在 master 分支构建 PDF 和导出 HTML
2. 将 `web/` 文件夹内容复制到部署目录
3. 将导出的 `index/` 和 `index_ans/` 目录复制到部署目录
4. 将 PDF 文件复制到部署目录
5. 更新 `index.html` 中的版本号
6. 部署到 GitHub Pages

## 目录结构

部署后的目录结构：

```
deploy/
├── index.html              # 主页（来自 web/）
├── style.css               # 样式文件（来自 web/）
├── index/                  # HTML 导出（不含答案）
│   ├── index.html
│   ├── 第一章 函数与极限/
│   ├── 第二章 导数与微分/
│   └── ...
├── index_ans/              # HTML 导出（含答案）
│   ├── index.html
│   ├── 第一章 函数与极限/
│   └── ...
├── 高等数学习题册上册.pdf
└── 高等数学习题册上册_带答案.pdf
```

## 修改说明

如需修改网站主页样式或内容，请直接编辑本文件夹中的文件。修改后推送到 master 分支，GitHub Actions 会自动重新部署。
