#import "../template.typ": *
#import "../versions.typ": *

// 章节标题与版本信息
#chapter[第二章 导数与微分]
#align(center)[
  #text(size: 0.7em, fill: rgb("#888888"))[
    题目版本: #get-chapter-version("第二章 导数与微分") | 答案版本: #get-answer-version("第二章 导数与微分")
  ]
]

// 节内容
#include "第一节 导数的概念.typ"
#include "第二节 函数的求导法则.typ"
#include "第三节 高阶导数.typ"
#include "第四节 隐函数及由参数方程所确定的函数的导数 相关变化率.typ"
#include "第五节 函数的微分.typ"
#include "总习题二.typ"

// 分页
#pagebreak()
