// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第二节 函数的求导法则]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [
      设在点 $x_0$ 处函数 $f(x)$ 可导，$g(x)$ 不可导，则在点 $x_0$ 处
    ],
    options: (
      [$f(x) + g(x)$ 必可导],
      [$f(x) g(x)$ 必不可导],
      [$f(x) - g(x)$ 必不可导],
      [$f(x)/g(x)$ 必可导],
    ),
    answer: [C],
    solution: [
      若 $f + g$ 可导，则 $g = (f + g) - f$ 可导，矛盾，故 $f + g$ 必不可导；
      同理 $f - g$ 必不可导。
      $f g$ 未必不可导（如 $f equiv 0$）；$f/g$ 亦非必可导。故选 C。
    ],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [求下列函数的导数：],
    parts: (
      [$y = 2 tan x + sec x - 1$；],
      [$y = (ln x)/x$；],
      [$y = e^x/x^2 + ln 3$；],
      [$y = x^2 ln x cos x$。],
    ),
    solution-parts: (
      [$y' = 2 sec^2 x + sec x tan x = sec x(2 sec x + tan x)$。],
      [$y' = (1 - ln x)/x^2$。],
      [$y' = e^x (x - 2)/x^3$。],
      [$y' = (2 x ln x + x) cos x - x^2 ln x sin x$。],
    ),
  ),
  (
    kind: "compute",
    stem: [求函数 $f(x) = 3/(5 - x) + x^2/5$ 在点 $x = 0$ 和点 $x = 2$ 处的导数。],
    solution: [
      $f'(x) = 3/(5 - x)^2 + 2 x/5$。
      故 $f'(0) = 3/25$，$f'(2) = 1/3 + 4/5 = 17/15$。
    ],
  ),
  (
    kind: "compute",
    stem: [求下列函数的导数：],
    parts: (
      [$y = arctan e^x$；],
      [$y = arcsin^2 x$；],
      [$y = ln(x + sqrt(a^2 + x^2))$；],
      [$y = ln tan(x/2)$；],
      [$y = e^(arctan sqrt(x))$；],
      [$y = e^(-x)(x^2 - 2 x + 3)$；],
      [$y = x arcsin(x/2) + sqrt(4 - x^2)$。],
    ),
    solution-parts: (
      [$y' = e^x/(1 + e^(2 x))$。],
      [$y' = 2 arcsin x / sqrt(1 - x^2)$。],
      [$y' = 1/sqrt(a^2 + x^2)$。],
      [$y' = 1/sin x$。],
      [$y' = e^(arctan sqrt(x)) · 1/((1 + x) 2 sqrt(x))$。],
      [$y' = e^(-x)(-x^2 + 4 x - 5)$。],
      [
        $y' = arcsin(x/2) + x/(2 sqrt(1 - x^2/4)) - x/sqrt(4 - x^2)$
        $= arcsin(x/2) + x/sqrt(4 - x^2) - x/sqrt(4 - x^2) = arcsin(x/2)$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [
      设函数 $f(x)$ 可导，求函数 $y = f(sin^2 x) + f(cos^2 x)$ 的导数 $(dif y)/(dif x)$。
    ],
    solution: [
      $(dif y)/(dif x) = f'(sin^2 x) · 2 sin x cos x + f'(cos^2 x) · (-2 cos x sin x)$
      $= sin 2 x (f'(sin^2 x) - f'(cos^2 x))$。
    ],
  ),

  // ===== 三、证明题 =====
  (
    kind: "proof",
    stem: [
      设函数 $f(x)$ 满足：
      （1）$f(x + y) = f(x) f(y)$，$forall x, y in RR$；
      （2）$f(x) = 1 + x g(x)$，且 $lim_(x -> 0) g(x) = 1$。
      试证：$f(x)$ 在 $RR$ 上处处可导，且 $f'(x) = f(x)$。
    ],
    solution: [
      由（2）得 $f(0) = 1$。对任意 $x in RR$，
      $f'(x) = lim_(h -> 0) (f(x + h) - f(x))/h
      = f(x) lim_(h -> 0) (f(h) - 1)/h$。
      由（2），$(f(h) - 1)/h = g(h)$，且 $lim_(h -> 0) g(h) = 1$，
      故 $f'(x) = f(x)$。因此 $f$ 处处可导且 $f' = f$。
    ],
  ),
)

#book-section(section-title, problems)
