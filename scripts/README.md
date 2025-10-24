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
