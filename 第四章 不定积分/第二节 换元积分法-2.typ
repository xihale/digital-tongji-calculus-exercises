// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第二节 换元积分法(2)]

#let problems = (
  // ===== 一、填空题 =====
  (
    kind: "blank",
    stem: [
      如果被积函数中含有 $sqrt(a^2 - x^2)$，可令 $x = a sin t$ 将根式化去，此时 $dif x =$
    ],
    answer: [$a cos t space dif t$],
    solution: [由 $x = a sin t$ 得 $dif x = a cos t dif t$。],
  ),
  (
    kind: "blank",
    stem: [
      如果被积函数中含有 $sqrt(a^2 + x^2)$，可令 $x = a tan t$（或 $x = a sinh t$）将根式化去，此时 $dif x =$
    ],
    answer: [$a sec^2 t space dif t$（或 $a cosh t space dif t$）],
    solution: [
      $x = a tan t$ 时 $dif x = a sec^2 t dif t$；
      $x = a sinh t$ 时 $dif x = a cosh t dif t$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      如果被积函数中含有 $sqrt(x^2 - a^2)$，可令 $x = a sec t$（或 $x = a cosh t$）将根式化去，此时 $dif x =$
    ],
    answer: [$a sec t tan t space dif t$（或 $a sinh t space dif t$）],
    solution: [
      $x = a sec t$ 时 $dif x = a sec t tan t dif t$；
      $x = a cosh t$ 时 $dif x = a sinh t dif t$。
    ],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [计算下列不定积分：],
    parts: (
      [$integral (dif x)/(x sqrt(1 + x^2))$；],
      [$integral sin sqrt(x) dif x$；],
      [$integral x^2/sqrt(a^2 - x^2) dif x$；],
      [$integral (dif x)/(1 + sqrt(2x))$；],
      [$integral (dif x)/sqrt((x^2 + 1)^3)$；],
      [$integral (dif x)/(x + sqrt(1 - x^2))$；],
      [$integral sqrt(x^2 - 4)/x dif x$。],
    ),
    solution-parts: (
      [
        令 $x = tan t$（$t in (-pi/2, pi/2)$），则 $dif x = sec^2 t dif t$，$sqrt(1+x^2) = sec t$。
        原式 $= integral sec t / tan t dif t = integral csc t dif t = ln|(csc t - cot t)| + C$
        （或 $-ln|csc t + cot t| + C$）。
        回代得 $ln |x|/(1 + sqrt(1+x^2)) + C$（差一常数形式等价）。
      ],
      [
        令 $u = sqrt(x)$，则 $x = u^2$，$dif x = 2u dif u$。
        原式 $= 2 integral u sin u dif u = 2(-u cos u + sin u) + C$
        $= 2(-sqrt(x) cos sqrt(x) + sin sqrt(x)) + C$。
      ],
      [
        令 $x = a sin t$，则 $dif x = a cos t dif t$，$sqrt(a^2-x^2) = a cos t$。
        原式 $= a^2 integral sin^2 t dif t = (a^2/2)(t - sin t cos t) + C$
        $= (a^2/2) arcsin x/a - (x sqrt(a^2-x^2))/2 + C$。
      ],
      [
        令 $u = sqrt(2x)$，则 $x = u^2/2$，$dif x = u dif u$。
        原式 $= integral u/(1+u) dif u = integral [1 - 1/(1+u)] dif u$
        $= u - ln|1+u| + C = sqrt(2x) - ln(1 + sqrt(2x)) + C$。
      ],
      [
        令 $x = tan t$，则 $dif x = sec^2 t dif t$，$sqrt((x^2+1)^3) = sec^3 t$。
        原式 $= integral cos t dif t = sin t + C = x/sqrt(1+x^2) + C$。
      ],
      [
        令 $x = sin t$，则 $dif x = cos t dif t$，$sqrt(1-x^2) = cos t$。
        原式 $= integral cos t/(sin t + cos t) dif t$。
        设 $I_1$ 为该积分，$I_2 = integral sin t/(sin t + cos t) dif t$，
        则 $I_1 + I_2 = t$，$I_1 - I_2 = ln|sin t + cos t|$，
        故 $I_1 = 1/2 [t + ln|sin t + cos t|] + C$
        $= 1/2 [arcsin x + ln|x + sqrt(1-x^2)|] + C$。
      ],
      [
        令 $x = 2 sec t$（$t in (0, pi/2)$），则 $dif x = 2 sec t tan t dif t$，$sqrt(x^2-4) = 2 tan t$。
        原式 $= 2 integral tan^2 t dif t = 2(tan t - t) + C$
        $= sqrt(x^2 - 4) - 2 arccos 2/x + C$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [（附加题）计算下列不定积分：],
    parts: (
      [$integral (x^3 + 1)/((x^2 + 1)^2) dif x$；],
      [$integral (dif x)/(x^100 + x)$。],
    ),
    solution-parts: (
      [
        $x^3 + 1 = x(x^2+1) + (1 - x)$，
        原式 $= integral x/(x^2+1) dif x + integral (1-x)/(x^2+1)^2 dif x$。
        第一项 $= 1/2 ln(x^2+1)$；
        $integral x/(x^2+1)^2 dif x = -1/(2(x^2+1))$；
        $integral 1/(x^2+1)^2 dif x = 1/2 [x/(x^2+1) + arctan x]$。
        故原式 $= 1/2 ln(x^2+1) + (x+1)/(2(x^2+1)) + 1/2 arctan x + C$。
      ],
      [
        $1/(x(x^99+1)) = 1/x - x^98/(x^99+1)$，
        原式 $= ln|x| - 1/99 ln|x^99 + 1| + C$。
      ],
    ),
  ),
)

#book-section(section-title, problems)
