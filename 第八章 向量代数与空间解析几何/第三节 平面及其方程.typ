// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第三节 平面及其方程]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      平面 $x - 2y + 7z + 3 = 0$ 与平面 $3x + 5y + z - 1 = 0$ 的位置关系为
    ],
    options: (
      [平行],
      [垂直],
      [相交但不垂直],
      [重合],
    ),
    answer: [B],
    solution: [
      法向量 $bold(n_1) = (1, -2, 7), bold(n_2) = (3, 5, 1)$。$bold(n_1) dot bold(n_2) = 1(3) + (-2)(5) + 7(1) = 3 - 10 + 7 = 0$。故两平面垂直。
    ],
  ),
  (
    kind: "choice",
    stem: [
      过点 $M_1(2, -1, 4), M_2(-1, 3, -2)$ 和 $M_3(0, 2, 3)$ 的平面方程为
    ],
    options: (
      [$14x + 9y - z - 15 = 0$],
      [$2x + 7y - 8z - 6 = 0$],
      [$14x - 9y + z - 15 = 0$],
      [$14x + 9y + z - 15 = 0$],
    ),
    answer: [A],
    solution: [
      $arrow(M_1 M_2) = (-3, 4, -6), arrow(M_1 M_3) = (-2, 3, -1)$。法向量 $bold(n) = arrow(M_1 M_2) times arrow(M_1 M_3) = (14, 9, -1)$。平面方程：$14(x-2) + 9(y+1) - 1(z-4) = 0 => 14x + 9y - z - 15 = 0$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      平面 $x - y + 2z - 6 = 0$ 与平面 $2x + y + z - 5 = 0$ 的夹角为
    ],
    options: (
      [$pi/2$],
      [$pi/6$],
      [$pi/3$],
      [$pi/4$],
    ),
    answer: [C],
    solution: [
      法向量 $bold(n_1) = (1, -1, 2), bold(n_2) = (2, 1, 1)$。$cos theta = |bold(n_1) dot bold(n_2)| / (|bold(n_1)| |bold(n_2)|) = |2 - 1 + 2| / (sqrt(6) sqrt(6)) = 3/6 = 1/2$。故夹角 $theta = pi/3$。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      过点 $M(3, 0, -1)$ 且与平面 $3x - 7y + 5z - 12 = 0$ 平行的平面方程为
    ],
    answer: [$3x - 7y + 5z - 4 = 0$],
    solution: [
      法向量为 $(3, -7, 5)$。过点 $(3, 0, -1)$ 的方程为：$3(x-3) - 7(y-0) + 5(z+1) = 0 => 3x - 9 - 7y + 5z + 5 = 0 => 3x - 7y + 5z - 4 = 0$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      点 $M_1(1, 2, 1)$ 到平面 $x + 2y + 2z - 10 = 0$ 的距离为
    ],
    answer: [$1$],
    solution: [
      $ d =(|1 + 4 + 2 - 10|)/(sqrt(1^2 + 2^2 + 2^2))=(|-3|)/(3)= 1 $
    ],
  ),
  (
    kind: "blank",
    stem: [
      使得平面 $x + k y - 2z = 9$ 与平面 $2x - 3y + z = 0$ 成 $pi/4$ 角的 $k$ 值为
    ],
    answer: [$plus.minus sqrt(70)/2$],
    solution: [
      法向量分别为 $(1, k, -2)$ 和 $(2, -3, 1)$。
          $cos pi/4 = sqrt(2)/2 = |2 - 3k - 2| / (sqrt(1+k^2+4) sqrt(4+9+1)) = |3k| / (sqrt(5+k^2) sqrt(14))$。
          $1/2 = 9k^2 / (14(5+k^2)) => 7(5+k^2) = 9k^2 => 35 + 7k^2 = 9k^2 => 2k^2 = 35 => k = plus.minus sqrt(70)/2$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      求平面 $2x - 2y + z + 5 = 0$ 与各坐标面的夹角的余弦
    ],
    solution: [
      $ bold(n) = (2, -2, 1), |bold(n)| = 3 $
          $ cos alpha =(|bold(n) dot bold(k)|)/(|bold(n)|)=(1)/(3) $
          $ cos beta =(|bold(n) dot bold(i)|)/(|bold(n)|)=(2)/(3) $
          $ cos gamma =(|bold(n) dot bold(j)|)/(|bold(n)|)=(2)/(3) $
    ],
  ),
  (
    kind: "compute",
    stem: [
      求过点 $M_0(2, 9, -6)$ 且与联结坐标原点及点 $M_0$ 的线段 $O M_0$ 垂直的平面方程
    ],
    solution: [
      法向量 $arrow(O M_0) = (2, 9, -6)$。
          方程为 $2(x-2) + 9(y-9) - 6(z+6) = 0 => 2x - 4 + 9y - 81 - 6z - 36 = 0 => 2x + 9y - 6z - 121 = 0$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      一平面过点 $(1, 0, -1)$ 且平行于向量 $bold(a) = (2, 1, 1)$ 和 $bold(b) = (1, -1, 0)$，试求该平面方程
    ],
    solution: [
      $ bold(n) = bold(a) times bold(b) = (1, 1, -3) $
          方程：
          $ 1(x-1) + 1(y-0) - 3(z+1) = 0 => x + y - 3z - 4 = 0 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      求三平面 $x + 3y + z = 1, 2x - y - z = 0$ 和 $-x + 2y + 2z = 3$ 的交点
    ],
    solution: [
      解方程组：
          $ cases(x + 3y + z = 1, 2x - y - z = 0, -x + 2y + 2z = 3) => cases(x=1, y=-1, z=3) $
          交点为 $(1, -1, 3)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      分别按下列条件求平面方程： \
            (1) 平行于 $z O x$ 面且过点 $(2, -5, 3)$；
            (2) 过 $z$ 轴和点 $(-3, 1, 2)$；
            (3) 平行于 $x$ 轴且过点 $(4, 0, -2)$ 和 $(5, 1, 7)$
    ],
    solution: [
      (1) $y + 5 = 0$；(2) $x + 3y = 0$；(3) $z - 9y + 2 = 0$。 \
      (1) 平行于 $z O x$ 面 => $y = C$，代入点得 $y = -5$。
          (2) 过 $z$ 轴可设为 $A x + B y = 0$，代入点得 $-3 A + B = 0 => B = 3 A$，取 $A = 1, B = 3$ 得 $x + 3 y = 0$。
          (3) 平行于 $x$ 轴 => $bold(v_1)=(1,0,0)$；另由两点得 $bold(v_2)=(1,1,9)$。
          $ bold(n) = bold(v_1) times bold(v_2) = (0,-9,1) $
          方程：
          $ -9(y-0) + 1(z+2) = 0 => z - 9y + 2 = 0 $
    ],
  ),
)

#book-section(section-title, problems)
