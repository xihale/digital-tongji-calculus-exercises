// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第五节 极限运算法则]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [函数 $f(x) = (x + 1)/(x^2 - 1)$ 在下列哪个变化过程中为无穷大],
    options: (
      [$x -> 0$],
      [$x -> 1$],
      [$x -> -1$],
      [$x -> oo$],
    ),
    answer: [B],
    solution: [
      $f(x) = 1/(x - 1)$（$x != -1$）。
      $x -> 1$ 时 $f(x) -> oo$；其余情形分别为 $-1$、无定义或 $0$。
    ],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [计算下列极限：],
    parts: (
      [$lim_(x -> 1) (x^2 - 2x + 1)/(x^2 - 1)$；],
      [$lim_(h -> 0) ((x + h)^2 - x^2)/h$；],
      [$lim_(n -> oo) (1 + 1/2 + 1/4 + dots + 1/2^n)$；],
      [$lim_(n -> oo) ((n + 1)(n + 2)(n + 3))/(5n^3)$；],
      [$lim_(x -> 1) (1/(1 - x) - 3/(1 - x^3))$；],
      [$lim_(x -> 0) x^2 sin(1/x)$；],
      [$lim_(x -> oo) (arctan x)/x$。],
    ),
    solution-parts: (
      [
        $= lim_(x -> 1) (x - 1)^2 / ((x - 1)(x + 1))
        = lim_(x -> 1) (x - 1)/(x + 1) = 0$。
      ],
      [
        $= lim_(h -> 0) (2 x h + h^2)/h = lim_(h -> 0) (2x + h) = 2x$。
      ],
      [
        等比数列求和：$S_n = 2(1 - (1/2)^(n + 1)) -> 2$。
      ],
      [
        分子分母同除以 $n^3$，得 $(1 + 6/n + 11/n^2 + 6/n^3)/5 -> 1/5$。
      ],
      [
        通分得 $(x^2 + x - 2)/((1 - x)(1 + x + x^2))$，
        因 $x^2 + x - 2 = -(x + 2)(1 - x)$，约去后
        $lim_(x -> 1) -(x + 2)/(1 + x + x^2) = -1$。
      ],
      [
        $|x^2 sin(1/x)| <= x^2 -> 0$，由夹逼准则极限为 $0$。
      ],
      [
        $|arctan x| < pi/2$，故 $|(arctan x)/x| < (pi/2)/|x| -> 0$，极限为 $0$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [
      函数 $y = x cos x$ 在区间 $(-oo, +oo)$ 上是否有界？
      这个函数是否为 $x -> +oo$ 时的无穷大？为什么。
    ],
    solution: [
      无界：取 $x_n = 2 n pi$，则 $y(x_n) = 2 n pi -> +oo$。

      不是 $x -> +oo$ 时的无穷大：取 $x_n = pi/2 + 2 n pi$，
      则 $y(x_n) = 0$ 不趋于无穷。
    ],
  ),

  // ===== 三、证明题 =====
  (
    kind: "proof",
    stem: [
      证明：函数 $y = 1/x sin 1/x$ 在区间 $(0, 1]$ 上无界，
      但并不是 $x -> 0^+$ 时的无穷大
    ],
    solution: [
      无界：取 $x_n = 1/(pi/2 + 2 n pi) in (0, 1]$，
      则 $sin(1/x_n) = 1$，$y(x_n) = pi/2 + 2 n pi -> +oo$。

      不是无穷大：取 $x'_n = 1/(2 n pi) -> 0^+$，
      则 $sin(1/x'_n) = 0$，$y(x'_n) = 0$ 不趋于无穷。
    ],
  ),
)

#book-section(section-title, problems)
