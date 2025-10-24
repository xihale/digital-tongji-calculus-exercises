#set page(paper: "a4", margin: 2cm)
#set text(size: 1.3em, font: ("LXGW WenKai", "STKaiti"))
#set image(width: 12em)

#import "template.typ": *
#import "versions.typ": *

// 主文件版本自动与各章节版本对齐
// Main file version automatically aligns with latest chapter version
#let VERSION = "v" + MAIN_VERSION

#align(center)[
  #title[高等数学习题册]
  (上)
  
  #text(size: 0.9em, fill: rgb("#666666"))[#VERSION]

  
]

#include "intro.typ"

#include "第一章 函数与极限/index.typ"
#include "第二章 导数与微分/index.typ"
#include "第三章 微分中值定理与导数的应用/index.typ"
#include "第四章 不定积分/index.typ"
#include "第五章 定积分/index.typ"
#include "第六章 定积分的应用/index.typ"
#include "第七章 微分方程/index.typ"
#include "模拟卷与真题/index.typ"


