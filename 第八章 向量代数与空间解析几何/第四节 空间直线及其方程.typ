// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第四节 空间直线及其方程]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      直线 $L_1$: $cases(x + 2y - z = 7, -2x + y + z = 7)$ 与 $L_2$: $cases(3x + 6y - 3z = 8, 2x - y - z = 0)$ 的位置关系为。
    ],
    options: (
      [$L_1 perp L_2$],
      [$L_1 parallel L_2$],
      [$L_1$ 与 $L_2$ 相交但不垂直],
      [$L_1$ 与 $L_2$ 为异面直线],
    ),
    answer: [B],
    solution: [
      $ bold(s_1) = (1, 2, -1) times (-2, 1, 1) = (3, 1, 5) $
          $ bold(s_2) = (3, 6, -3) times (2, -1, -1) = (-9, -3, -15) $
          因 $bold(s_2) = -3 bold(s_1)$，故 $L_1 parallel L_2$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      直线 $L: (x - 2)/3 = (y + 2)/(-1) = (z - 1)/4$ 与平面 $Pi: 6x - 2y + 8z = 7$ 的位置关系为。
    ],
    options: (
      [直线 $L$ 与平面 $Pi$ 平行],
      [直线 $L$ 与平面 $Pi$ 垂直],
      [直线 $L$ 在平面 $Pi$ 上],
      [直线 $L$ 与平面 $Pi$ 只有一个交点，但不垂直],
    ),
    answer: [B],
    solution: [
      直线方向向量 $bold(s) = (3, -1, 4)$，平面法向量 $bold(n) = (6, -2, 8)$。因为 $bold(n) = 2 bold(s)$，所以直线与平面垂直。
    ],
  ),
  (
    kind: "choice",
    stem: [
      两平行线 $x = t + 1, y = 2t + 1, z = t$ 与 $(x - 2)/1 = (y + 1)/2 = (z - 1)/1$ 之间的距离是。
    ],
    options: (
      [1],
      [$2/3$],
      [$(4 sqrt(3))/3$],
      [$(2 sqrt(3))/3$],
    ),
    answer: [C],
    solution: [
      直线 $L_1$ 过 $M_1(1, 1, 0)$，方向向量 $bold(s) = (1, 2, 1)$。
          直线 $L_2$ 过 $M_2(2, -1, 1)$。$arrow(M_1 M_2) = (1, -2, 1)$。
          $d = |arrow(M_1 M_2) times bold(s)| / |bold(s)| = |(1, -2, 1) times (1, 2, 1)| / sqrt(6) = |(-4, 0, 4)| / sqrt(6) = sqrt(32)/sqrt(6) = (4 sqrt(3))/3$。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      过点 $(2, -3, 4)$ 且与平面 $3x - y + 2z = 4$ 垂直的直线方程为
    ],
    answer: [$(x - 2)/3 = (y + 3)/(-1) = (z - 4)/2$],
    solution: [
      $(x - 2)/3 = (y + 3)/(-1) = (z - 4)/2$
    ],
  ),
  (
    kind: "blank",
    stem: [
      直线 $cases(x + y + 3z = 0, x - y - z = 0)$ 与平面 $x - y - z + 1 = 0$ 的夹角为
    ],
    answer: [$0$],
    solution: [
      $ bold(s) = (1, 1, 3) times (1, -1, -1) = (2, 4, -2) parallel (1, 2, -1) $
          $ bold(n) = (1, -1, -1) $
          $ sin phi =(|bold(s) dot bold(n)|)/(|bold(s)| |bold(n)|)=(|1 - 2 + 1|)/(sqrt(6) sqrt(3))= 0 => phi = 0 $
    ],
  ),
  (
    kind: "blank",
    stem: [
      点 $(1, 2, 3)$ 到直线 $x/1 = (y - 4)/(-3) = (z - 3)/(-2)$ 的距离为
    ],
    answer: [$sqrt(6)/2$],
    solution: [
      点 $P(1, 2, 3)$，直线点 $M_0(0, 4, 3)$，方向向量 $arrow(s) = (1, -3, -2)$。
          $arrow(M_0 P) = (1, -2, 0)$。
          $d = |arrow(M_0 P) times arrow(s)| / |arrow(s)| = |(4, 2, -1)| / sqrt(1+9+4) = sqrt(16+4+1) / sqrt(14) = sqrt(21) / sqrt(14) = sqrt(3/2) = sqrt(6)/2$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      点 $(-1, 3, -4)$ 在平面 $x + 2y - z + 1 = 0$ 上的投影为
    ],
    answer: [$(-(8)/(3), -(1)/(3), -(7)/(3))$],
    solution: [
      垂线：$x=-1+t, y=3+2t, z=-4-t$。
          代入平面：
          $ (-1+t)+2(3+2t)-(-4-t)+1=0 => 6t+10=0 => t=-(5)/(3) $
          投影点：
          $ (-1-(5)/(3), 3-(10)/(3), -4+(5)/(3)) = (-(8)/(3), -(1)/(3), -(7)/(3)) $
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      用对称式方程及参数方程表示直线 $cases(x - y + z = 1, 2x + y + z = 4)$
    ],
    solution: [
      $(x - 1)/(-2)=(y - 1)/(1)=(z - 1)/(3)$，$cases(x = 1 - 2t, y = 1 + t, z = 1 + 3t)$

      $ bold(s) = (1,-1,1) times (2,1,1) = (-2,1,3) $
          取 $z=1$，解得 $x=1, y=1$。
          对称式：
          $ (x-1)/(-2) =(y-1)/(1)=(z-1)/(3) $
          参数式：$x=1-2t, y=1+t, z=1+3t$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求过点 $(0, 2, 4)$ 且与两平面 $x + 2z = 1$ 和 $y - 3z = 2$ 平行的直线方程
    ],
    solution: [
      $(x)/(-2)=(y - 2)/(3)=(z - 4)/(1)$

      $ bold(s) = (1,0,2) times (0,1,-3) = (-2,3,1) $
          方程：
          $ (x)/(-2) =(y-2)/(3)=(z-4)/(1) $
    ],
  ),
  (
    kind: "compute",
    stem: [
      求过点 $(3, 1, -2)$ 且过直线 $(x - 4)/5 = (y + 3)/2 = z/1$ 的平面方程
    ],
    solution: [
      $8x - 9y - 22z - 59 = 0$
    ],
  ),
  (
    kind: "compute",
    stem: [
      求过点 $(1, 2, 1)$ 且与两直线 $cases(x + 2y - z + 1 = 0, x - y + z - 1 = 0)$ 和 $cases(2x - y + z = 0, x - y + z = 0)$ 平行的平面方程。
    ],
    solution: [
      第一条直线方向向量 $arrow(s_1) = (1, 2, -1) times (1, -1, 1) = (1, -2, -3)$。
          第二条直线方向向量 $arrow(s_2) = (2, -1, 1) times (1, -1, 1) = (0, -1, -1)$。
          平面法向量 $arrow(n) = arrow(s_1) times arrow(s_2) = (1, -2, -3) times (0, -1, -1) = (-1, 1, -1)$，取 $(1, -1, 1)$。
          方程为 $1(x-1) - 1(y-2) + 1(z-1) = 0 => x - y + z = 0$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求点 $(3, -1, 2)$ 到直线 $cases(x + y - z + 1 = 0, 2x - y + z - 4 = 0)$ 的距离。
    ],
    solution: [
      点 $M_0(1, 0, 2), bold(s) = (0, -3, -3) parallel (0, 1, 1), P(3, -1, 2)$
          $ arrow(M_0 P) = (2, -1, 0) $
          $ d =(|arrow(M_0 P) times bold(s)|)/(|bold(s)|)=(|(-1, -2, 2)|)/(sqrt(2))=(3)/(sqrt(2))=(3 sqrt(2))/(2) $
    ],
  ),
)

#book-section(section-title, problems)
