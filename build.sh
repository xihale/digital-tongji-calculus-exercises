#!/bin/bash

# 高等数学习题册 Typst 构建脚本

echo "正在编译《高等数学习题册（上册）》..."

# 检查 typst 是否安装
if ! command -v typst &> /dev/null; then
    echo "错误: Typst 未安装。请先安装 Typst CLI"
    exit 1
fi

# 编译主文档
if [ "$1" = "watch" ]; then
    echo "启动监听模式，文档有变化时会自动重新编译..."
    typst watch index.typ
elif [ "$1" = "dev" ]; then
    echo "启动开发模式预览..."
    typst watch index.typ
else
    echo "编译为 PDF..."
    typst compile index.typ "高等数学习题册上册.pdf"
    
    if [ $? -eq 0 ]; then
        echo "✅ 编译成功！生成文件: 高等数学习题册上册.pdf"
        echo "📄 文件大小: $(du -h "高等数学习题册上册.pdf" | cut -f1)"
    else
        echo "❌ 编译失败！请检查错误信息"
        exit 1
    fi
fi