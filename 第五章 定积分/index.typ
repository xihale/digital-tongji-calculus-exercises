#import "../template.typ": *
#import "../versions.typ": *

// 章节标题与版本信息
#chapter[第五章 定积分]
#align(center)[
  #text(size: 0.7em, fill: rgb("#888888"))[
    题目版本: #get-chapter-version("第五章 定积分") | 答案版本: #get-answer-version("第五章 定积分")
  ]
]

// 节内容
#include "第一节 定积分的概念与性质.typ"
#include "第二节 微积分基本公式.typ"
#include "第三节 定积分的换元积分法和分部积分法.typ"
#include "第四节 反常积分.typ"
#include "总习题五.typ"

// 分页
#pagebreak()
