#set page(paper: "a4", margin: 2cm)
#set text(size: 1.3em, font: ("LXGW WenKai", "STKaiti"))
#set image(width: 12em)

#import "template.typ": *

// 设置标题样式以匹配原有外观
#set heading(numbering: none)
#show heading.where(level: 1): it => align(center)[
  #text(weight: "bold", size: 1.8em)[#it.body]
]
#show heading.where(level: 2): it => align(center)[
  #text(weight: "bold", size: 1.4em)[#it.body]
]

#let VERSION = "v0.0.3"

#align(center)[
  #title[高等数学习题册]
  (上)
  
  #text(size: 0.9em, fill: rgb("#666666"))[#VERSION]

  
]

#include "intro.typ"

// 添加目录
#align(center)[
  #text(weight: "bold", size: 1.8em)[目录]
]
#outline(
  title: none,  // 不显示默认标题，我们已经自定义了
  depth: 2,     // 显示两级目录：章和节
  indent: 2em   // 二级目录缩进
)
#pagebreak()

#include "第一章 函数与极限/index.typ"
#include "第二章 导数与微分/index.typ"
#include "第三章 微分中值定理与导数的应用/index.typ"
#include "第四章 不定积分/index.typ"
#include "第五章 定积分/index.typ"
#include "第六章 定积分的应用/index.typ"
#include "第七章 微分方程/index.typ"
#include "模拟卷与真题/index.typ"


