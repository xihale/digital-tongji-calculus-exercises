// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section, blank

#let section-title = [第一节 向量及其线性运算]

#let problems = (
  (
    kind: "judge",
    kind-title: [一、判断题],
    stem: [
      若 $bold(a) + bold(b) = bold(a) + bold(c)$，则 $bold(b) = bold(c)$
    ],
    answer: [√],
    solution: [
      $ bold(a)+bold(b)=bold(a)+bold(c) => (bold(a)+bold(b))+(-bold(a))=(bold(a)+bold(c))+(-bold(a)) $
          $ => (bold(a)-bold(a))+bold(b)=(bold(a)-bold(a))+bold(c) => bold(0)+bold(b)=bold(0)+bold(c) => bold(b)=bold(c) $
    ],
  ),
  (
    kind: "judge",
    stem: [
      若向量 $bold(a) = (a_x, a_y, a_z)$，则平行于向量 $bold(a)$ 的单位向量为 $(a_x/(|bold(a)|), a_y/(|bold(a)|), a_z/(|bold(a)|))$。
    ],
    answer: [×],
  ),
  (
    kind: "choice",
    kind-title: [二、选择题],
    stem: [
      点 $(4, -3, 5)$ 到 $y$ 轴的距离为
    ],
    options: (
      [$sqrt(4^2 + (-3)^2 + 5^2)$],
      [$sqrt((-3)^2 + 5^2)$],
      [$sqrt(4^2 + (-3)^2)$],
      [$sqrt(4^2 + 5^2)$],
    ),
    answer: [D],
    solution: [
      点 $(4, -3, 5)$ 到 $y$ 轴的距离公式为 $d = sqrt(x^2 + z^2) = sqrt(4^2 + 5^2)$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设有非零向量 $bold(a), bold(b)$，若 $bold(a) perp bold(b)$，则必有。
    ],
    options: (
      [$|bold(a) + bold(b)| = |bold(a)| + |bold(b)|$],
      [$|bold(a) + bold(b)| = |bold(a) - bold(b)|$],
      [$|bold(a) + bold(b)| < |bold(a) - bold(b)|$],
      [$|bold(a) + bold(b)| > |bold(a) - bold(b)|$],
    ),
    answer: [B],
    solution: [
      若 $bold(a) perp bold(b)$，则 $bold(a) dot bold(b) = 0$。
          $|bold(a) plus.minus bold(b)|^2 = |bold(a)|^2 + |bold(b)|^2 plus.minus 2 bold(a) dot bold(b) = |bold(a)|^2 + |bold(b)|^2$。
          故 $|bold(a) + bold(b)| = |bold(a) - bold(b)|$。
    ],
  ),
  (
    kind: "blank",
    kind-title: [三、填空题],
    stem: [
      点 $(2, 1, -3)$ 关于坐标原点对称的点是
    ],
    answer: [$(-2, -1, 3)$],
    solution: [
      $P(x,y,z)$ 关于原点对称的点为 $P'(-x,-y,-z)$。
          代入得 $P'=(-2,-1,3)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $|bold(a)| = 4$，向量 $bold(a)$ 与轴 $l$ 的夹角为 $pi/6$，则 $Prj_l bold(a) =$
    ],
    answer: [$2 sqrt(3)$],
    solution: [
      $2 sqrt(3)$
    ],
  ),
  (
    kind: "blank",
    stem: [
      设向量 $bold(a)$ 与坐标轴正向的夹角分别为 $alpha, beta, gamma$，且 $alpha = 60^degree, beta = 120^degree$，则 $gamma =$ #blank() 或 #blank()
    ],
    answers: (
      [$(pi)/(4)$],
      [$(3 pi)/(4)$],
    ),
    solution: [
      $ cos^2 alpha + cos^2 beta + cos^2 gamma = 1 => cos^2 60^degree + cos^2 120^degree + cos^2 gamma = 1 $
          $ => 1/2^2 + (-(1)/(2))^2 + cos^2 gamma = 1 => cos^2 gamma =(1)/(2)=> cos gamma =(plus.minus sqrt(2))/(2) $
          故 $gamma =(pi)/(4)$ 或 $(3 pi)/(4)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      已知两点 $M_1(0, 1, 2)$ 和 $M_2(1, -1, 0)$，试用坐标式表示向量 $arrow(M_1 M_2)$ 和 $-2 arrow(M_1 M_2)$，并求 $arrow(M_1 M_2)$ 的模、方向余弦和方向角
    ],
    answer: [$(1, -2, -2), (-2, 4, 4)$；模为 3，方向余弦为 $(1)/(3), -(2)/(3), -(2)/(3)$。
    方向角为 $arccos 1/3, arccos(-(2)/(3)), arccos(-(2)/(3))$。],
    solution: [
      $(1, -2, -2), (-2, 4, 4)$；模为 3，方向余弦为 $(1)/(3), -(2)/(3), -(2)/(3)$。
          方向角为 $arccos 1/3, arccos(-(2)/(3)), arccos(-(2)/(3))$。

      $ arrow(M_1 M_2)=(1-0,-1-1,0-2)=(1,-2,-2) $
            $ -2 arrow(M_1 M_2)=(-2,4,4) $
            $ |arrow(M_1 M_2)|=sqrt(1^2+(-2)^2+(-2)^2)=3 $
            $ cos alpha=(1)/(3), cos beta=-(2)/(3), cos gamma=-(2)/(3) $
            $ alpha=arccos 1/3, beta=arccos(-(2)/(3)), gamma=arccos(-(2)/(3)) $
    ],
  ),
  (
    kind: "blank",
    stem: [
      求平行于向量 $bold(a) = (6, 7, -6)$ 的单位向量
    ],
    solution: [
      $ |bold(a)| = sqrt(6^2 + 7^2 + (-6)^2) = 11 $
          $ bold(e) =(plus.minus bold(a))/(|bold(a)|)= (plus.minus 6/11, 7/11, -6/11) $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设向量 $bold(m) = 3bold(i) + 5bold(j) + 3bold(k), bold(n) = 2bold(i) + bold(j) - 4bold(k),$
          $bold(p) = 5bold(i) + bold(j) - 4bold(k)$，
          求向量 $bold(a) = 4bold(m) + 3bold(n) - bold(p)$ 在 $x$ 轴上的投影及在 $y$ 轴上的分向量
        ],
    answer: [$13, 22bold(j)$。],
    solution: [
      $13, 22bold(j)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      一向量的终点为点 $B(2, -1, 7)$，它在 $x$ 轴、$y$ 轴和 $z$ 轴上的投影分别为 $4, -4, 7$，求此向量的起点 $A$ 的坐标
    ],
    answer: [$(-2, 3, 0)$],
    solution: [
      $(-2, 3, 0)$

      设 $A(x,y,z)$，$arrow(A B)=(2-x, -1-y, 7-z)=(4,-4,7)$。
          $ x=2-4=-2, y=-1+4=3, z=7-7=0 $
          故 $A(-2,3,0)$。
    ],
  ),
  (
    kind: "proof",
    kind-title: [五、证明题],
    stem: [
      如果平面上一个四边形的对角线互相平分，试用向量证明它是平行四边形。
    ],
    solution: [
      设对角线交于 $M$。由中点性质，$arrow(M A)+arrow(M C)=bold(0), arrow(M B)+arrow(M D)=bold(0)$。
          $ arrow(A B)=arrow(M B)-arrow(M A) $，$arrow(D C)=arrow(M C)-arrow(M D)=(-arrow(M A))-(-arrow(M B))=arrow(M B)-arrow(M A)$。
          故 $arrow(A B)=arrow(D C)$，四边形 $A B C D$ 为平行四边形。
    ],
  ),
)

#book-section(section-title, problems)
