# 版本管理系统实现总结

## 实现的功能

本次更新实现了完整的版本管理系统，满足以下需求：

### 1. 题目与答案版本分离 ✓

- 在 `versions.typ` 中分别定义了 `CHAPTER_VERSIONS`（题目版本）和 `ANSWER_VERSIONS`（答案版本）
- 每个章节的题目和答案可以独立更新版本号
- 修改题目时只需更新题目版本，修改答案时只需更新答案版本

### 2. 章节独立版本管理 ✓

- 每个章节都有自己的版本号（包括 8 个主要章节和模拟卷与真题）
- 章节版本信息显示在每个章节标题下方
- 格式：`题目版本: X.Y.Z | 答案版本: X.Y.Z`

### 3. 主文件版本自动对齐 ✓

- 主文件（`index.typ`）的版本号自动从所有章节版本中选择最新的
- 使用 `get-latest-version()` 函数自动计算
- 无需手动更新主文件版本

### 4. Release 流程支持 ✓

- 提供了版本检查脚本 `check_versions.py`
- 提供了版本更新指南 `VERSION_GUIDE.md`
- 提供了测试脚本 `test_version_update.py`
- 每次 release 只需上传版本有变化的章节

## 文件清单

### 新增文件

1. **versions.typ** - 版本配置文件
   - 定义所有章节的题目和答案版本
   - 提供版本比较和获取函数
   - 自动计算主文件版本

2. **check_versions.py** - 版本检查工具
   - 显示当前所有章节的版本信息
   - 显示主文件自动计算的版本
   - 提供版本管理说明

3. **VERSION_GUIDE.md** - 版本更新指南
   - 详细的版本更新流程说明
   - 版本号递增规则
   - 完整示例和注意事项

4. **test_version_update.py** - 版本更新测试脚本
   - 演示版本更新流程
   - 自动测试版本更新功能

### 修改文件

1. **index.typ** - 主文件
   - 导入 `versions.typ`
   - 版本号从手动设置改为自动从 `MAIN_VERSION` 获取

2. **各章节 index.typ** (共 8 个文件)
   - 导入 `versions.typ`
   - 添加版本信息显示
   - 显示题目版本和答案版本

3. **README.md** - 项目文档
   - 新增"版本管理"章节
   - 说明版本管理原则
   - 说明版本配置和使用方法

## 使用方法

### 查看版本信息

```bash
python3 check_versions.py
```

### 更新版本

1. 编辑内容文件
2. 打开 `versions.typ`
3. 找到对应章节
4. 更新 `CHAPTER_VERSIONS`（题目）或 `ANSWER_VERSIONS`（答案）
5. 根据改动大小选择合适的版本号递增方式

### 测试版本更新

```bash
python3 test_version_update.py
```

### 版本号规范

采用语义化版本号：`主版本.次版本.修订号`

- **修订号 (+0.0.1)**：错误修正、格式调整
- **次版本号 (+0.1.0)**：内容更新、新增题目
- **主版本号 (+1.0.0)**：重大变更、章节重组

## 版本管理流程

1. **内容修改** → 修改相应的 .typ 文件
2. **版本更新** → 在 versions.typ 中更新版本号
3. **版本检查** → 运行 check_versions.py 确认
4. **提交代码** → git commit 说明修改内容和版本变化
5. **发布 Release** → 只上传版本有变化的章节和主文件

## 技术实现

### Typst 版本比较

```typst
#let get-latest-version() = {
  let all-versions = CHAPTER_VERSIONS.values() + ANSWER_VERSIONS.values()
  let latest = "1.0.0"
  
  for v in all-versions {
    // Parse and compare version numbers properly
    // ...
  }
  
  latest
}
```

### 章节版本显示

```typst
#chapter[第X章 XXX]
#align(center)[
  #text(size: 0.7em, fill: rgb("#888888"))[
    题目版本: #get-chapter-version("第X章 XXX") | 
    答案版本: #get-answer-version("第X章 XXX")
  ]
]
```

## 优点

1. **清晰的版本追踪**：每个章节的题目和答案版本都有独立追踪
2. **自动化管理**：主文件版本自动对齐，无需手动维护
3. **Release 优化**：只需发布有变化的内容，减少文件大小
4. **易于使用**：提供了完整的工具和文档支持
5. **向下兼容**：不影响现有的答案显示控制功能（SHOW_ANSWER）

## 示例

假设修改第二章的一道题目：

**Before:**
- 第二章题目版本: 1.0.0
- 主文件版本: 1.0.0

**After:**
1. 编辑 `第二章 导数与微分/第一节 导数的概念.typ`
2. 更新 `versions.typ` 中 `CHAPTER_VERSIONS` 的"第二章 导数与微分": "1.0.1"
3. 运行 `python3 check_versions.py` 确认
4. 编译 PDF 并检查版本显示
5. Release 时只上传主文件和第二章的 PDF

**Result:**
- 第二章题目版本: 1.0.1
- 主文件版本: 1.0.1（自动更新）

## 后续建议

1. 可以考虑添加 GitHub Actions 自动化 release 流程
2. 可以添加版本变更日志（CHANGELOG.md）自动生成
3. 可以考虑为每个章节单独编译 PDF 的脚本
4. 可以添加版本回退功能（通过 git）
