# Web 文件夹

本文件夹包含网站的基础架构文件，在 CI/CD 构建过程中会与 PDF 文件合并。

## 文件说明

- `index.html` - 网站主页，提供在线预览和下载入口
- `style.css` - 主页样式文件

## 部署流程

1. GitHub Actions 在 master 分支构建 PDF 文件
2. 将 `web/` 文件夹内容复制到部署目录
3. 将 PDF 文件复制到部署目录
4. 更新 `index.html` 中的版本号
5. 部署到 GitHub Pages

## 目录结构

部署后的目录结构：

```
deploy/
├── index.html                        # 主页（来自 web/）
├── style.css                         # 样式文件（来自 web/）
├── 高等数学习题册上册.pdf             # PDF（不含答案）
└── 高等数学习题册上册_带答案.pdf       # PDF（含答案）
```

## 修改说明

如需修改网站主页样式或内容，请直接编辑本文件夹中的文件。修改后推送到 master 分支，GitHub Actions 会自动重新部署。
