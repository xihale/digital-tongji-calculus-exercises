// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第一节 不定积分的概念与性质]

#let problems = (
  // ===== 一、判断题 =====
  (
    kind: "judge",
    kind-title: [一、判断题（如果错误，请加以改正）],
    stem: [有界函数一定存在原函数],
    answer: [×],
    solution: [
      错。例如 $f(x) = cases(1 & x > 0, -1 & x <= 0)$ 有界，但因有跳跃间断点，
      不满足 Darboux 性质，故不是某函数的导函数，从而无原函数。
    ],
  ),
  (
    kind: "judge",
    stem: [设函数 $f(x)$ 的原函数存在，$k$ 为任意常数，则 $integral k f(x) dif x = k integral f(x) dif x$],
    answer: [√],
    solution: [正确。这是不定积分的线性性质。],
  ),
  (
    kind: "judge",
    stem: [设 $F'(x) = f(x)$，则 $[integral dif F(x)]' = f(x) + C$],
    answer: [×],
    solution: [
      错。$integral dif F(x) = F(x) + C$，再求导得 $[F(x) + C]' = f(x)$，右边不应有 $+C$。
    ],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [计算下列不定积分：],
    parts: (
      [$integral (dif x)/(x^2 sqrt(x))$；],
      [$integral x^2 root(3, x) dif x$；],
      [$integral (1 + sin 2x)/(cos x + sin x) dif x$；],
      [$integral (x^4)/(1 + x^2) dif x$；],
      [$integral (cos 2x)/(cos^2 x sin^2 x) dif x$；],
      [$integral (3 · 2^x - 2 · 3^x)/(3^x) dif x$。],
    ),
    solution-parts: (
      [
        $integral x^(-5/2) dif x = x^(-3/2)/(-3/2) + C = -2/3 x^(-3/2) + C = -2/(3 x^(3/2)) + C$。
      ],
      [
        $integral x^(7/3) dif x = x^(10/3)/(10/3) + C = 3/10 x^(10/3) + C$。
      ],
      [
        $1 + sin 2x = sin^2 x + cos^2 x + 2 sin x cos x = (sin x + cos x)^2$，
        故原式 $= integral (sin x + cos x) dif x = sin x - cos x + C$。
      ],
      [
        $x^4/(1+x^2) = x^2 - 1 + 1/(1+x^2)$，
        故原式 $= x^3/3 - x + arctan x + C$。
      ],
      [
        $cos 2x = cos^2 x - sin^2 x$，
        原式 $= integral (1/sin^2 x - 1/cos^2 x) dif x = integral (csc^2 x - sec^2 x) dif x$
        $= -cot x - tan x + C$。
      ],
      [
        原式 $= integral [3 (2/3)^x - 2] dif x = 3 (2/3)^x / ln(2/3) - 2x + C$
        $= -3 (2/3)^x / ln(3/2) - 2x + C$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [
      一曲线过点 $(e^2, 3)$，且该曲线在任一点处的切线斜率等于该点横坐标的倒数，求该曲线的方程。
    ],
    solution: [
      $y' = 1/x$，故 $y = integral 1/x dif x = ln|x| + C$。
      代入 $(e^2, 3)$：$3 = ln e^2 + C = 2 + C$，得 $C = 1$。
      曲线方程为 $y = ln x + 1$（$x > 0$）。
    ],
  ),
  (
    kind: "compute",
    stem: [
      已知函数 $F(x)$ 的导函数为 $1/sqrt(1 - x^2)$，且当 $x = 1$ 时函数值为 $3pi/2$，试求此函数。
    ],
    solution: [
      $F(x) = arcsin x + C$。由 $F(1) = 3pi/2$：$pi/2 + C = 3pi/2$，得 $C = pi$。
      故 $F(x) = arcsin x + pi$。
    ],
  ),

  // ===== 三、证明题 =====
  (
    kind: "proof",
    stem: [
      证明：$arcsin(2x - 1)$，$arccos(1 - 2x)$ 和 $2 arctan sqrt(x/(1 - x))$
      都是 $1/sqrt(x - x^2)$ 的原函数。
    ],
    solution: [
      逐一求导验证：
      $(arcsin(2x-1))' = 2/sqrt(1-(2x-1)^2) = 2/sqrt(4x-4x^2) = 1/sqrt(x-x^2)$。
      $(arccos(1-2x))' = 2/sqrt(1-(1-2x)^2) = 1/sqrt(x-x^2)$。
      令 $u = sqrt(x/(1-x))$，则 $2 arctan u$ 的导数经化简亦为 $1/sqrt(x-x^2)$。
      故三者均为 $1/sqrt(x - x^2)$ 的原函数。
    ],
  ),
)

#book-section(section-title, problems)
