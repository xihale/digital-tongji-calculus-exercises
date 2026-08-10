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

# 版本：优先 git describe（贴 tag 为 vX.Y.Z；中间提交为 vX.Y.Z-N-gHASH）
# 无 git / 无 tag 时回退 dev。可手动覆盖：VERSION=v1.0.0 make practice
VERSION ?= $(shell git describe --tags --always --dirty 2>/dev/null || echo dev)
# 递归展开：MODE 由各目标在 recipe 时再写入
INPUTS   = --input MODE=$(MODE) --input VERSION=$(VERSION)

# 输出文件名（与 README 保持一致）
PRAC_OUT := $(NAME).pdf
FULL_OUT := $(NAME)_附答案.pdf
ANS_OUT  := $(NAME)_纯答案.pdf

.PHONY: practice full answers all clean watch

practice: MODE := practice
practice:
	typst compile $(TAGS) $(INPUTS) $(SRC) $(PRAC_OUT)

full: MODE := full
full:
	typst compile $(TAGS) $(INPUTS) $(SRC) $(FULL_OUT)

answers: MODE := answers
answers:
	typst compile $(TAGS) $(INPUTS) $(SRC) $(ANS_OUT)

all: practice full answers

# 实时预览（默认练习版；WATCH=full make watch 切换）
watch: MODE := $(or $(WATCH),practice)
watch:
	typst watch $(TAGS) $(INPUTS) $(SRC)

clean:
	rm -f $(PRAC_OUT) $(FULL_OUT) $(ANS_OUT)
