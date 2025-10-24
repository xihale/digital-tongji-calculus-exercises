# 字体文件 / Fonts

本目录包含项目使用的精简字体文件。

## LXGWWenKai-Subset.ttf

这是 [LXGW WenKai（霞鹜文楷）](https://github.com/lxgw/LxgwWenKai) 字体的精简版本，仅包含本项目中使用的字符（约 977 个字符）。

- **原始字体大小**: 19 MB
- **精简后大小**: 365 KB
- **压缩率**: 98%
- **字符集**: 包含所有 .typ 文件中使用的汉字、常用字、ASCII 字符以及数学符号

### 使用方法

字体文件会被 Typst 自动识别。你可以：

1. 将 `fonts/` 目录下的字体文件复制到系统字体目录
2. 或者在编译时使用 `--font-path` 参数指定字体目录：
   ```bash
   typst compile --font-path fonts/ index.typ output.pdf
   ```

### 许可证

LXGW WenKai 字体采用 SIL Open Font License 1.1 授权。
详见：https://github.com/lxgw/LxgwWenKai

### 重新生成精简字体

如果需要重新生成精简字体（例如添加了新的内容），请使用 `scripts/subset_font.py` 脚本。详见 `scripts/README.md`。
