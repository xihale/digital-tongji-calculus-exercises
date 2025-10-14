#import "../template.typ": chapter, section, subsection, choices, answer-space

#let exams = [
  // 模拟卷标题
  #block(text(weight: "bold", size: 16pt)[高等数学(上册)期末测试模拟卷(一)])
  
  // 模拟卷一
  #include "模拟卷一.typ"
]