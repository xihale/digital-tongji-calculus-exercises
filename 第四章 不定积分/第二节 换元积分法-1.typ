// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第二节 换元积分法(1)]

#let problems = (
  // ===== 一、判断题 =====
  (
    kind: "judge",
    kind-title: [一、判断题（如果错误，请加以改正）],
    stem: [因 $integral cos x dif x = sin x + C$，故 $integral cos 2x dif x = sin 2x + C$],
    answer: [×],
    solution: [
      错。$dif/(dif x)[(1/2) sin 2x] = cos 2x$，故
      $integral cos 2x dif x = (1/2) sin 2x + C$。
    ],
  ),
  (
    kind: "judge",
    stem: [若 $integral f(x) dif x = F(x) + C$，则 $integral f(u) dif x = F(u) + C$],
    answer: [×],
    solution: [
      错。积分变量须一致：若 $integral f(x) dif x = F(x) + C$，则 $integral f(u) dif u = F(u) + C$。
      $integral f(u) dif x$ 不能直接套用，除非已知 $u$ 与 $x$ 的关系。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [将合适的函数填入下列空格中（空格依次为）：],
    parts: (
      [$square space dif x = dif(a x + b)$；],
      [$dif(square) = x dif x$；],
      [$dif(square) = (1/x) dif x$；],
      [$dif(square) = cos x dif x$；],
      [$dif(square) = sin x dif x$；],
      [$dif(square) = e^(2x) dif x$；],
      [$dif(square) = 1/sqrt(x) dif x$；],
      [$dif(square) = 1/x^2 dif x$。],
    ),
    answers: (
      [$a$],
      [$x^2/2$],
      [$ln|x|$],
      [$sin x$],
      [$-cos x$],
      [$e^(2x)/2$],
      [$2 sqrt(x)$],
      [$-1/x$],
    ),
    solution-parts: (
      [$a$],
      [$x^2/2$],
      [$ln|x|$],
      [$sin x$],
      [$-cos x$],
      [$e^(2x)/2$],
      [$2 sqrt(x)$],
      [$-1/x$],
    ),
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [计算下列不定积分：],
    parts: (
      [$integral (dif x)/((3x - 2)^2)$；],
      [$integral x/sqrt(1 + x^2) dif x$；],
      [$integral (3x^3)/(1 - x^4) dif x$；],
      [$integral (dif x)/(x ln x ln ln x)$；],
      [$integral cos^3 x dif x$；],
      [$integral (dif x)/(e^x + e^(-x))$；],
      [$integral e^(arctan x)/(1 + x^2) dif x$。],
    ),
    solution-parts: (
      [
        令 $u = 3x - 2$，则 $dif u = 3 dif x$，
        原式 $= 1/3 integral u^(-2) dif u = -1/(3u) + C = -1/(3(3x-2)) + C$。
      ],
      [
        令 $u = 1 + x^2$，则 $dif u = 2x dif x$，
        原式 $= 1/2 integral u^(-1/2) dif u = sqrt(u) + C = sqrt(1 + x^2) + C$。
      ],
      [
        令 $u = 1 - x^4$，则 $dif u = -4x^3 dif x$，
        原式 $= -3/4 integral dif u/u = -3/4 ln|1 - x^4| + C$。
      ],
      [
        令 $u = ln x$，再令 $v = ln u = ln ln x$，得
        原式 $= integral dif v/v = ln|ln ln x| + C$。
      ],
      [
        $cos^3 x = cos x (1 - sin^2 x)$，令 $u = sin x$，
        原式 $= integral (1 - u^2) dif u = sin x - (sin^3 x)/3 + C$。
      ],
      [
        分子分母同乘 $e^x$：令 $u = e^x$，
        原式 $= integral dif u/(u^2 + 1) = arctan e^x + C$。
      ],
      [
        令 $u = arctan x$，则 $dif u = dif x/(1+x^2)$，
        原式 $= integral e^u dif u = e^(arctan x) + C$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [（附加题）计算下列不定积分：],
    parts: (
      [$integral x/(x^2 + 2x + 2) dif x$；],
      [$integral (cos x)/(sin x + cos x) dif x$。],
    ),
    solution-parts: (
      [
        $x^2 + 2x + 2 = (x+1)^2 + 1$，且 $x = (x+1) - 1$。
        原式 $= 1/2 integral (2x+2)/(x^2+2x+2) dif x - integral 1/((x+1)^2+1) dif x$
        $= 1/2 ln(x^2 + 2x + 2) - arctan(x+1) + C$。
      ],
      [
        设 $I_1 = integral (cos x)/(sin x + cos x) dif x$，$I_2 = integral (sin x)/(sin x + cos x) dif x$。
        则 $I_1 + I_2 = x + C_1$，$I_1 - I_2 = ln|sin x + cos x| + C_2$，
        故 $I_1 = 1/2 [x + ln|sin x + cos x|] + C$。
      ],
    ),
  ),
)

#book-section(section-title, problems)
