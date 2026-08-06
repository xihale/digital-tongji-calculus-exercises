// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第八节 函数的连续性与间断点]

#let problems = (
  // ===== 一、填空题 =====
  (
    kind: "blank",
    stem: [
      设函数
      $f(x) = cases(
        1/x sin x/3 & x != 0,
        a & x = 0,
      )$
      在点 $x = 0$ 处连续，则 $a =$
    ],
    answer: [$1/3$],
    solution: [
      连续要求 $lim_(x -> 0) f(x) = a$。
      $lim_(x -> 0) (1/x) sin x/3 = lim_(x -> 0) (sin x/3)/(x/3) dot 1/3 = 1/3$。
    ],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [
      下列函数在指定点处间断，说明这些间断点属于哪一类；
      若为可去间断点，补充或改变定义使函数在该点连续：
    ],
    parts: (
      [$y = (x^2 - 1)/(x^2 - 3x + 2)$；$x = 1$，$x = 2$；],
      [
        $y = cases(
          x - 1 & x <= 1,
          3 - x & x > 1,
        )$ 在点 $x = 1$ 处。
      ],
    ),
    solution-parts: (
      [
        $y = (x + 1)/(x - 2)$（$x != 1$）。
        $x = 1$：极限为 $-2$，可去间断点，定义 $y(1) = -2$ 即连续。
        $x = 2$：左右极限为 $plus.minus oo$，无穷间断点（第二类）。
      ],
      [
        $y(1) = 0$，左极限 $0$，右极限 $2$，
        跳跃间断点（第一类）。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [
      讨论函数 $f(x) = lim_(n -> oo) (1 - x^(2n))/(1 + x^(2n)) x$ 的连续性；
      若有间断点，判断其类型。
    ],
    solution: [
      得
      $f(x) = cases(
        x & |x| < 1,
        0 & |x| = 1,
        -x & |x| > 1,
      )$。
      在 $|x| != 1$ 处连续。
      在 $x = 1$：左极限 $1$，右极限 $-1$，$f(1) = 0$，跳跃间断点；
      在 $x = -1$：左极限 $1$，右极限 $-1$，$f(-1) = 0$，跳跃间断点。
    ],
  ),
  (
    kind: "short",
    stem: [下列陈述哪些正确？正确说明理由，错误举反例：],
    parts: (
      [若 $f(x)$ 在 $x = a$ 处连续，则 $|f(x)|$ 也在 $x = a$ 处连续；],
      [若 $|f(x)|$ 在 $x = a$ 处连续，则 $f(x)$ 也在 $x = a$ 处连续。],
    ),
    solution-parts: (
      [
        正确。由 $||f(x)| - |f(a)|| <= |f(x) - f(a)|$ 及 $f$ 连续即得。
      ],
      [
        错误。反例：$f(x) = cases(1 & x >= 0, -1 & x < 0)$，
        则 $|f| equiv 1$ 连续，但 $f$ 在 $x = 0$ 处不连续。
      ],
    ),
  ),
)

#book-section(section-title, problems)
