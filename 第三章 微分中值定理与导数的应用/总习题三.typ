// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [总习题三]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [设在区间 $[0, 1]$ 上 $f''(x) > 0$，则下列判断正确的是],
    options: (
      [$f'(1) > f'(0) > f(1) - f(0)$],
      [$f'(1) > f(1) - f(0) > f'(0)$],
      [$f(1) - f(0) > f'(1) > f'(0)$],
      [$f'(1) > f(0) - f(1) > f'(0)$],
    ),
    answer: [B],
    solution: [
      $f'' > 0 => f'$ 严格递增，故 $f'(0) < f'(1)$。
      由拉格朗日中值定理，存在 $xi in (0,1)$ 使 $f(1)-f(0) = f'(xi)$，
      从而 $f'(0) < f(1)-f(0) < f'(1)$，即 B。
    ],
  ),
  (
    kind: "choice",
    stem: [设 $f'(x_0) = f''(x_0) = 0$，$f'''(x_0) > 0$，则],
    options: (
      [$f'(x_0)$ 是 $f'(x)$ 的极大值],
      [$f(x_0)$ 是 $f(x)$ 的极大值],
      [$f(x_0)$ 是 $f(x)$ 的极小值],
      [$(x_0, f(x_0))$ 是曲线 $y = f(x)$ 的拐点],
    ),
    answer: [D],
    solution: [
      $f''(x_0) = 0$ 且 $f'''(x_0) > 0$，故 $f''$ 在 $x_0$ 处由负变正，
      凹凸性改变，$(x_0, f(x_0))$ 为拐点。
      又由泰勒展开 $f'(x) ≈ (f'''(x_0)/2)(x-x_0)^2 >= 0$，
      $f$ 在 $x_0$ 附近单调增，非极值点。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [
      函数 $y = ln sin x$ 在区间 $[pi/6, 5pi/6]$ 上满足罗尔中值定理的 $xi$ 值是
    ],
    answer: [$pi/2$],
    solution: [
      $y(pi/6) = y(5pi/6) = -ln 2$，$y' = cot x = 0 => x = pi/2 in (pi/6, 5pi/6)$。
    ],
  ),
  (
    kind: "blank",
    stem: [$lim_(x->0)(e^x + e^(-x) - 2)/x^2 =$],
    answer: [$1$],
    solution: [
      $e^x + e^(-x) - 2 = x^2 + o(x^2)$，故极限为 1。
      （或两次洛必达。）
    ],
  ),
  (
    kind: "blank",
    stem: [
      曲线 $y = x e^(-x)$ 的拐点是 $(2, 2e^(-2))$，凸区间是 $(-oo, 2)$，凹区间是
    ],
    answer: [$(2, +oo)$],
    solution: [
      $y'' = (x-2)e^(-x)$，$x > 2$ 时 $y'' > 0$，凹区间 $(2, +oo)$。
    ],
  ),
  (
    kind: "blank",
    stem: [函数 $f(x) = 8 ln x - x^2$ 在区间 $(0, +oo)$ 上的最大值是],
    answer: [$8 ln 2 - 4$],
    solution: [
      $f' = 8/x - 2x = 0 => x = 2$，$f''(2) < 0$，
      最大值 $f(2) = 8 ln 2 - 4$。
    ],
  ),
  (
    kind: "blank",
    stem: [曲线 $f(x) = e^x/(x + 1)$ 的渐近线为],
    answers: (
      [$x = -1$],
      [$y = 0$],
    ),
    solution: [
      $x -> -1$ 时 $|f| -> oo$，铅直渐近线 $x = -1$；
      $x -> -oo$ 时 $f -> 0$，水平渐近线 $y = 0$；
      $x -> +oo$ 时 $f -> +oo$ 且 $f/x -> +oo$，无斜渐近线。
    ],
  ),
  (
    kind: "blank",
    stem: [抛物线 $y = x^2 - 4x + 3$ 在其顶点处的曲率为],
    answer: [$2$],
    solution: [
      顶点 $(2, -1)$，$y' = 2x-4$，$y'' = 2$，顶点处 $y' = 0$，$K = 2$。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [求下列极限：],
    parts: (
      [$lim_(x->1)(x - x^x)/(1 - x + ln x)$；],
      [$lim_(x->+oo)((2/pi) arctan x)^x$。],
    ),
    solution-parts: (
      [
        $0/0$ 型。两次洛必达：
        分子二阶导在 $x=1$ 为 $-3$，分母二阶导为 $-1$，极限 $3$。
      ],
      [
        令 $y = ((2/pi) arctan x)^x$，$ln y = x ln((2/pi) arctan x)$。
        由 $arctan x - pi/2 ~ -1/x$（$x -> +oo$），
        得 $ln y -> -2/pi$，故极限 $e^(-2/pi)$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [求下列函数在指定点处具有指定阶数及余项的泰勒公式：],
    parts: (
      [$f(x) = arctan x$，$x_0 = 0$，$n = 3$，佩亚诺余项；],
      [$f(x) = x^3 ln x$，$x_0 = 1$，$n = 4$，拉格朗日余项。],
    ),
    solution-parts: (
      [
        $arctan x = x - x^3/3 + o(x^3)$。
      ],
      [
        $f(1) = 0$，$f'(1) = 1$，$f''(1) = 5$，$f'''(1) = 11$，$f^((4))(1) = 6$，
        $f^((5))(x) = -6/x^2$。
        $x^3 ln x = (x-1) + 5/2(x-1)^2 + 11/6(x-1)^3 + 1/4(x-1)^4
        - 1/(20 xi^2)(x-1)^5$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [
      设 $a > 1$，函数 $f(x) = a^x - a x$ 在 $(-oo, +oo)$ 上的驻点为 $x(a)$。
      问：$a$ 为何值时 $x(a)$ 最小？并求出最小值。
    ],
    solution: [
      $f' = a^x ln a - a = 0 => a^x = a / ln a$，
      $x(a) = 1 - ln(ln a)/ln a$。
      令 $x'(a) = 0$ 得 $ln(ln a) = 1$，即 $a = e^e$。
      最小值 $x(e^e) = 1 - 1/e = (e-1)/e$。
    ],
  ),
  (
    kind: "compute",
    stem: [曲线弧 $y = sin x$（$0 < x < pi$）上哪一点处的曲率半径最小？求出该点处的曲率半径。],
    solution: [
      $K = sin x / (1 + cos^2 x)^(3/2)$，$R = 1/K$。
      令 $K' = 0$ 得 $cos x = 0$，即 $x = pi/2$。
      在点 $(pi/2, 1)$ 处 $R = 1$ 为最小。
    ],
  ),
  (
    kind: "compute",
    stem: [
      试确定常数 $a$、$b$，使得 $f(x) = x - (a + b cos x) sin x$
      为当 $x -> 0$ 时关于 $x$ 的五阶无穷小。
    ],
    solution: [
      需 $f(0) = f'(0) = f''(0) = f'''(0) = f^((4))(0) = 0$ 且 $f^((5))(0) != 0$。
      $f'(x) = 1 - a cos x - b cos 2x$，由 $f'(0) = 0$ 得 $a + b = 1$；
      $f'''(0) = a + 4b = 0$，联立 $a = 4/3$，$b = -1/3$。
      此时 $f^((5))(0) = 4 != 0$，符合要求。
    ],
  ),

  // ===== 四、证明题 =====
  (
    kind: "proof",
    stem: [
      设 $a_0 + a_1/2 + a_2/3 + dots + a_n/(n+1) = 0$，证明：多项式
      $f(x) = a_0 + a_1 x + a_2 x^2 + dots + a_n x^n$
      在区间 $(0, 1)$ 内至少有一个零点。
    ],
    solution: [
      令 $F(x) = a_0 x + a_1 x^2/2 + dots + a_n x^(n+1)/(n+1)$，
      则 $F' = f$，$F(0) = 0$，$F(1) = 0$。
      由罗尔定理，存在 $xi in (0,1)$ 使 $f(xi) = 0$。
    ],
  ),
  (
    kind: "proof",
    stem: [证明：当 $e < a < b < e^2$ 时，$ln^2 b - ln^2 a > (4/e^2)(b - a)$。],
    solution: [
      由中值定理：$ln^2 b - ln^2 a = (2 ln xi / xi)(b-a)$，$xi in (a,b) subset (e, e^2)$。
      令 $g(x) = 2 ln x / x$，则 $g'(x) = 2(1 - ln x)/x^2$，
      在 $(e, e^2)$ 上 $g' < 0$，$g$ 严格递减，
      故 $g(xi) > g(e^2) = 4/e^2$，得证。
    ],
  ),
)

#book-section(section-title, problems)
