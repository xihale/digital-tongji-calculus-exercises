# 三态编译入口：make practice | make full | make answers
# CI 与本地共用同一套命令；体积优化统一走 --no-pdf-tags。
#
# 不用文件依赖追踪：typst 文档经 #include 串起大量含空格路径的 .typ，
# make 无法可靠地把它当作先决条件（空格被当分词）。
# typst 增量编译本身很快，故三个目标设为 .PHONY，任一调用都重编——
# 任何 .typ 改动都会被下一次 make 捕获，不会漏触发。

SRC  := index.typ
NAME := 高等数学习题册
TAGS := --no-pdf-tags

# 输出文件名（与 README 保持一致）
PRAC_OUT := $(NAME).pdf
FULL_OUT := $(NAME)_附答案.pdf
ANS_OUT  := $(NAME)_纯答案.pdf

.PHONY: practice full answers all clean watch

practice:
	typst compile $(TAGS) --input MODE=practice $(SRC) $(PRAC_OUT)

full:
	typst compile $(TAGS) --input MODE=full     $(SRC) $(FULL_OUT)

answers:
	typst compile $(TAGS) --input MODE=answers  $(SRC) $(ANS_OUT)

all: practice full answers

# 实时预览（默认练习版；WATCH=full make watch 切换）
watch:
	typst watch $(TAGS) --input MODE=$(or $(WATCH),practice) $(SRC)

clean:
	rm -f $(PRAC_OUT) $(FULL_OUT) $(ANS_OUT)
