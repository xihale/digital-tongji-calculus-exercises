#import "../template.typ": *
#import "../versions.typ": *

// 章节标题与版本信息
#chapter[第三章 微分中值定理与导数的应用]
#align(center)[
  #text(size: 0.7em, fill: rgb("#888888"))[
    题目版本: #get-chapter-version("第三章 微分中值定理与导数的应用") | 答案版本: #get-answer-version("第三章 微分中值定理与导数的应用")
  ]
]

// 节内容
#include "第一节 微分中值定理.typ"
#include "第二节 洛必达法则.typ"
#include "第三节 泰勒公式.typ"
#include "第四节 函数的单调性与曲线的凹凸性.typ"
#include "第五节 函数的极值与最大值最小值.typ"
#include "第六节 函数图形的描绘.typ"
#include "第七节 曲率.typ"
#include "总习题三.typ"

// 分页
#pagebreak()
