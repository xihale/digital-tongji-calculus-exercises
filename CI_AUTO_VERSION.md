# CI 自动版本管理说明

## 概述

实现了 GitHub Actions 自动化工作流，可在每次推送到 main 分支时自动递增修改章节的版本号。

## 工作流程

### 1. 触发条件

工作流在以下情况下触发：
- 推送到 `main` 分支
- 修改了章节目录下的 `.typ` 文件（`第*章*/**/*.typ` 或 `模拟卷与真题/**/*.typ`）

### 2. 执行步骤

1. **检出代码**：获取仓库代码和历史（fetch-depth: 2 用于比较上一次提交）
2. **检测变更文件**：使用 `git diff` 找出修改的 .typ 文件
3. **确定受影响章节**：从文件路径中提取章节名称
4. **递增版本**：调用 `auto_increment_version.py` 自动递增题目版本（patch 级别）
5. **提交变更**：将版本更新提交回仓库，commit message 包含 `[skip ci]` 避免循环触发

### 3. 权限配置

工作流需要 `contents: write` 权限才能提交代码。这已在 workflow 文件中配置。

## 自动递增脚本

### auto_increment_version.py

**功能特性：**
- 支持三种递增类型：`patch`（x.y.z+1）、`minor`（x.y+1.0）、`major`（x+1.0.0）
- 支持三种版本类型：`question`（题目）、`answer`（答案）、`both`（两者）
- 可同时处理多个章节
- 提供详细的更新信息输出

**命令行参数：**
```bash
python3 auto_increment_version.py CHAPTERS [CHAPTERS ...] 
    [--type {patch,minor,major}]
    [--version-type {question,answer,both}]
    [--versions-file VERSIONS_FILE]
```

**使用示例：**

```bash
# 递增第二章题目版本（patch）
python3 auto_increment_version.py "第二章 导数与微分"

# 递增第三章答案版本（minor）
python3 auto_increment_version.py "第三章 微分中值定理与导数的应用" \
    --type minor --version-type answer

# 递增多个章节的题目和答案版本
python3 auto_increment_version.py \
    "第一章 函数与极限" "第二章 导数与微分" \
    --type patch --version-type both

# 主版本号递增
python3 auto_increment_version.py "第二章 导数与微分" --type major
```

## 设计考虑

### 为什么只自动递增题目版本？

1. **题目修改更频繁**：通常修改 .typ 文件是为了修正题目错误或添加新题
2. **答案需要更多审查**：答案的修改通常需要更仔细的审核，不适合自动递增
3. **灵活性**：用户可以手动使用脚本递增答案版本

### 为什么使用 patch 级别？

1. **大多数修改是小改动**：修正错别字、格式调整等都是 patch 级别
2. **避免过度递增**：自动化应该保守，重大更新应手动控制
3. **可预测性**：统一使用 patch 递增，行为一致

### 如何避免无限循环？

1. **[skip ci] 标记**：提交消息包含此标记，GitHub Actions 不会触发
2. **路径过滤**：只监听章节目录下的 .typ 文件，不监听 versions.typ
3. **Git 配置**：使用 github-actions[bot] 身份提交，易于识别

## 工作流文件说明

### .github/workflows/auto-version.yml

```yaml
name: Auto Version Increment

on:
  push:
    branches: [main]
    paths:
      - '第*章*/**/*.typ'
      - '模拟卷与真题/**/*.typ'

jobs:
  auto-version:
    runs-on: ubuntu-latest
    permissions:
      contents: write
    
    steps:
      - name: Checkout repository
        # 获取代码，fetch-depth: 2 用于比较上一次提交
      
      - name: Set up Python
        # 设置 Python 环境
      
      - name: Get changed files
        # 使用 git diff 获取修改的文件
      
      - name: Determine affected chapters
        # 从文件路径提取章节名称
      
      - name: Auto-increment versions
        # 调用 auto_increment_version.py 递增版本
      
      - name: Commit version changes
        # 提交版本更新（带 [skip ci]）
```

## 使用场景

### 场景 1：日常题目修正

```bash
# 1. 修改题目文件
vi "第二章 导数与微分/第一节 导数的概念.typ"

# 2. 提交并推送到 main
git add .
git commit -m "修正第二章第3题错误"
git push origin main

# 3. CI 自动递增版本并提交
# 无需手动操作！
```

### 场景 2：答案更新

```bash
# 1. 修改答案
vi "第二章 导数与微分/第一节 导数的概念.typ"

# 2. 手动递增答案版本
python3 auto_increment_version.py "第二章 导数与微分" \
    --version-type answer

# 3. 提交
git add .
git commit -m "更新第二章第3题答案"
git push origin main
```

### 场景 3：重大更新

```bash
# 1. 修改多个文件
# ... 编辑多个章节 ...

# 2. 手动递增 minor 版本
python3 auto_increment_version.py \
    "第一章 函数与极限" "第二章 导数与微分" \
    --type minor --version-type both

# 3. 提交
git add .
git commit -m "第一、二章重大更新：新增10道习题"
git push origin main
```

## 故障排查

### 问题：CI 没有触发

**可能原因：**
1. 推送的不是 main 分支
2. 修改的不是章节目录下的 .typ 文件
3. commit message 包含 `[skip ci]`

**解决方法：**
检查触发条件，确保符合 workflow 的 `on.push.paths` 配置

### 问题：版本没有递增

**可能原因：**
1. `auto_increment_version.py` 脚本执行失败
2. 章节名称匹配失败
3. versions.typ 文件格式不正确

**解决方法：**
1. 查看 Actions 日志
2. 本地运行脚本测试：`python3 auto_increment_version.py "章节名"`
3. 检查 versions.typ 格式

### 问题：提交循环

**不应该发生，但如果发生：**
1. 检查 commit message 是否包含 `[skip ci]`
2. 检查 workflow 的路径过滤是否正确
3. 临时禁用 workflow（重命名或删除 .github/workflows/auto-version.yml）

## 扩展建议

### 未来可能的改进：

1. **智能版本递增**：根据 commit message 判断递增类型
   - `fix:` → patch
   - `feat:` → minor
   - `BREAKING CHANGE:` → major

2. **变更日志生成**：自动生成 CHANGELOG.md

3. **通知机制**：版本递增后发送通知（issue comment、邮件等）

4. **批量编译**：版本更新后自动编译受影响的章节 PDF

5. **Release 自动化**：版本更新后自动创建 GitHub Release

## 总结

此 CI 实现提供了：
- ✅ 自动检测修改的章节
- ✅ 自动递增版本号
- ✅ 自动提交版本更新
- ✅ 避免无限循环
- ✅ 灵活的手动控制选项
- ✅ 完整的文档说明

符合用户需求：每次 push 时获取被修改文件列表，自增已修改文件的版本以及主文件版本。
