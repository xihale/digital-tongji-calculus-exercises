#import "../template.typ": *
#import "../versions.typ": *

// 章节标题与版本信息
#chapter[第六章 定积分的应用]
#align(center)[
  #text(size: 0.7em, fill: rgb("#888888"))[
    题目版本: #get-chapter-version("第六章 定积分的应用") | 答案版本: #get-answer-version("第六章 定积分的应用")
  ]
]

// 节内容
#include "第一节 定积分的元素法.typ"
#include "第二节 定积分在几何学上的应用.typ"
#include "第三节 定积分在物理学上的应用.typ"
#include "总习题六.typ"

// 分页
#pagebreak()
