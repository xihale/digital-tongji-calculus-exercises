// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第三节 定积分的换元积分法和分部积分法]

#let problems = (
  // ===== 一、判断题 =====
  (
    kind: "judge",
    stem: [
      $integral_1^2 (dif x)/((11 + 5x)^3)
      =^(u = 11 + 5x) (1/5) integral_1^2 (dif u)/(u^3)
      = (1/5) (-1/2 u^(-2)|_1^2) = 3/40$
    ],
    answer: [×],
    solution: [
      换元后上下限须随之改变。令 $u = 11 + 5x$，则 $dif u = 5 dif x$；
      $x = 1$ 时 $u = 16$，$x = 2$ 时 $u = 21$。
      正确为 $(1/5) integral_16^21 u^(-3) dif u
      = (1/5)[-1/(2 u^2)]_16^21
      = (1/10)(1/256 - 1/441)$。
    ],
  ),
  (
    kind: "judge",
    stem: [
      $integral_(-pi/2)^(pi/2) x^2 sqrt(1 - cos^2 x) dif x
      = integral_(-pi/2)^(pi/2) x^2 sin x dif x$，
      又因 $x^2 sin x$ 为奇函数，故该积分等于 $0$
    ],
    answer: [×],
    solution: [
      $sqrt(1 - cos^2 x) = |sin x|$，而非 $sin x$。
      在 $[-pi/2, pi/2]$ 上 $x^2 |sin x|$ 为偶函数且非恒为零，积分 $> 0$。
    ],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [计算下列定积分：],
    parts: (
      [$integral_(-sqrt(2))^(sqrt(2)) sqrt(2 - x^2) dif x$；],
      [$integral_(-pi/2)^(pi/2) cos x cos 2x dif x$；],
      [$integral_1^(sqrt(3)) (dif x)/(x^2 sqrt(1 + x^2))$；],
      [$integral_1^4 (dif x)/(1 + sqrt(x))$；],
      [$integral_1^(e^2) (dif x)/(x sqrt(1 + ln x))$；],
      [$integral_(pi/4)^(pi/3) x/(sin^2 x) dif x$；],
      [$integral_0^1 x arctan x dif x$；],
      [$integral_1^4 (ln x)/(sqrt(x)) dif x$。],
    ),
    solution-parts: (
      [
        令 $x = sqrt(2) sin t$，$dif x = sqrt(2) cos t dif t$，
        $x: -sqrt(2) -> sqrt(2)$ 对应 $t: -pi/2 -> pi/2$。
        $sqrt(2 - x^2) = sqrt(2) cos t$，
        原式 $= 2 integral_(-pi/2)^(pi/2) cos^2 t dif t
        = integral_(-pi/2)^(pi/2) (1 + cos 2t) dif t = pi$。
      ],
      [
        $cos x cos 2x = (1/2)(cos 3x + cos x)$，
        原式 $= (1/2)[sin 3x/3 + sin x]_(-pi/2)^(pi/2) = 2/3$。
      ],
      [
        令 $x = tan t$，$t: pi/4 -> pi/3$，
        原式 $= integral_(pi/4)^(pi/3) cos t / sin^2 t dif t$。
        再令 $u = sin t$：$[-1/u]_(sqrt(2)/2)^(sqrt(3)/2)
        = -2/sqrt(3) + sqrt(2) = sqrt(2) - (2 sqrt(3))/3$。
      ],
      [
        令 $u = sqrt(x)$，$x: 1 -> 4$ 对应 $u: 1 -> 2$，
        原式 $= 2 integral_1^2 u/(1 + u) dif u
        = 2 integral_1^2 (1 - 1/(1 + u)) dif u
        = 2[u - ln(1 + u)]_1^2 = 2(1 + ln 2/3)$。
      ],
      [
        令 $t = ln x$，$x: 1 -> e^2$ 对应 $t: 0 -> 2$，
        原式 $= integral_0^2 (dif t)/sqrt(1 + t) = [2 sqrt(1 + t)]_0^2
        = 2 sqrt(3) - 2$。
      ],
      [
        分部：$u = x$，$dif v = csc^2 x dif x$，$v = -cot x$，
        原式 $= [-x cot x]_(pi/4)^(pi/3) + integral_(pi/4)^(pi/3) cot x dif x
        = [-x cot x + ln|sin x|]_(pi/4)^(pi/3)
        = (-pi/(3 sqrt(3)) + ln(sqrt(3)/2)) - (-pi/4 + ln(sqrt(2)/2))
        = pi/4 - pi/(3 sqrt(3)) + (1/2) ln 3/2$。
      ],
      [
        分部：$u = arctan x$，$dif v = x dif x$，$v = x^2/2$，
        原式 $= [x^2/2 arctan x]_0^1 - (1/2) integral_0^1 x^2/(1 + x^2) dif x
        = pi/8 - (1/2) integral_0^1 (1 - 1/(1 + x^2)) dif x
        = pi/8 - (1/2)(1 - pi/4) = pi/4 - 1/2$。
      ],
      [
        令 $u = sqrt(x)$，则 $ln x = 2 ln u$，$dif x = 2 u dif u$，
        原式 $= 4 integral_1^2 ln u dif u = 4[u ln u - u]_1^2
        = 4(2 ln 2 - 2 + 1) = 8 ln 2 - 4$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [
      设函数 $f(x) = x - integral_0^pi f(x) cos x dif x$，求 $f(x)$
    ],
    solution: [
      设 $c = integral_0^pi f(x) cos x dif x$，则 $f(x) = x - c$。
      $c = integral_0^pi (x - c) cos x dif x
      = integral_0^pi x cos x dif x - c integral_0^pi cos x dif x$。
      后一积分 $= 0$；前一积分分部得 $[x sin x]_0^pi + integral_0^pi sin x dif x
      = [-cos x]_0^pi = -2$。故 $c = -2$，$f(x) = x + 2$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      （附加题）设 $f(x) = integral_1^(x^2) (sin t)/t dif t$，
      求 $integral_0^1 x f(x) dif x$
    ],
    solution: [
      $f'(x) = (sin x^2)/x^2 · 2x = 2 sin x^2/x$。
      分部：$integral_0^1 x f(x) dif x
      = [x^2/2 f(x)]_0^1 - (1/2) integral_0^1 x^2 f'(x) dif x
      = (1/2) f(1) - integral_0^1 x sin x^2 dif x$。
      $f(1) = 0$；令 $w = x^2$，得
      $integral_0^1 x sin x^2 dif x = (1/2) integral_0^1 sin w dif w
      = (1 - cos 1)/2$。
      故原式 $= -(1 - cos 1)/2 = (cos 1 - 1)/2$。
    ],
  ),
)

#book-section(section-title, problems)
