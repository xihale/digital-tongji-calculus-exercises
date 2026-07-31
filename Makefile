# 三态编译入口：make practice | make full | make answers
# CI 与本地共用同一套命令；体积优化统一走 --no-pdf-tags。

SRC  := index.typ
NAME := 高等数学习题册
TAGS := --no-pdf-tags

# 输出文件名（与 README 保持一致）
PRAC_OUT := $(NAME).pdf
FULL_OUT := $(NAME)_附答案.pdf
ANS_OUT  := $(NAME)_纯答案.pdf

.PHONY: practice full answers all clean watch

practice: $(PRAC_OUT)
full:     $(FULL_OUT)
answers:  $(ANS_OUT)
all:      practice full answers

$(PRAC_OUT): $(SRC)
	typst compile $(TAGS) --input MODE=practice $(SRC) $@

$(FULL_OUT): $(SRC)
	typst compile $(TAGS) --input MODE=full     $(SRC) $@

$(ANS_OUT): $(SRC)
	typst compile $(TAGS) --input MODE=answers  $(SRC) $@

# 实时预览（默认练习版；WATCH=full make watch 切换）
watch:
	typst watch $(TAGS) --input MODE=$(or $(WATCH),practice) $(SRC)

clean:
	rm -f $(PRAC_OUT) $(FULL_OUT) $(ANS_OUT)
