// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第三节 函数的极限]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [$lim_(x -> 1) |x - 1|/(x - 1) =$],
    options: ([-1], [0], [1], [不存在]),
    answer: [D],
    solution: [
      $x -> 1^+$ 时 $|x - 1| = x - 1$，极限为 $1$；
      $x -> 1^-$ 时 $|x - 1| = 1 - x$，极限为 $-1$。
      左右极限不等，故极限不存在。
    ],
  ),
  (
    kind: "choice",
    stem: [
      $lim_(x -> x_0^+) f(x)$ 与 $lim_(x -> x_0^-) f(x)$ 存在且相等是
      $lim_(x -> x_0) f(x)$ 存在的
    ],
    options: ([充分条件], [必要条件], [充要条件], [无关条件]),
    answer: [C],
    solution: [
      函数极限 $lim_(x -> x_0) f(x)$ 存在的充要条件是左右极限都存在且相等。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $f(x) = (2x + |x|)/(4x - 3|x|)$，则 $lim_(x -> 0) f(x) =$
    ],
    options: ([$1/2$], [$1/3$], [$1/4$], [不存在]),
    answer: [D],
    solution: [
      $x -> 0^+$：$f(x) = (2x + x)/(4x - 3x) = 3$；
      $x -> 0^-$：$f(x) = (2x - x)/(4x + 3x) = 1/7$。
      左右极限不等，极限不存在。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [
      使当 $0 < |x - 3| < delta$ 时
      $|(x^2 - 9)/(x - 3) - 6| < epsilon$ 成立，可取 $delta =$
    ],
    answer: [$epsilon$],
    solution: [
      $(x^2 - 9)/(x - 3) - 6 = x + 3 - 6 = x - 3$，
      故绝对值等于 $|x - 3|$。取 $delta = epsilon$ 即可。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [对于图 1-1 所示的函数 $f(x)$，求下列极限；若不存在，说明理由：],
    figure: image("images/2-5.jpg", width: 70%),
    figure-caption: [图 1-1],
    parts: (
      [$lim_(x -> 2) f(x)$；],
      [$lim_(x -> -1) f(x)$；],
      [$lim_(x -> 0) f(x)$。],
    ),
    solution-parts: (
      [由图，$x = 2$ 附近 $f(x) = 1$，故极限为 $1$。],
      [由图，$x = -1$ 左右 $f(x)$ 均趋于 $-1$，故极限为 $-1$。],
      [
        左极限 $lim_(x -> 0^-) f(x) = -1$，
        右极限 $lim_(x -> 0^+) f(x) = 1$，
        左右极限不等，故极限不存在。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [
      求函数 $f(x) = x/x$，$phi(x) = |x|/x$ 当 $x -> 0$ 时的左、右极限，
      并说明它们当 $x -> 0$ 时的极限是否存在。
    ],
    solution: [
      对 $f(x)$：$x != 0$ 时 $f(x) = 1$，故左右极限均为 $1$，
      $lim_(x -> 0) f(x) = 1$。

      对 $phi(x)$：$x > 0$ 时 $phi(x) = 1$，$x < 0$ 时 $phi(x) = -1$，
      左右极限分别为 $1$ 与 $-1$，故 $lim_(x -> 0) phi(x)$ 不存在。
    ],
  ),

  // ===== 四、证明题 =====
  (
    kind: "proof",
    stem: [根据函数极限的定义，证明：],
    parts: (
      [$lim_(x -> 2) (5x + 2) = 12$；],
      [$lim_(x -> oo) (1 + x^3)/(2x^3) = 1/2$。],
    ),
    solution-parts: (
      [
        $|(5x + 2) - 12| = 5|x - 2|$。
        对任意 $epsilon > 0$，取 $delta = epsilon/5$，
        当 $0 < |x - 2| < delta$ 时 $|(5x + 2) - 12| < epsilon$，得证。
      ],
      [
        $|(1 + x^3)/(2x^3) - 1/2| = 1/(2x^3)$（$x > 0$）。
        对任意 $epsilon > 0$，取 $M = (1/(2epsilon))^(1/3)$，
        当 $x > M$ 时 $|(1 + x^3)/(2x^3) - 1/2| < epsilon$，得证。
      ],
    ),
  ),
)

#book-section(section-title, problems)
