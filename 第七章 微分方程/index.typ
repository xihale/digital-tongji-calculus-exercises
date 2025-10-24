#import "../template.typ": *
#import "../versions.typ": *

// 章节标题与版本信息
#chapter[第七章 微分方程]
#align(center)[
  #text(size: 0.7em, fill: rgb("#888888"))[
    题目版本: #get-chapter-version("第七章 微分方程") | 答案版本: #get-answer-version("第七章 微分方程")
  ]
]

// 节内容
#include "第一节 微分方程的基本概念.typ"
#include "第二节 可分离变量的微分方程.typ"
#include "第三节 齐次方程.typ"
#include "第四节 一阶线性微分方程.typ"
#include "第五节 可降阶的高阶微分方程.typ"
#include "第六节 高阶线性微分方程.typ"
#include "第七节 常系数齐次线性微分方程.typ"
#include "第八节 常系数非齐次线性微分方程.typ"
#include "总习题七.typ"

// 分页
#pagebreak()
