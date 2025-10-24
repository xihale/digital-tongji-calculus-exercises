#import "../template.typ": *
#import "../versions.typ": *

// 章节标题与版本信息
#chapter[模拟卷与真题]
#align(center)[
  #text(size: 0.7em, fill: rgb("#888888"))[
    题目版本: #get-chapter-version("模拟卷与真题") | 答案版本: #get-answer-version("模拟卷与真题")
  ]
]

#include "模拟卷一.typ"
#include "模拟卷二.typ"
#include "真题一.typ"
#include "真题二.typ"
