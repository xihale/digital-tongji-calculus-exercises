// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [总习题四]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [若函数 $f(x)$ 在区间 $(a, b)$ 内连续，则在 $(a, b)$ 内 $f(x)$],
    options: ([必有导函数], [必有原函数], [必有界], [必有极限]),
    answer: [B],
    solution: [连续函数必有原函数（不定积分存在定理）。],
  ),
  (
    kind: "choice",
    stem: [若 $F'(x) = f(x)$，$phi'(x) = f(x)$，则 $integral f(x) dif x =$],
    options: (
      [$F(x)$],
      [$phi(x)$],
      [$phi(x) + C$],
      [$F(x) + phi(x) + C$],
    ),
    answer: [C],
    solution: [
      不定积分是全部原函数的集合；$F$ 与 $phi$ 仅相差常数，
      故 $integral f(x) dif x = phi(x) + C$（亦等于 $F(x) + C$）。
    ],
  ),
  (
    kind: "choice",
    stem: [下列式子中正确的是],
    options: (
      [$dif[integral f(x) dif x] = f(x)$],
      [$(dif)/(dif x)[integral f(x) dif x] = f(x) dif x$],
      [$integral dif f(x) = f(x)$],
      [$integral dif f(x) = f(x) + C$],
    ),
    answer: [D],
    solution: [
      $integral dif f(x) = integral f'(x) dif x = f(x) + C$，故 D 正确。
      A 应有 $dif x$；B 右边不应再乘 $dif x$；C 漏掉 $+C$。
    ],
  ),
  (
    kind: "choice",
    stem: [设函数 $f(x) = e^(-x)$，则 $integral (f(ln x))/x dif x =$],
    options: (
      [$1/x + C$],
      [$ln x + C$],
      [$-1/x + C$],
      [$-ln x + C$],
    ),
    answer: [C],
    solution: [
      $f(ln x) = e^(-ln x) = 1/x$，
      原式 $= integral (1/x)/x dif x = integral x^(-2) dif x = -1/x + C$。
    ],
  ),
  (
    kind: "choice",
    stem: [$integral (dif x)/sqrt(x(1 - x)) =$],
    options: (
      [$1/2 arcsin sqrt(x) + C$],
      [$arcsin sqrt(x) + C$],
      [$2 arcsin(2x - 1) + C$],
      [$arcsin(2x - 1) + C$],
    ),
    answer: [D],
    solution: [
      $x(1-x) = 1/4 - (x-1/2)^2$。令 $t = 2x - 1$，则
      原式 $= integral dif t/sqrt(1-t^2) = arcsin(2x-1) + C$。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [$integral (1 - sin^2(x/2)) dif x =$],
    answer: [$x/2 + (sin x)/2 + C$],
    solution: [
      $1 - sin^2(x/2) = cos^2(x/2) = (1 + cos x)/2$，
      原式 $= integral (1 + cos x)/2 dif x = x/2 + (sin x)/2 + C$。
    ],
  ),
  (
    kind: "blank",
    stem: [若 $e^x$ 是函数 $f(x)$ 的一个原函数，则 $integral x^2 f(ln x) dif x =$],
    answer: [$x^4/4 + C$],
    solution: [
      $f(x) = (e^x)' = e^x$，故 $f(ln x) = x$，
      原式 $= integral x^3 dif x = x^4/4 + C$。
    ],
  ),
  (
    kind: "blank",
    stem: [设 $F'(x) = f(x)$，则 $integral f(a x + b) dif x =$],
    answer: [$1/a F(a x + b) + C$],
    solution: [
      令 $u = a x + b$，则 $dif x = dif u/a$，
      原式 $= 1/a integral f(u) dif u = 1/a F(a x + b) + C$（$a != 0$）。
    ],
  ),
  (
    kind: "blank",
    stem: [设 $integral x f(x) dif x = arcsin x + C$，则 $integral (dif x)/(f(x)) =$],
    answer: [$-1/3 (1 - x^2)^(3/2) + C$],
    solution: [
      求导得 $x f(x) = 1/sqrt(1-x^2)$，故 $f(x) = 1/(x sqrt(1-x^2))$。
      从而 $integral dif x/f(x) = integral x sqrt(1-x^2) dif x$。
      令 $u = 1 - x^2$，得 $-1/3 (1-x^2)^(3/2) + C$。
    ],
  ),
  (
    kind: "blank",
    stem: [若 $integral x f(x) dif x = x sin x - integral sin x dif x$，则 $f(x) =$],
    answer: [$cos x$],
    solution: [
      两边求导：$x f(x) = sin x + x cos x - sin x = x cos x$，
      故 $f(x) = cos x$。
      （亦可理解为分部积分中取 $v = sin x$，从而 $f = v' = cos x$。）
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [计算下列不定积分：],
    parts: (
      [$integral cos sqrt(x) dif x$；],
      [$integral (sin 2x)/(cos^4 x - sin^4 x) dif x$；],
      [$integral (dif x)/(cos^2 x root(4, tan x))$；],
      [$integral (x ln(1 + x^2))/(1 + x^2) dif x$。],
    ),
    solution-parts: (
      [
        令 $u = sqrt(x)$，原式 $= 2 integral u cos u dif u = 2(u sin u + cos u) + C$
        $= 2 sqrt(x) sin sqrt(x) + 2 cos sqrt(x) + C$。
      ],
      [
        $cos^4 x - sin^4 x = cos 2x$，原式 $= integral tan 2x dif x = -1/2 ln|cos 2x| + C$。
      ],
      [
        令 $u = tan x$，则 $dif u = sec^2 x dif x$，
        原式 $= integral u^(-1/4) dif u = 4/3 u^(3/4) + C = 4/3 (tan x)^(3/4) + C$。
      ],
      [
        令 $u = 1 + x^2$，原式 $= 1/2 integral (ln u)/u dif u = 1/4 ln^2(1+x^2) + C$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [设函数 $f(sin^2 x) = x/(sin x)$，求 $integral sqrt(x)/sqrt(1 - x) f(x) dif x$],
    solution: [
      由 $f(sin^2 x) = x/(sin x)$ 得 $f(u) = (arcsin sqrt(u))/sqrt(u)$。
      故原式 $= integral (arcsin sqrt(x))/sqrt(1-x) dif x$。
      令 $v = sqrt(x)$，再令 $w = arcsin v$，得
      $2 integral w sin w dif w = 2(-w cos w + sin w) + C$
      $= 2[-arcsin sqrt(x) · sqrt(1-x) + sqrt(x)] + C$。
    ],
  ),
  (
    kind: "compute",
    stem: [已知函数 $f(x)$ 的一个原函数为 $ln^2 x$，求 $integral x f'(x) dif x$],
    solution: [
      $f(x) = (ln^2 x)' = (2 ln x)/x$。
      分部积分：$integral x f'(x) dif x = x f(x) - integral f(x) dif x$
      $= 2 ln x - ln^2 x + C$。
    ],
  ),
)

#book-section(section-title, problems)
