# GitHub Pages 配置说明

## 启用 GitHub Pages

完成以下步骤以启用网页版：

### 1. 进入仓库设置
访问：`https://github.com/xihale/digital-tongji-calculus-exercises/settings/pages`

### 2. 配置 Pages
- **Source (来源)**: 选择 "GitHub Actions"
- 不需要选择分支，因为我们使用 Actions 自动部署

### 3. 触发首次部署
有两种方式触发部署：

**方式一：推送代码到 main 分支**
```bash
# 合并此 PR 后会自动触发
```

**方式二：手动触发工作流**
1. 访问 Actions 页面
2. 选择 "构建并部署网页版" 工作流
3. 点击 "Run workflow"

### 4. 查看部署状态
- 访问 Actions 页面查看工作流执行状态
- 部署成功后，网站将在以下地址可用：
  `https://xihale.github.io/digital-tongji-calculus-exercises/`

## 工作流说明

### 智能构建
工作流会自动检测是否需要重新编译 PDF：
- **有 .typ 文件变更**：重新编译 PDF
- **无 .typ 文件变更**：使用缓存的 PDF
- **手动触发**：强制重新编译

### 触发条件
- 推送到 `main` 分支
- 推送 Pull Request 到 `main` 分支（仅构建，不部署）
- 手动触发

### 缓存管理
- PDF 文件会被缓存，避免不必要的重复编译
- 当 .typ 文件内容变更时，缓存会自动失效并重新编译
- 大大加快了不涉及内容变更的部署速度

### 构建产物
- `web/pdf/高等数学习题册上册_带答案.pdf`
- `web/pdf/高等数学习题册上册.pdf`
- `web/index.html` - 简洁的主页

## 故障排除

### 问题：工作流失败
- 检查 Typst 版本是否正确
- 检查 `.typ` 文件语法是否正确
- 查看 Actions 日志获取详细错误信息

### 问题：网站无法访问
- 确认已在设置中启用 GitHub Pages
- 检查工作流是否成功完成
- 等待几分钟让更改生效

### 问题：PDF 无法下载
- 确认 PDF 文件已成功编译
- 检查 `web/pdf/` 目录是否包含 PDF 文件
- 查看浏览器控制台的错误信息

## 更新网页版

网页版会在以下情况自动更新：
- 推送到 main 分支时
- 更新 .typ 源文件后

无需手动操作，GitHub Actions 会自动：
1. 检测是否有 .typ 文件变更
2. 如有变更，重新编译 PDF
3. 部署最新版本

## 联系方式

如有问题，请在 GitHub 上提 Issue。
