// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [总习题一]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [当 $x -> 0$ 时，$(1 - cos x)^2$ 是 $sin^2 x$ 的],
    options: (
      [高阶无穷小],
      [同阶无穷小，但不是等价无穷小],
      [低阶无穷小],
      [等价无穷小],
    ),
    answer: [A],
    solution: [
      $(1 - cos x)^2 ~ (x^2/2)^2 = x^4/4$，$sin^2 x ~ x^2$，
      $lim (x^4/4)/x^2 = 0$，故为高阶无穷小。
    ],
  ),
  (
    kind: "choice",
    stem: [设 $f(x)$ 为奇函数，则下列函数中也为奇函数的是],
    options: (
      [$f(x) + C$（$C$ 为非零常数）],
      [$f(-x) + C$（$C$ 为非零常数）],
      [$f(x) + f(-x)$],
      [$f[f(x)]$],
    ),
    answer: [D],
    solution: [
      A、B 平移后一般非奇；C 恒为 $0$（既奇又偶）。
      D：$f[f(-x)] = f[-f(x)] = -f[f(x)]$，为奇函数。
    ],
  ),
  (
    kind: "choice",
    stem: [设函数 $f(x) = x^2 + arctan(1/(x - 1))$，则 $x = 1$ 是 $f(x)$ 的],
    options: ([可去间断点], [跳跃间断点], [无穷间断点], [振荡间断点]),
    answer: [B],
    solution: [
      $x -> 1^+$：$f(x) -> 1 + pi/2$；
      $x -> 1^-$：$f(x) -> 1 - pi/2$。
      左右极限有限但不等，为跳跃间断点。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [数列 ${x_n}$ 有界是 ${x_n}$ 收敛的],
    answer: [必要],
    solution: [
      收敛数列必有界（必要性）；
      反例 $x_n = (-1)^n$ 有界但不收敛，故非充分。
    ],
  ),
  (
    kind: "blank",
    stem: [函数 $f(x) = (x - 2)/ln |x - 1|$ 的一个无穷间断点是],
    answer: [$x = 0$],
    solution: [
      在 $x = 0$ 处 $ln|x - 1| -> 0$ 而分子 $-> -2 != 0$，
      故 $f(x) -> oo$，为无穷间断点。
      （$x = 1$ 可去；$x = 2$ 可去。）
    ],
  ),
  (
    kind: "blank",
    stem: [
      设
      $f(x) = cases(
        sqrt(x^2 - 1) & x < -1,
        b & x = -1,
        a + arccos x & -1 < x <= 1,
      )$
      在点 $x = -1$ 处连续，则 $a$，$b$ 依次为
    ],
    answers: (
      [$-pi$],
      [$0$],
    ),
    solution: [
      左极限 $sqrt(1 - 1) = 0$，右极限 $a + arccos(-1) = a + pi$，
      $f(-1) = b$。由 $0 = a + pi = b$ 得 $a = -pi$，$b = 0$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      函数 $f(x) = (2^(1/x) - 1)/(2^(1/x) + 1)$ 的间断点及类型（第几类）依次为
    ],
    answers: (
      [$x = 0$],
      [$1$ 类],
    ),
    solution: [
      右极限 $1$，左极限 $-1$，均为有限，故 $x = 0$ 为第一类（跳跃）间断点。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [求下列极限：],
    parts: (
      [$lim_(x -> +oo) x(sqrt(x^2 + 1) - x)$；],
      [$lim_(x -> oo) ((2x + 3)/(2x + 1))^(x + 1)$；],
      [$lim_(x -> 0) (tan x - sin x)/x^3$。],
    ),
    solution-parts: (
      [
        有理化得 $x/(sqrt(x^2 + 1) + x) = 1/(sqrt(1 + 1/x^2) + 1) -> 1/2$。
      ],
      [
        $= lim (1 + 2/(2x + 1))^(x + 1)
        = e^(lim 2(x + 1)/(2x + 1)) = e$。
      ],
      [
        $tan x - sin x = sin x (1 - cos x)/cos x ~ x dot (x^2/2) = x^3/2$，
        故极限为 $1/2$。
      ],
    ),
  ),

  // ===== 四、证明题 =====
  (
    kind: "proof",
    stem: [根据函数极限的定义，证明：$lim_(x -> 3) (x^2 - x - 6)/(x - 3) = 5$。],
    solution: [
      $x != 3$ 时 $(x^2 - x - 6)/(x - 3) = x + 2$。
      对任意 $epsilon > 0$，取 $delta = epsilon$，
      当 $0 < |x - 3| < delta$ 时 $|(x + 2) - 5| = |x - 3| < epsilon$。
    ],
  ),
  (
    kind: "proof",
    stem: [
      证明：
      $lim_(n -> oo) (1/sqrt(n^2 + 1) + 1/sqrt(n^2 + 2) + dots + 1/sqrt(n^2 + n)) = 1$。
    ],
    solution: [
      设 $S_n = sum_(k = 1)^n 1/sqrt(n^2 + k)$。
      则 $n/sqrt(n^2 + n) <= S_n <= n/sqrt(n^2 + 1)$，
      两端极限均为 $1$，由夹逼准则 $S_n -> 1$。
    ],
  ),
  (
    kind: "proof",
    stem: [证明：方程 $sin x + x + 1 = 0$ 在开区间 $(-pi/2, pi/2)$ 内至少有一个根。],
    solution: [
      令 $f(x) = sin x + x + 1$，在 $[-pi/2, pi/2]$ 上连续。
      $f(-pi/2) = -pi/2 < 0$，$f(pi/2) = 2 + pi/2 > 0$，
      由零点存在定理，在 $(-pi/2, pi/2)$ 内至少有一根。
    ],
  ),
)

#book-section(section-title, problems)
