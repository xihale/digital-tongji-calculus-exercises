// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第六节 极限存在准则 两个重要极限]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [$lim_(x -> 0) (sin x)/(x cos x) =$],
    options: ([1], [$oo$], [不存在], [0]),
    answer: [A],
    solution: [
      $= lim_(x -> 0) (sin x)/x dot 1/cos x = 1 dot 1 = 1$。
    ],
  ),
  (
    kind: "choice",
    stem: [$lim_(x -> oo) (1 - 1/x)^(2x) =$],
    options: ([$2e$], [$e^(-2)$], [$e^2$], [$2/e$]),
    answer: [B],
    solution: [
      $= lim_(x -> oo) [(1 - 1/x)^(-x)]^(-2) = e^(-2)$。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [设 $lim_(x -> oo) (1 + k/x)^x = e^3$，则 $k =$],
    answer: [$3$],
    solution: [
      由 $lim_(x -> oo) (1 + k/x)^x = e^k$，得 $e^k = e^3$，故 $k = 3$。
    ],
  ),
  (
    kind: "blank",
    stem: [设 $lim_(x -> oo) ((x + 2a)/(x - a))^x = 8$，则 $a =$],
    answer: [$ln 2$],
    solution: [
      $((x + 2a)/(x - a))^x = (1 + 3a/(x - a))^x$。
      令 $t = x - a$，则 $x = t + a$，
      $lim_(t -> oo) (1 + 3a/t)^(t + a) = e^(3a)$。
      由 $e^(3a) = 8 = e^(3 ln 2)$ 得 $a = ln 2$。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [计算下列极限：],
    parts: (
      [$lim_(x -> 0) x cot x$；],
      [$lim_(x -> 0) (1 - cos 2x)/(x sin x)$；],
      [$lim_(n -> oo) 2^n sin(x/2^n)$（$x$ 为非零常数）；],
      [$lim_(x -> 0) (1 - x)^(1/x)$；],
      [$lim_(x -> 0) (1 + x)^(1/x)$；],
      [$lim_(x -> oo) (1 - 1/x)^(k x)$（$k in NN_+$）。],
    ),
    solution-parts: (
      [
        $= lim_(x -> 0) x cos x / sin x = lim_(x -> 0) (x/sin x) cos x = 1$。
      ],
      [
        $1 - cos 2x = 2 sin^2 x$，故
        $= lim_(x -> 0) (2 sin x)/x = 2$。
      ],
      [
        令 $t = x/2^n -> 0$，则 $= lim_(t -> 0) (x/t) sin t = x$。
      ],
      [
        $= lim_(x -> 0) [(1 + (-x))^(1/(-x))]^(-1) = e^(-1) = 1/e$。
      ],
      [重要极限：$lim_(x -> 0) (1 + x)^(1/x) = e$。],
      [
        $= lim_(x -> oo) [(1 - 1/x)^(-x)]^(-k) = e^(-k)$。
      ],
    ),
  ),

  // ===== 四、证明题 =====
  (
    kind: "proof",
    stem: [利用极限存在准则，证明：],
    parts: (
      [
        $lim_(n -> oo) n(1/(n^2 + pi) + 1/(n^2 + 2pi) + dots + 1/(n^2 + n pi)) = 1$；
      ],
      [
        数列 $sqrt(2)$，$sqrt(2 + sqrt(2))$，$sqrt(2 + sqrt(2 + sqrt(2)))$，$dots$ 的极限存在；
      ],
      [$lim_(x -> 0) root(n, 1 + x) = 1$（$n in NN_+$，$n >= 2$）。],
    ),
    solution-parts: (
      [
        设 $S_n = n sum_(k = 1)^n 1/(n^2 + k pi)$。
        由 $n^2/(n^2 + n pi) <= S_n <= n^2/(n^2 + pi)$，
        两端极限均为 $1$，由夹逼准则 $S_n -> 1$。
      ],
      [
        设 $a_1 = sqrt(2)$，$a_(n+1) = sqrt(2 + a_n)$。
        归纳得 $a_n < 2$ 且 $a_(n+1) > a_n$，
        故单调有界，极限存在。
      ],
      [
        当 $0 < x$ 时 $0 < (1 + x)^(1/n) - 1 < x$；
        当 $-1 < x < 0$ 时令 $x = -y$，有 $-y < (1 - y)^(1/n) - 1 < 0$。
        由夹逼准则得极限为 $1$。
      ],
    ),
  ),
)

#book-section(section-title, problems)
