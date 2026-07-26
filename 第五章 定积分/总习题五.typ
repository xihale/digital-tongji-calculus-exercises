// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [总习题五]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [
      设 $I = integral_a^b f(x) dif x$，根据定积分的几何意义可知
    ],
    options: (
      [$I$ 是由曲线 $y = f(x)$ 及直线 $x = a$、$x = b$ 与 $x$ 轴所围成图形的面积，所以 $I > 0$],
      [若 $I = 0$，则上述图形面积为零，从而图形的“高” $f(x) = 0$],
      [$I$ 是曲线 $y = f(x)$ 及直线 $x = a$、$x = b$ 与 $x$ 轴之间各部分面积的代数和],
      [$I$ 是由曲线 $y = |f(x)|$ 及直线 $x = a$、$x = b$ 与 $x$ 轴所围成图形的面积],
    ),
    answer: [C],
    solution: [
      定积分表示曲线与 $x$ 轴之间各部分面积的代数和（上方为正、下方为负）。
      A 忽略了 $f < 0$ 时积分为负；B 中 $I = 0$ 仅说明正负抵消；
      D 是 $integral_a^b |f|$ 的意义。
    ],
  ),
  (
    kind: "choice",
    stem: [函数 $f(x)$ 在区间 $[a, b]$ 上连续是 $f(x)$ 在 $[a, b]$ 上可积的],
    options: ([必要条件], [充分条件], [充要条件], [无关条件]),
    answer: [B],
    solution: [
      连续 $arrow.r.double$ 可积，故充分；
      可积不必连续（如有限个间断点的有界函数），故非必要。
    ],
  ),
  (
    kind: "choice",
    stem: [
      若 $f(x) = cases(x & x >= 0, e^x & x < 0)$，则
      $integral_(-1)^2 f(x) dif x =$
    ],
    options: (
      [$3 - e^(-1)$],
      [$3 + e^(-1)$],
      [$3 - e$],
      [$3 + e$],
    ),
    answer: [A],
    solution: [
      $integral_(-1)^0 e^x dif x + integral_0^2 x dif x
      = (1 - e^(-1)) + 2 = 3 - e^(-1)$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $f$ 连续，$x > 0$，且 $integral_1^(x^2) f(t) dif t = x^2 (x - 1)$，
      则 $f(2) =$
    ],
    options: (
      [$(3 sqrt(2))/2 - 1$],
      [$2 sqrt(2) - 12$],
      [$12 - 2 sqrt(2)$],
      [$1 - (3 sqrt(2))/2$],
    ),
    answer: [A],
    solution: [
      两边对 $x$ 求导：$f(x^2) · 2x = 3x^2 - 2x$，
      故 $f(x^2) = (3x - 2)/2$（$x > 0$）。
      令 $x^2 = 2$，即 $x = sqrt(2)$，得
      $f(2) = (3 sqrt(2) - 2)/2 = (3 sqrt(2))/2 - 1$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      若 $f(x) = cases(
        (integral_0^x (e^(t^2) - 1) dif t)/x^2 & x != 0,
        a & x = 0,
      )$
      且 $f$ 在 $x = 0$ 处连续，则必有
    ],
    options: ([$a = 1$], [$a = 2$], [$a = 0$], [$a = -1$]),
    answer: [C],
    solution: [
      $lim_(x -> 0) f(x)$ 为 $0/0$ 型，洛必达两次：
      $lim_(x -> 0) (e^(x^2) - 1)/(2x)
      = lim_(x -> 0) (2x e^(x^2))/2 = 0$，
      故 $a = 0$。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [$(dif)/(dif x) integral_a^b arctan x dif x =$],
    answer: [$0$],
    solution: [
      上下限均为常数，定积分是常数，导数为 $0$。
    ],
  ),
  (
    kind: "blank",
    stem: [$integral_(-pi/2)^(pi/2) sqrt(1 - cos^2 x) dif x =$],
    answer: [$2$],
    solution: [
      $sqrt(1 - cos^2 x) = |sin x|$，
      $2 integral_0^(pi/2) sin x dif x = 2$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      由区间 $[a, b]$ 上连续曲线 $y = f(x)$、直线 $x = a$、$x = b$（$a < b$）
      和 $x$ 轴所围成图形的面积为 $S =$
    ],
    answer: [$integral_a^b |f(x)| dif x$],
    solution: [
      面积取绝对值，故 $S = integral_a^b |f(x)| dif x$。
    ],
  ),
  (
    kind: "blank",
    stem: [$integral_(-1)^0 |3x + 1| dif x =$],
    answer: [$5/6$],
    solution: [
      变号点 $x = -1/3$。
      $integral_(-1)^(-1/3) (-3x - 1) dif x + integral_(-1/3)^0 (3x + 1) dif x
      = 2/3 + 1/6 = 5/6$。
    ],
  ),
  (
    kind: "blank",
    stem: [已知 $x e^x$ 为 $f(x)$ 的一个原函数，则 $integral_0^1 x f'(x) dif x =$],
    answer: [$e$],
    solution: [
      $f(x) = (x e^x)' = e^x (1 + x)$。
      分部：$integral_0^1 x f' = [x f]_0^1 - integral_0^1 f
      = f(1) - integral_0^1 e^x (1 + x) dif x
      = 2e - [(1 + x)e^x]_0^1 + integral_0^1 e^x dif x
      = 2e - (2e - 1) + (e - 1) = e$。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [计算下列定积分：],
    parts: (
      [$integral_1^e (ln x)/x dif x$；],
      [$lim_(x -> 0) (integral_0^x 2 t cos t dif t)/(1 - cos x)$；],
      [$integral_(-1)^1 x/(sqrt(5 - 4x)) dif x$；],
      [$integral_1^2 x log_2 x dif x$；],
      [$integral_1^e sin(ln x) dif x$。],
    ),
    solution-parts: (
      [
        令 $u = ln x$：$integral_0^1 u dif u = 1/2$。
      ],
      [
        洛必达：$lim_(x -> 0) (2x cos x)/sin x
        = lim_(x -> 0) 2 cos x · (x / sin x) = 2$。
      ],
      [
        令 $u = 5 - 4x$，$x = (5 - u)/4$，$x: -1 -> 1$ 对应 $u: 9 -> 1$，
        原式 $= (1/16) integral_1^9 (5 u^(-1/2) - u^(1/2)) dif u
        = (1/16)[10 sqrt(u) - (2/3) u^(3/2)]_1^9
        = (1/16)[(30 - 18) - (10 - 2/3)] = (1/16)(8/3) = 1/6$。
      ],
      [
        分部：$u = log_2 x = ln x / ln 2$，$dif v = x dif x$，
        原式 $= [x^2/2 · log_2 x]_1^2 - (1/(2 ln 2)) integral_1^2 x dif x
        = 2 - (1/(2 ln 2)) · (3/2) = 2 - 3/(4 ln 2)$。
      ],
      [
        令 $t = ln x$，$x = e^t$，$dif x = e^t dif t$，$t: 0 -> 1$，
        原式 $= integral_0^1 e^t sin t dif t$。
        由 $integral e^t sin t dif t = (e^t/2)(sin t - cos t)$，得
        $[(e^t/2)(sin t - cos t)]_0^1
        = (e/2)(sin 1 - cos 1) + 1/2$。
      ],
    ),
  ),

  // ===== 四、证明题 =====
  (
    kind: "proof",
    stem: [
      设 $f''(x)$ 在 $[a, b]$ 上连续，证明：
      $integral_a^b x f''(x) dif x = [b f'(b) - f(b)] - [a f'(a) - f(a)]$。
    ],
    solution: [
      分部：取 $u = x$，$dif v = f'' dif x$，则 $v = f'$，
      $integral_a^b x f'' = [x f']_a^b - integral_a^b f'
      = b f'(b) - a f'(a) - (f(b) - f(a))
      = [b f'(b) - f(b)] - [a f'(a) - f(a)]$。
    ],
  ),
)

#book-section(section-title, problems)
