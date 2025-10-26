# 脚本 / Scripts

本目录包含用于维护项目的辅助脚本。

## subset_font.py

字体精简脚本，用于生成精简版 LXGW WenKai 字体。

### 用途

该脚本会：
1. 扫描项目中所有 .typ 文件
2. 提取所有使用的汉字和字符
3. 添加常用汉字和 ASCII 字符
4. 下载完整版 LXGW WenKai 字体
5. 使用 fonttools 创建只包含所需字符的精简字体

### 使用方法

```bash
# 安装依赖
pip install fonttools brotli

# 运行脚本
python3 scripts/subset_font.py
```

### 何时需要重新运行

- 添加了新的章节或内容
- 使用了新的汉字
- 需要更新到新版本的 LXGW WenKai 字体

精简后的字体会保存到 `fonts/LXGWWenKai-Subset.ttf`。

## export_html.py

HTML导出脚本，将Typst文件导出为带导航的HTML网页。

> ⚠️ **注意**：由于HTML导出兼容性问题，项目的在线预览功能已改为使用PDF。此脚本仍保留用于本地测试或有特殊需求的用户。

### 用途

该脚本会：
1. 解析项目的章节结构
2. 将每个章节编译为独立的HTML文件
3. 添加可折叠的侧边栏导航
4. 添加上一节/下一节导航按钮
5. 生成两个版本：不含答案 (`index/`) 和含答案 (`index_ans/`)

### 使用方法

```bash
# 导出不含答案的版本
python3 scripts/export_html.py

# 导出含答案的版本
python3 scripts/export_html.py --answers

# 同时导出两个版本
python3 scripts/export_html.py --both
```

### 功能特性

- **可折叠侧边栏**：显示完整的目录结构，可以点击按钮折叠以获得更大阅读空间
- **章节导航**：每页底部有上一节/下一节按钮，显示章节标题
- **响应式设计**：适配不同屏幕尺寸
- **图片支持**：自动复制章节中的图片到输出目录

### 输出结构

```
index/              # 不含答案版本
├── index.html      # 入口页面（重定向到第一节）
├── 第一章 函数与极限/
│   ├── images/     # 章节图片
│   ├── 第一节_映射与函数.html
│   ├── 第二节_数列的极限.html
│   └── ...
├── 第二章 导数与微分/
│   └── ...
└── ...

index_ans/          # 含答案版本
└── (相同结构)
```

### 注意事项

- 需要先安装 Typst 0.14.0 或更高版本
- HTML导出功能目前处于实验阶段
- 部分包含图片的章节可能需要特殊处理
- 导出时间取决于章节数量，通常需要几分钟
