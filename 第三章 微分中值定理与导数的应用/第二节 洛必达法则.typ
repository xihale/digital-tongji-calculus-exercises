// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第二节 洛必达法则]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [下列式子中运用洛必达法则正确的是],
    options: (
      [$lim_(n->oo) root(n, n) = e^(lim_(n->oo)(ln n)/n) = e^(lim_(n->oo)(1/n)) = 1$],
      [$lim_(x->0)(x + sin x)/(x - sin x) = lim_(x->0)(1 + cos x)/(1 - cos x) = oo$],
      [$lim_(x->0)(x^2 sin 1/x)/(sin x) = lim_(x->0)(2x sin 1/x - cos 1/x)/(cos x)$ 不存在],
      [$lim_(x->0) x/e^x = lim_(x->0) 1/e^x = 1$],
    ),
    answer: [B],
    solution: [
      A：数列极限不宜直接套用洛必达，且未写出求导过程。
      B：属 $0/0$ 型，可洛必达；再令 $x -> 0$ 得 $2/0^+ = +oo$，运用正确。
      C：分子 $x^2 sin 1/x$ 的导数极限不存在，洛必达条件不满足。
      D：$x -> 0$ 时 $x/e^x -> 0/1 = 0$，非不定式，不可用洛必达，且结果错误。
    ],
  ),
  (
    kind: "choice",
    stem: [下列式子中，极限存在但不能用洛必达法则计算的是],
    options: (
      [$lim_(x->0) x^2 sin x$],
      [$lim_(x->0^+)(1/x)^(tan x)$],
      [$lim_(x->oo)(x + sin x)/x$],
      [$lim_(x->+oo) x^n/e^x$],
    ),
    answer: [C],
    solution: [
      C：$lim_(x->oo)(x + sin x)/x = lim(1 + (sin x)/x) = 1$，
      为代数变形，非 $0/0$ 或 $oo/oo$，且 $(1+cos x)/1$ 极限不存在，故不能用洛必达。
      其余可用洛必达或先化为不定式后再用。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [$lim_(x->pi/2)(cos 5x)/(cos 3x) =$],
    answer: [$-5/3$],
    solution: [
      $x -> pi/2$ 时属 $0/0$ 型。洛必达得
      $lim (-5 sin 5x)/(-3 sin 3x) = (5 sin(5pi/2))/(3 sin(3pi/2))$。
      因 $sin(5pi/2) = 1$、$sin(3pi/2) = -1$，故极限为 $-5/3$。
    ],
  ),
  (
    kind: "blank",
    stem: [$lim_(x->+oo) ln(1 + 1/x)/(arctan x) =$],
    answer: [$0$],
    solution: [
      分子 $ln(1+1/x) -> 0$，分母 $arctan x -> pi/2$，
      故极限为 $0/(pi/2) = 0$（非不定式）。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [用洛必达法则计算下列极限：],
    parts: (
      [$lim_(x->0)(e^x - e^(-x))/sin x$；],
      [$lim_(x->0^+) ln(tan 7x)/ln(tan 2x)$；],
      [$lim_(x->0) ln(1 + x^2)/(sec x - cos x)$；],
      [$lim_(x->0) x^2 e^(1/x^2)$；],
      [$lim_(x->1)(2/(x^2 - 1) - 1/(x - 1))$；],
      [$lim_(x->0^+) x^(sin x)$；],
      [$lim_(x->1^-)(1 - x) tan(pi x/2)$；],
      [$lim_(x->0^+)(1/x)^(tan x)$。],
    ),
    solution-parts: (
      [
        $0/0$ 型，洛必达：$lim (e^x + e^(-x))/cos x = 2/1 = 2$。
      ],
      [
        $oo/oo$ 型。洛必达并整理得
        $lim (7 sec^2 7x · tan 2x)/(2 sec^2 2x · tan 7x)$，
        再用 $tan u ~ u$（$u -> 0^+$）得极限 $1$。
      ],
      [
        分母 $sec x - cos x = sin^2 x / cos x$，故
        原式 $= lim cos x · ln(1+x^2)/sin^2 x$。
        由 $ln(1+x^2) ~ x^2$、$sin x ~ x$ 得极限 $1$。
      ],
      [
        令 $t = 1/x^2$（$x -> 0$ 时 $t -> +oo$），
        原式 $= lim_(t->+oo) e^t / t = +oo$。
      ],
      [
        通分：$lim (2(x-1) - (x^2-1))/((x^2-1)(x-1))
        = lim (-(x-1)^2)/((x-1)^2 (x+1)) = -1/2$。
      ],
      [
        令 $y = x^(sin x) = e^(sin x ln x)$。
        $lim sin x ln x = lim ln x / csc x$（洛必达）$= lim sin^2 x/(x cos x) = 0$，
        故极限为 $e^0 = 1$。
      ],
      [
        令 $u = 1 - x$（$x -> 1^-$ 时 $u -> 0^+$），
        原式 $= lim u cot(pi u/2) = lim u / tan(pi u/2) = 2/pi$。
      ],
      [
        令 $y = (1/x)^(tan x) = e^(-tan x ln x)$。
        $lim (-tan x ln x) = lim (-ln x / cot x)$（洛必达）$= lim sin^2 x / x = 0$，
        故极限为 $e^0 = 1$。
      ],
    ),
  ),
)

#book-section(section-title, problems)
