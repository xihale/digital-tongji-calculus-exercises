#import "lib/style.typ": (
  apply-document-style, stem-color, muted,
  gap-item,
)

#apply-document-style()
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

#let VERSION = "v0.1.0"

#align(center)[
  #text(weight: "bold", size: 2.0em)[高等数学习题册]\
  （上·下总集）\
  #v(0.4em)
  #text(size: 0.9em, fill: muted)[#VERSION]
]

#include "intro.typ"

#block(width: 100%, below: gap-item)[
  #set text(weight: "bold", size: 1.35em, fill: stem-color)
  #set align(left)
  目录
]
// Typst 0.15+：outline 不再接受 fill 参数，用 entry 的 fill 画导点
#show outline.entry: it => {
  it.indented(
    it.prefix(),
    link(it.element.location(), it.inner() + box(width: 1fr, inset: (x: 0.3em))[
      #line(length: 100%, stroke: 0.4pt + muted)
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
