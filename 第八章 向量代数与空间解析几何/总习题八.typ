// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": blank, book-section

#let section-title = [总习题八]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      点 $M(2, -3, 1)$ 关于坐标原点对称的点是
    ],
    options: (
      [$(-2, 3, -1)$],
      [$(-2, -3, -1)$],
      [$(2, -3, -1)$],
      [$(2, 3, 1)$],
    ),
    answer: [A],
    solution: [
      关于原点对称的点，其坐标 $(x, y, z)$ 变为 $(-x, -y, -z)$。代入 $(2, -3, 1)$ 得 $(-2, 3, -1)$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设向量 $bold(a) = (1, -1, -1), bold(b) = (2, 1, -1), lambda$ 为非零常数。若 $(bold(a) + lambda bold(b)) perp bold(a)$，则 $lambda =$ 
    ],
    options: (
      [$(3)/(2)$],
      [$-(3)/(2)$],
      [$(2)/(3)$],
      [$-(2)/(3)$],
    ),
    answer: [B],
    solution: [
      $
        (bold(a) + lambda bold(b)) dot bold(a) = |bold(a)|^2 + lambda (bold(b) dot bold(a)) = 3 + lambda(2-1+1) = 3 + 2lambda = 0 => lambda = -(3)/(2)
      $
    ],
  ),
  (
    kind: "choice",
    stem: [
      设向量 $bold(a), bold(b), bold(c)$ 满足关系式 $bold(a) dot bold(b) = bold(a) dot bold(c)$，则
    ],
    options: (
      [必有 $bold(a) = 0$ 或 $bold(b) = bold(c)$],
      [必有 $bold(a) = bold(b) - bold(c) = 0$],
      [当 $bold(a) != 0$ 时，必有 $bold(b) = bold(c)$],
      [必有 $bold(a) perp (bold(b) - bold(c))$],
    ),
    answer: [D],
    solution: [
      $bold(a) dot bold(b) = bold(a) dot bold(c) => bold(a) dot (bold(b) - bold(c)) = 0$。这表示向量 $bold(a)$ 与 $bold(b) - bold(c)$ 垂直。
    ],
  ),
  (
    kind: "choice",
    stem: [
      方程 $(z - a)^2 = x^2 +y^2$ 表示
    ],
    options: (
      [$y O z$ 面上曲线 $(z - a)^2 = y^2$ 绕 $x$ 轴旋转一周所得曲面],
      [$z O x$ 面上曲线 $(z - a)^2 = x^2$ 绕 $y$ 轴旋转一周所得曲面],
      [$z O x$ 面上直线 $z - a = x$ 绕 $z$ 轴旋转一周所得曲面],
      [$y O z$ 面上直线 $z - a = y$ 绕 $y$ 轴旋转一周所得曲面],
    ),
    answer: [C],
    solution: [
      由 $z O x$ 面上的直线 $z - a = x$ 绕 $z$ 轴旋转，将 $x$ 替换为 $plus.minus sqrt(x^2 + y^2)$。方程变为 $(z - a)^2 = x^2 + y^2$。这是一个以 $(0,0,a)$ 为顶点的圆锥面。
    ],
  ),
  (
    kind: "choice",
    stem: [
      平面 $x + 2y - z + 3 = 0$ 与直线 $(x - 1)/3 = (y + 1)/(-1) = (z - 2)/1$ 的位置关系为
    ],
    options: (
      [互相垂直],
      [互相平行但直线不在平面上],
      [既不平行也不垂直],
      [直线在平面上],
    ),
    answer: [D],
    solution: [
      点 $M_0(1, -1, 2)$ 代入平面得 $1 - 2 - 2 + 3 = 0$。法向量 $bold(n) = (1, 2, -1)$，方向向量 $bold(s) = (3, -1, 1)$。$bold(n) dot bold(s) = 3 - 2 - 1 = 0$。故直线在平面上。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      已知三点 $A(-2, 1, -1), B(1, -3, 4), C(-3, -1, 1)$，则： \
      (1) 向量 $arrow(A B)$ 的方向余弦为 #blank()，单位向量为 #blank()；
      (2) 向量 $arrow(A B)$ 在向量 $arrow(A C)$ 上的投影为 #blank()，$arrow(A B)$ 与 $arrow(A C)$ 的夹角为 #blank()；
      (3) 以该三点为顶点的三角形的面积为 #blank()；
      (4) 过点 $C$ 且垂直于 $arrow(A B)$ 的平面方程为 #blank()；
      (5) 过点 $C$ 且平行于 $arrow(A B)$ 的直线方程为 #blank()
    ],
    answers: (
      [$3/(5 sqrt(2)), -4/(5 sqrt(2)), 1/sqrt(2)$],
      [$(3/(5 sqrt(2)), -4/(5 sqrt(2)), 1/sqrt(2))$],
      [$5$],
      [$pi/4$],
      [$15/2$],
      [$3x - 4y + 5z = 0$],
      [$(x + 3)/3 = (y + 1)/(-4) = (z - 1)/5$],
    ),
    solution: [
      (1) $3/(5 sqrt(2)), -4/(5 sqrt(2)), 1/sqrt(2)$；(2) $5, pi/4$；(3) $15/2$；(4) $3x - 4y + 5z = 0$；(5) $(x + 3)/3 = (y + 1)/(-4) = (z - 1)/5$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设向量 $bold(a) = (1, 1, -4), bold(b) = (2, 0, -2)$，则
      (1) $(bold(a) + bold(b)) dot (bold(a) - bold(b)) =$ \
      (2) $(bold(a) + bold(b)) times (bold(a) - bold(b)) =$
    ],
    answers: (
      [$10$],
      [$(4, 12, 4)$],
    ),
    solution: [
      （1）10；
      (2) $(4, 12, 4)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      方程 $x^2/1 + y^2/25 - z^2/16 = 1$ 所表示的曲面为
    ],
    answer: [单叶双曲面],
  ),
  (
    kind: "blank",
    stem: [
      曲线 $cases(y = x^2 + 1, z = 0)$ 绕 $y$ 轴旋转一周所得旋转曲面方程是
    ],
    answer: [$y = x^2 + z^2 + 1$],
    solution: [
      $y = x^2 + z^2 + 1$
    ],
  ),
  (
    kind: "blank",
    stem: [
      点 $(-1,2,0)$ 在平面 $x + 2 y - z + 1 = 0$ 上的投影是
    ],
    answer: [$(-(5/3), (2/3), (2/3))$ .],
    solution: [
      $(-(5/3), (2/3), (2/3))$ .
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      已知向量 $bold(A) = 2 bold(a) + 3 bold(b), bold(B) = 3 bold(a) - bold(b), |bold(a)| = 2, |bold(b)| = 3, angle(bold(a), bold(b)) = pi/3$，求 $bold(A) dot bold(B), |bold(A) times bold(B)|$
    ],
    solution: [
      $bold(A) dot bold(B) = (2 bold(a) + 3 bold(b)) dot (3 bold(a) - bold(b)) = 6 bold(a)^2 + 7 bold(a) dot bold(b) - 3 bold(b)^2$
      $= 6(4) + 7(2 dot 3 dot 1/2) - 3(9) = 24 + 21 - 27 = 18$。

      $bold(A) times bold(B) = (2 bold(a) + 3 bold(b)) times (3 bold(a) - bold(b)) = -2 (bold(a) times bold(b)) + 9 (bold(b) times bold(a)) = -11 (bold(a) times bold(b))$。
      $|bold(a) times bold(b)| = |bold(a)| dot |bold(b)| sin pi/3 = 2 dot 3 dot sqrt(3)/2 = 3 sqrt(3)$。
      故 $|bold(A) times bold(B)| = 11 dot 3 sqrt(3) = 33 sqrt(3)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求过两点 $(1, 2, -1)$ 和 $(-5, 2, 7)$ 且平行于 $x$ 轴的平面方程
    ],
    solution: [
      平行于 $x$ 轴说明法向量 $perp (1,0,0)$。由两点 $A, B$ 得向量 $arrow(A B) = (-6, 0, 8)$。
      法向量 $arrow(n) = (1,0,0) times (-6,0,8) = (0, -8, 0)$。
      故平面方程为 $y = 2$（或 $y - 2 = 0$）。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求过点 $(2, -3, 1)$ 和直线 $cases(x - 5 y - 16 = 0, 2 y - z + 6 = 0)$ 的平面方程
    ],
    solution: [
      平面束方程：$(x - 5y - 16) + lambda(2y - z + 6) = 0$。
      代入点 $(2, -3, 1)$ 得：$(2 + 15 - 16) + lambda(-6 - 1 + 6) = 0 => 1 - lambda = 0 => lambda = 1$。
      故方程为 $x - 3y - z - 10 = 0$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求点 $(1, 2, -1)$ 到直线 $(x - 1)/2 = (y + 1)/(-1) = (z - 2)/3$ 的距离
    ],
    solution: [
      直线通过点 $M_0(1, -1, 2)$，方向向量 $arrow(s) = (2, -1, 3)$。
      设点 $P(1, 2, -1)$。向量 $arrow(M_0 P) = (0, 3, -3)$。
      距离 $d = |arrow(M_0 P) times arrow(s)| / |arrow(s)| = |(0, 3, -3) times (2, -1, 3)| / sqrt(4+1+9) = |(6, -6, -6)| / sqrt(14) = 6 sqrt(3) / sqrt(14) = (3/7) sqrt(42)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求过直线 $(x - 2)/5 = (y + 1)/2 = (z - 2)/4$ 且垂直于平面 $x + 4y - 3z + 7 = 0$ 的平面方程
    ],
    solution: [
      直线的方向向量 $arrow(s) = (5, 2, 4)$，已知平面的法向量 $arrow(n_1) = (1, 4, -3)$。
      所求平面的法向量 $arrow(n) = arrow(s) times arrow(n_1) = (5, 2, 4) times (1, 4, -3) = (-22, 19, 18)$。
      过点 $(2, -1, 2)$ 的方程为：$-22(x-2) + 19(y+1) + 18(z-2) = 0$，即 $22x - 19y - 18z - 27 = 0$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求过点 $(0, -1, 1)$ 且与直线 $cases(x + 2y + z = 0, x + z = 2)$ 平行的直线方程
    ],
    solution: [
      $(x)/1 = (y + 1)/0 = (z - 1)/(-1)$ 或 $cases(x + z = 1, y = -1)$
    ],
  ),
  (
    kind: "compute",
    stem: [
      求过点 $A(1, 0, -2)$ 且垂直于直线 $L: (x-3)/1 = (y+2)/4 = z/1$ 同时平行于平面 $Pi: 3x + 4y - z + 6 = 0$ 的直线方程
    ],
    solution: [
      $(x - 1)/2 = y/(-1) = (z + 2)/2$
    ],
  ),
  (
    kind: "compute",
    stem: [
      试讨论直线 $L_1$：$(1 - x)/1 = (y + 1)/2 = (z + 1)/3$ 与 $L_2$：$cases(2x + y - 1 = 0, 3x + z - 2 = 0)$ 的位置关系
    ],
    solution: [
      重合。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求直线 $L: cases(2x - 4y + z = 0, 3x - y - 2z - 9 = 0)$ 在平面 $Pi: 4x - y + z = 1$ 上的投影直线方程
    ],
    solution: [
      设直线 $L$ 的方向向量为
      $bold(v)=(2,-4,1) times (3,-1,-2)=(9,7,10)$。
      设平面 $Pi$ 的法向量为 $bold(n)=(4,-1,1)$。

      投影直线 $L'$ 在平面内，其方向向量应为 $bold(v)$ 在 $Pi$ 内的分量：
      $bold(v') = bold(v) - ((bold(v) dot bold(n))/(norm(bold(n))^2)) bold(n)$，
      化简得与 $(31,-17,37)$ 平行。

      再取 $L$ 上一点并沿 $bold(n)$ 投影到 $Pi$，可得 $L'$ 经过该投影点；
      因而 $L'$ 可写成两平面交线：
      $cases(4x - y + z = 1, 17x + 31y - 37z - 117 = 0)$。
      （与此等价的线性组合形式均正确。）
    ],
  ),
  (
    kind: "compute",
    stem: [
      方程 $z = sqrt(a^2 - x^2 - y^2)$ 及 $x^2 + y^2 = a x$ ($a > 0$) 分别表示什么曲面？求这两个曲面的交线在 $z O x$ 面上的投影直线方程，并指明曲线类型
    ],
    solution: [
      第一个方程表示上半球面，第二个表示圆柱面（母线平行于 $z$ 轴）。
      消去 $y$：$y^2 = a x - x^2$。代入球面方程 $z^2 = a^2 - x^2 - (a x - x^2) = a^2 - a x$。
      故投影方程为 $cases(z^2 = a^2 - a x, y = 0)$（其中 $0 <= x <= a$），曲线类型为抛物线。
    ],
  ),
)

#book-section(section-title, problems)
