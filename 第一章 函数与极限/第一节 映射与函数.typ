// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第一节 映射与函数]

#let problems = (
  // ===== 一、判断题 =====
  (
    kind: "judge",
    stem: [$f(x) = x$，$g(x) = sqrt(x^2)$ 是两个相同的函数],
    answer: [×],
    solution: [
      $f(x) = x$ 与 $g(x) = sqrt(x^2) = |x|$ 定义域均为 $RR$，
      但对应关系不同，故不是相同的函数。
    ],
  ),
  (
    kind: "judge",
    stem: [$f(x) = 1$，$g(x) = sec^2 x - tan^2 x$ 是两个相同的函数],
    answer: [×],
    solution: [
      虽有 $sec^2 x - tan^2 x = 1$，但 $f$ 定义域为 $RR$，
      而 $g$ 的定义域为 ${x | x != k pi + pi/2,\, k in ZZ}$，定义域不同。
    ],
  ),

  // ===== 二、选择题 =====
  (
    kind: "choice",
    stem: [
      设函数
      $f(x) = cases(
        -sin^3 x & -pi <= x <= 0,
        sin^3 x & 0 < x <= pi,
      )$，
      则此函数是
    ],
    options: ([周期函数], [单调增函数], [奇函数], [偶函数]),
    answer: [C],
    solution: [
      当 $x in (0, pi]$ 时 $-x in [-pi, 0)$，
      $f(-x) = -sin^3(-x) = sin^3 x = -f(x)$；
      当 $x in [-pi, 0)$ 时同理 $f(-x) = -f(x)$。故 $f$ 为奇函数。
    ],
  ),
  (
    kind: "choice",
    stem: [设函数 $f(x) = e^x$，$g(x) = sin^2 x$，则 $f[g(x)] =$],
    options: (
      [$e^(sin^2 x)$],
      [$sin^2 e^x$],
      [$e^x sin^2 x$],
      [$(sin^2 x)^(e^(x^2))$],
    ),
    answer: [A],
    solution: [复合得 $f[g(x)] = f(sin^2 x) = e^(sin^2 x)$。],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [求下列函数的自然定义域：],
    parts: (
      [$y = arctan(x - 3)$；],
      [$y = sqrt(3 - x) + arctan(1/x)$。],
    ),
    solution-parts: (
      [$arctan$ 的定义域为 $RR$，故定义域为 $RR$。],
      [需 $3 - x >= 0$ 且 $x != 0$，故定义域为 $(-oo, 0) union (0, 3]$。],
    ),
  ),
  (
    kind: "compute",
    stem: [设函数 $f(x)$ 的定义域为 $D = [0, 1]$，求下列函数的定义域：],
    parts: (
      [$f(x^2)$；],
      [$f(sin x)$；],
      [$f(x + a) + f(x - a)$（$a > 0$）。],
    ),
    solution-parts: (
      [需 $0 <= x^2 <= 1$，即 $x in [-1, 1]$。],
      [需 $0 <= sin x <= 1$，即 $x in union_(k in ZZ)[2k pi, (2k+1)pi]$。],
      [
        需 $0 <= x + a <= 1$ 且 $0 <= x - a <= 1$，
        当 $0 < a <= 1/2$ 时定义域为 $[a, 1 - a]$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [下列函数中哪些是偶函数，哪些是奇函数，哪些既非偶函数又非奇函数？],
    parts: (
      [$y = sin x - cos x + 1$；],
      [$y = (a^x + a^(-x))/2$。],
    ),
    solution-parts: (
      [
        $f(-x) = -sin x - cos x + 1 != plus.minus f(x)$，
        故既非偶函数又非奇函数。
      ],
      [
        $f(-x) = (a^(-x) + a^x)/2 = f(x)$，故为偶函数。
      ],
    ),
  ),

  // ===== 四、证明题 =====
  (
    kind: "proof",
    stem: [设所考虑的函数都定义在区间 $(-l, l)$ 内，证明：],
    parts: (
      [两个偶函数的和是偶函数，两个奇函数的和是奇函数；],
      [两个偶函数的乘积是偶函数，两个奇函数的乘积是偶函数，偶函数与奇函数的乘积是奇函数。],
    ),
    solution-parts: (
      [
        设 $f$、$g$ 均为偶函数，令 $h = f + g$，则
        $h(-x) = f(-x) + g(-x) = f(x) + g(x) = h(x)$，故 $h$ 为偶。
        若 $f$、$g$ 均为奇，则 $h(-x) = -f(x) - g(x) = -h(x)$，故 $h$ 为奇。
      ],
      [
        令 $h = f g$。若 $f$、$g$ 均偶，则 $h(-x) = f(x) g(x) = h(x)$，为偶；
        若均奇，则 $h(-x) = (-f(x))(-g(x)) = h(x)$，为偶；
        若 $f$ 偶、$g$ 奇，则 $h(-x) = f(x)(-g(x)) = -h(x)$，为奇。
      ],
    ),
  ),
)

#book-section(section-title, problems)
