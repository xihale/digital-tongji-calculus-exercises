// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第九节 连续函数的运算与初等函数的连续性]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [
      设函数 $f(x) = (1 - 2e^(1/x))/(1 + e^(1/x)) arctan 1/x$，
      则 $x = 0$ 是 $f(x)$ 的
    ],
    options: ([可去间断点], [跳跃间断点], [无穷间断点], [振荡间断点]),
    answer: [B],
    solution: [
      $x -> 0^+$：$f(x) -> -2 dot pi/2 = -pi$；
      $x -> 0^-$：$f(x) -> 1 dot (-pi/2) = -pi/2$。
      左右极限存在但不等，为跳跃间断点。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设
      $f(x) = cases(x & x >= 0, 0 & x < 0)$，
      $g(x) = cases(x + 1 & x < 1, x & x >= 1)$，
      则 $f(x) + g(x)$ 的连续区间是
    ],
    options: (
      [$(-oo, +oo)$],
      [$(-oo, 0) union (0, +oo)$],
      [$(-oo, 1) union (1, +oo)$],
      [$(-oo, 0) union (0, 1) union (1, +oo)$],
    ),
    answer: [C],
    solution: [
      $f + g = cases(
        x + 1 & x < 0,
        2x + 1 & 0 <= x < 1,
        2x & x >= 1,
      )$。
      在 $x = 0$ 处连续，在 $x = 1$ 处左右极限 $3$ 与 $2$ 不等，故选 C。
    ],
  ),
  (
    kind: "choice",
    stem: [已知当 $x -> 0$ 时 $sqrt(1 - x) - sqrt(1 + x) ~ a x$，则常数 $a =$],
    options: ([1], [-1], [2], [-2]),
    answer: [B],
    solution: [
      有理化得 $(-2x)/(sqrt(1 - x) + sqrt(1 + x)) ~ -x$，故 $a = -1$。
    ],
  ),
  (
    kind: "choice",
    stem: [当 $x -> 1$ 时，$1 - x$ 是 $1 - root(3, x)$ 的],
    options: (
      [等价无穷小],
      [高阶无穷小],
      [同阶无穷小，但不是等价无穷小],
      [低阶无穷小],
    ),
    answer: [C],
    solution: [
      $lim_(x -> 1) (1 - root(3, x))/(1 - x) = 1/3 != 0, 1$，
      故同阶但非等价。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [
      设
      $f(x) = cases(
        e^x & x < 0,
        a + x & x >= 0,
      )$
      在点 $x = 0$ 处连续，则 $a =$
    ],
    answer: [$1$],
    solution: [
      左极限 $e^0 = 1$，右极限与函数值均为 $a$，故 $a = 1$。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [求下列极限：],
    parts: (
      [$lim_(x -> 1) (sqrt(5x - 4) - sqrt(x))/(x - 1)$；],
      [$lim_(x -> a) (sin x - sin a)/(x - a)$；],
      [$lim_(x -> +oo) (sqrt(x^2 + x) - sqrt(x^2 - x))$；],
      [$lim_(x -> 0) ((1 - x^2/2)^(2/3) - 1)/(x ln(1 + x))$；],
      [$lim_(x -> 0) (1 + 3 tan^2 x)^(cot^2 x)$；],
      [$lim_(x -> +oo) ((3 + x)/(6 + x))^((x - 1)/2)$；],
      [
        $lim_(x -> 0) (e^(3x) - e^(2x) - e^x + 1)/(root(3, (1 - x)(1 + x)) - 1)$。
      ],
    ),
    solution-parts: (
      [
        有理化得 $4/(sqrt(5x - 4) + sqrt(x)) -> 2$。
      ],
      [
        和差化积：$= lim cos((x + a)/2) dot (sin((x - a)/2))/((x - a)/2) = cos a$。
      ],
      [
        有理化后分子分母同除以 $x$，得 $2/(sqrt(1 + 1/x) + sqrt(1 - 1/x)) = 1$。
      ],
      [
        $(1 - x^2/2)^(2/3) - 1 ~ (2/3)(-x^2/2) = -x^2/3$，$ln(1 + x) ~ x$，
        故极限为 $-1/3$。
      ],
      [
        $= e^(lim 3 tan^2 x cot^2 x) = e^3$。
      ],
      [
        $= lim (1 - 3/(6 + x))^((x - 1)/2) = e^(-3/2)$。
      ],
      [
        分子 $= (e^(2x) - 1)(e^x - 1) ~ 2x^2$，
        分母 $root(3, 1 - x^2) - 1 ~ -x^2/3$，
        故极限为 $-6$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [
      设函数
      $f(x) = cases(
        (x^4 + a x + b)/((x - 1)(x + 2)) & x != 1, x != -2,
        2 & x = 1,
      )$
      在点 $x = 1$ 处连续，试求 $a$，$b$ 的值。
    ],
    answer: [$a = 2$，$b = -3$],
    solution: [
      连续要求 $lim_(x -> 1) f(x) = 2$，故分子在 $x = 1$ 处为 $0$：$1 + a + b = 0$。
      设 $x^4 + a x + b = (x - 1)(x^3 + x^2 + x + c)$，
      比较得 $a = c - 1$，$b = -c$。
      约去后 $lim = (1 + 1 + 1 + c)/3 = 2$，得 $c = 3$，
      故 $a = 2$，$b = -3$。
    ],
  ),

  // ===== 四、证明题 =====
  (
    kind: "proof",
    stem: [
      设 $f(x)$ 与 $g(x)$ 在点 $x_0$ 处连续，证明：
      $phi(x) = max{f(x), g(x)}$，$psi(x) = min{f(x), g(x)}$
      在点 $x_0$ 处也连续。
    ],
    solution: [
      $max{f, g} = (f + g + |f - g|)/2$，
      $min{f, g} = (f + g - |f - g|)/2$。
      连续函数的和、差、绝对值仍连续，故得证。
    ],
  ),
)

#book-section(section-title, problems)
