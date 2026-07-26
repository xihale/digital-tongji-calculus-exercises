// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第三节 分部积分法]

#let problems = (
  // ===== 一、简答题 =====
  (
    kind: "short",
    stem: [写出不定积分的分部积分公式及其推导过程（作业讲评时随机点名答辩）。],
    solution: [
      公式：$integral u dif v = u v - integral v dif u$。
      由 $(u v)' = u' v + u v'$，两边积分得
      $u v = integral u' v dif x + integral u v' dif x$，
      移项即 $integral u dif v = u v - integral v dif u$。
    ],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [计算下列不定积分：],
    parts: (
      [$integral x e^(-x) dif x$；],
      [$integral x cos(x/3) dif x$；],
      [$integral x^2 cos x dif x$；],
      [$integral x^3 ln^2 x dif x$；],
      [$integral arcsin^2 x dif x$；],
      [$integral cos(ln x) dif x$；],
      [$integral e^(sqrt(3x + 9)) dif x$。],
    ),
    solution-parts: (
      [
        令 $u = x$，$dif v = e^(-x) dif x$，则 $v = -e^(-x)$，
        原式 $= -x e^(-x) + integral e^(-x) dif x = -(x+1) e^(-x) + C$。
      ],
      [
        令 $u = x$，$dif v = cos(x/3) dif x$，则 $v = 3 sin(x/3)$，
        原式 $= 3x sin(x/3) + 9 cos(x/3) + C$。
      ],
      [
        两次分部积分得
        $integral x^2 cos x dif x = x^2 sin x + 2x cos x - 2 sin x + C$。
      ],
      [
        令 $u = ln^2 x$，$dif v = x^3 dif x$，再对 $integral x^3 ln x dif x$ 分部积分，得
        $x^4/4 ln^2 x - x^4/8 ln x + x^4/32 + C$。
      ],
      [
        令 $u = arcsin^2 x$，$dif v = dif x$，再对 $integral (x arcsin x)/sqrt(1-x^2) dif x$ 分部积分，得
        $x arcsin^2 x + 2 arcsin x sqrt(1-x^2) - 2x + C$。
      ],
      [
        两次分部积分并回代：
        $integral cos(ln x) dif x = x/2 (cos(ln x) + sin(ln x)) + C$。
      ],
      [
        令 $t = sqrt(3x+9)$，则 $dif x = (2t/3) dif t$，
        原式 $= 2/3 integral t e^t dif t = 2/3 (t-1) e^t + C$
        $= 2/3 (sqrt(3x+9) - 1) e^(sqrt(3x+9)) + C$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [设函数 $f(x)$ 的一个原函数是 $(sin x)/x$，求 $integral x f'(x) dif x$。],
    solution: [
      $f(x) = ((sin x)/x)' = (x cos x - sin x)/x^2$。
      分部积分：$integral x f'(x) dif x = x f(x) - integral f(x) dif x$
      $= cos x - (sin x)/x - (sin x)/x + C = cos x - 2 (sin x)/x + C$。
    ],
  ),
  (
    kind: "compute",
    stem: [（附加题）综合所学积分方法，计算下列不定积分：],
    parts: (
      [$integral ln(2 + sqrt(x))/(x + 2 sqrt(x)) dif x$；],
      [$integral (arctan e^x)/e^(2x) dif x$。],
    ),
    solution-parts: (
      [
        令 $u = sqrt(x)$，再令 $v = 2 + u$，得
        原式 $= 2 integral (ln v)/v dif v = ln^2 v + C = ln^2(2 + sqrt(x)) + C$。
      ],
      [
        令 $u = e^x$，原式 $= integral (arctan u)/u^3 dif u$。
        分部积分并用 $1/(u^2(1+u^2)) = 1/u^2 - 1/(1+u^2)$，得
        $-arctan u/(2u^2) - 1/(2u) - 1/2 arctan u + C$
        $= -arctan(e^x)/(2 e^(2x)) - 1/(2 e^x) - 1/2 arctan(e^x) + C$。
      ],
    ),
  ),
)

#book-section(section-title, problems)
