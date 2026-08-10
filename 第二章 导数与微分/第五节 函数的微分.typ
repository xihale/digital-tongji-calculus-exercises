// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第五节 函数的微分]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [一切初等函数在其定义区间内],
    options: ([可微], [不可微], [连续], [有界]),
    answer: [C],
    solution: [
      初等函数在其定义区间内连续。
      但不一定可微（如 $y = |x|$ 在 $x = 0$ 处），也不一定有界。故选 C。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [
      已知函数 $y = x^2 - x$，则在点 $x = 2$ 处，当 $Delta x = 0.1$ 时，
      $Delta y$ 与 $dif y$ 分别为
    ],
    answers: (
      [$0.31$],
      [$0.3$],
    ),
    solution: [
      $y' = 2 x - 1$，在 $x = 2$ 处 $y' = 3$。
      $Delta y = f(2.1) - f(2) = 0.31$，$dif y = 3 · 0.1 = 0.3$。
    ],
  ),
  (
    kind: "blank",
    stem: [$dif(sqrt(x) arcsin sqrt(x)) =$],
    answer: [
      $(arcsin sqrt(x)/(2 sqrt(x)) + 1/(2 sqrt(1 - x))) dif x$
    ],
    solution: [
      $dif(sqrt(x) arcsin sqrt(x))
      = (1/(2 sqrt(x))) arcsin sqrt(x) #h(0.15em) dif x
      + sqrt(x) · 1/sqrt(1 - x) · 1/(2 sqrt(x)) #h(0.15em) dif x$
      $= [(arcsin sqrt(x))/(2 sqrt(x)) + 1/(2 sqrt(1 - x))] dif x$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $f(x)$ 与 $g(x)$ 都是可导函数，又函数 $y = f[g(2 - x^3)]$，
      则当 $Delta x -> 0$ 时，无穷小 $Delta y$ 关于 $Delta x$ 的线性主部为
    ],
    answer: [
      $f'[g(2 - x^3)] g'(2 - x^3) (-3 x^2) dif x$
    ],
    solution: [
      线性主部即微分
      $dif y = f'[g(2 - x^3)] g'(2 - x^3) (-3 x^2) dif x$。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [求下列函数的微分：],
    parts: (
      [$y = x^2 e^(2 x)$；],
      [$y = ln^2(1 - x)$；],
      [$y = arcsin sqrt(1 - x^2)$；],
      [$y = tan^2(1 + 2 x^2)$。],
    ),
    solution-parts: (
      [$dif y = 2 x(1 + x) e^(2 x) dif x$。],
      [$dif y = -2 ln(1 - x)/(1 - x) dif x$。],
      [
        $dif y = -x /(|x| sqrt(1 - x^2)) dif x = -(op("sgn") x)/sqrt(1 - x^2) dif x$。
      ],
      [$dif y = 8 x tan(1 + 2 x^2) sec^2(1 + 2 x^2) dif x$。],
    ),
  ),
  (
    kind: "compute",
    stem: [
      已知 $x = f'(t)$，$y = t f'(t) - f(t)$，设 $f''(t)$ 存在且不为零，
      求 $y$ 对 $x$ 的微分
    ],
    solution: [
      $dif x = f''(t) dif t$，$dif y = t f''(t) dif t$，故 $(dif y)/(dif x) = t$，
      从而 $dif y = t dif x$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $y = y(x)$ 由方程 $y^2 f(x) + x f(y) = x^2$ 所确定，
      其中 $f(x)$ 是 $x$ 的可微函数，试求 $dif y$
    ],
    solution: [
      两边求微分：
      $2 y f(x) dif y + y^2 f'(x) dif x + f(y) dif x + x f'(y) dif y = 2 x dif x$，
      整理得
      $dif y = (2 x - y^2 f'(x) - f(y))/(2 y f(x) + x f'(y)) dif x$。
    ],
  ),
  (
    kind: "compute",
    stem: [计算 $root(3, 996)$ 的近似值],
    solution: [
      令 $f(x) = x^(1/3)$，在 $x = 1000$ 处：$f(1000) = 10$，
      $f'(x) = 1/(3 x^(2/3))$，$f'(1000) = 1/300$。
      $f(996) approx 10 + (1/300)(-4) = 10 - 1/75 approx 9.987$。
    ],
  ),
)

#book-section(section-title, problems)
