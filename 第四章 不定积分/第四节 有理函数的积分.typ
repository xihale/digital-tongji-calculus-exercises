// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第四节 有理函数的积分]

#let problems = (
  // ===== 一、判断题 =====
  (
    kind: "judge",
    kind-title: [一、判断题（如果错误，请加以改正）],
    stem: [有理函数也称为有理分式，整式也是有理分式的一种],
    answer: [√],
    solution: [正确。整式可看作分母为 $1$ 的有理分式。],
  ),
  (
    kind: "judge",
    stem: [有理分式 $(x^3 + x^2 - x - 1)/(2x^3 + 3x^2 + 6x)$ 是真分式],
    answer: [×],
    solution: [
      错。分子、分母次数均为 $3$，分子次数不小于分母次数，故为假分式。
      真分式要求分子次数严格小于分母次数。
    ],
  ),
  (
    kind: "judge",
    stem: [
      令 $t = tan x/2$，则
      $integral (tan x)/(sin x + cos x - 1) dif x = integral 2/((1 - t)(1 - t^2)) dif t$
      中系数 $A = 2$ 的写法正确
    ],
    answer: [√],
    solution: [
      正确。由 Weierstrass 代换化简可得
      $integral 2/((1-t)(1-t^2)) dif t$。
    ],
  ),
  (
    kind: "judge",
    stem: [
      在计算三角函数有理式的不定积分 $integral R(sin x, cos x) dif x$ 时，
      一般可使用变换 $t = tan x/2$
    ],
    answer: [√],
    solution: [正确。这是处理 $R(sin x, cos x)$ 的通用方法（万能代换）。],
  ),
  (
    kind: "judge",
    stem: [所有连续函数均存在初等函数的原函数],
    answer: [×],
    solution: [
      错。连续函数必有原函数，但不一定是初等函数。
      反例：$e^(-x^2)$ 连续，其原函数不能用初等函数表示。
    ],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [计算下列不定积分：],
    parts: (
      [$integral x^3/(x + 3) dif x$；],
      [$integral (2x + 3)/(x^2 + 3x - 10) dif x$；],
      [$integral (x + 1)/(x^2 + 2x + 5) dif x$；],
      [$integral (dif x)/(x(x^2 + 1))$；],
      [$integral (dif x)/((x^2 + 1)(x^2 + x + 1))$；],
      [$integral (dif x)/(3 + sin^2 x)$。],
    ),
    solution-parts: (
      [
        长除法：$x^3/(x+3) = x^2 - 3x + 9 - 27/(x+3)$，
        原式 $= x^3/3 - 3x^2/2 + 9x - 27 ln|x+3| + C$。
      ],
      [
        $x^2 + 3x - 10 = (x+5)(x-2)$，
        $(2x+3)/((x+5)(x-2)) = 1/(x+5) + 1/(x-2)$，
        原式 $= ln|(x+5)(x-2)| + C$。
      ],
      [
        $x^2 + 2x + 5 = (x+1)^2 + 4$，且 $x+1 = 1/2 · (2x+2)$，
        原式 $= 1/2 ln(x^2 + 2x + 5) + C$。
      ],
      [
        $1/(x(x^2+1)) = 1/x - x/(x^2+1)$，
        原式 $= ln|x| - 1/2 ln(x^2+1) + C = ln |x|/sqrt(x^2+1) + C$。
      ],
      [
        部分分式：
        $1/((x^2+1)(x^2+x+1)) = -x/(x^2+1) + (x+1)/(x^2+x+1)$，
        原式 $= 1/2 ln|(x^2+x+1)/(x^2+1)| + 1/sqrt(3) arctan((2x+1)/sqrt(3)) + C$。
      ],
      [
        令 $t = tan x$，则 $dif x = dif t/(1+t^2)$，$sin^2 x = t^2/(1+t^2)$，
        原式 $= integral dif t/(3 + 4t^2) = 1/(2 sqrt(3)) arctan(2 tan x / sqrt(3)) + C$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [（附加题）试用两种方法计算不定积分 $integral (dif x)/(sin 2x + 2 sin x)$。],
    solution: [
      方法一：原式 $= integral dif x/(2 sin x (1 + cos x))$。
      用半角公式 $sin x = 2 sin x/2 cos x/2$，$1+cos x = 2 cos^2 x/2$，
      化成 $1/8 integral dif x/(sin x/2 cos^3 x/2)$，再令 $u = cos x/2$ 计算。
      方法二（万能代换）：令 $t = tan x/2$，得
      原式 $= 1/4 integral (1/t + t) dif t = 1/4 ln|tan x/2| + 1/8 tan^2 x/2 + C$。
    ],
  ),
)

#book-section(section-title, problems)
