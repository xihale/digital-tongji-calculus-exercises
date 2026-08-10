#import "lib/style.typ": (
  apply-document-style, stem-color, muted,
  gap-item, body-font, body-size, body-leading, par-spacing, inline-equation-show,
)
#import "lib/math.typ": math-cases-show

#apply-document-style()
// 正文样式必须在文档顶层 set —— 放进函数里调用不会传播（typst 0.15 实测）。
#set text(font: body-font, size: body-size, fill: stem-color)
#set par(leading: body-leading, spacing: par-spacing, justify: true)
#set math.equation(numbering: none)
#show math.equation: inline-equation-show
// cases 式子与条件列距（见 lib/math.typ）
#show math.cases: math-cases-show
#set image(width: 12em)
#set heading(numbering: none)

// 标题进入目录；版式由 book-chapter / book-section 控制
#show heading.where(level: 1): it => {
  set text(weight: "bold", size: 1em, fill: stem-color)
  it.body
}
#show heading.where(level: 2): it => {
  set text(weight: "bold", size: 1em, fill: stem-color)
  it.body
}

// 版本由 Makefile 注入：--input VERSION=$(git describe …)；直调 typst 时默认 dev
#let VERSION = sys.inputs.at("VERSION", default: "dev")

#align(center)[
  #text(weight: "bold", size: 2.0em)[高等数学习题册]\
  #v(0.4em)
  #text(size: 0.9em, fill: muted)[#VERSION]
]

#include "intro.typ"

#block(width: 100%, below: gap-item)[
  #set text(weight: "bold", size: 1.35em, fill: stem-color)
  #set align(left)
  目录
]
// Typst 0.15+：it.inner() 已含 body+filler+page，再拼 it.page() 会重复页码。
// 改用 it.body()（仅标题），自行拼 filler（点导引）与 page。
#show outline.entry: it => {
  it.indented(
    it.prefix(),
    link(it.element.location(), it.body() + box(width: 1fr, inset: (x: 0.3em))[
      #repeat(text(fill: muted)[.], gap: 0.3em)
    ] + [#it.page()]),
  )
}
#outline(
  title: none,
  depth: 2,
  indent: 2em,
)
#pagebreak()

#set page(footer: context align(center)[
  #text(size: 0.9em, fill: muted)[#counter(page).display()]
])

// —— 上册 ——
#include "第一章 函数与极限/index.typ"
#include "第二章 导数与微分/index.typ"
#include "第三章 微分中值定理与导数的应用/index.typ"
#include "第四章 不定积分/index.typ"
#include "第五章 定积分/index.typ"
#include "第六章 定积分的应用/index.typ"
#include "第七章 微分方程/index.typ"

// —— 下册 ——
#include "第八章 向量代数与空间解析几何/index.typ"
#include "第九章 多元函数微分法及其应用/index.typ"
#include "第十章 重积分/index.typ"
#include "第十一章 曲线积分与曲面积分/index.typ"
#include "第十二章 无穷级数/index.typ"

#include "模拟卷与真题/index.typ"
