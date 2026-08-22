// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section
#import "../lib/figures.typ": fig-two-curves-shade

#let section-title = [总习题六]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [由曲线 $y = e^x$ 和直线 $x = 0$ 及 $y = 2$ 所围成的曲边梯形的面积为],
    options: (
      [$integral_1^2 ln y thin dif y$],
      [$integral_0^(e^2) e^x thin dif y$],
      [$integral_1^(ln 2) ln y thin dif y$],
      [$integral_1^2 (2 - e^x) dif x$],
    ),
    answer: [A],
    solution: [
      曲线 $y = e^x$ 与 $y = 2$ 交于 $x = ln 2$；与 $x = 0$ 交于 $y = 1$。
      对 $y$ 积分：$x = ln y$，面积 $S = integral_1^2 ln y thin dif y$。
    ],
  ),
  (
    kind: "choice",
    stem: [如图 6-2 所示，阴影部分面积为],
    options: (
      [$integral_a^b [f(x) - g(x)] dif x$],
      [$integral_a^c [g(x) - f(x)] dif x + integral_c^b [f(x) - g(x)] dif x$],
      [$integral_a^b [f(x) + g(x)] dif x$],
      [$integral_a^c [f(x) - g(x)] dif x + integral_c^b [g(x) - f(x)] dif x$],
    ),
    answer: [B],
    figure: fig-two-curves-shade(),
    figure-caption: [图6-2],
    solution: [
      在 $[a,c]$ 上 $g$ 在上方，在 $[c,b]$ 上 $f$ 在上方，
      故 $S = integral_a^c [g(x) - f(x)] dif x + integral_c^b [f(x) - g(x)] dif x$。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [由抛物线 $y = x^2 + 2x$、直线 $x = 1$ 和 $x$ 轴所围成图形的面积为],
    answer: [$4/3$],
    solution: [
      $y = x(x+2)$ 与 $x$ 轴交于 $x = 0,-2$；与 $x = 1$ 在 $[0,1]$ 上围成面积
      $S = integral_0^1 (x^2 + 2x) dif x = [x^3/3 + x^2]_0^1 = 4/3$。
    ],
  ),
  (
    kind: "blank",
    stem: [曲线 $y = sqrt(x) - 1/3 sqrt(x^3)$ 相应于区间 $[1,3]$ 上的一段弧的长度为],
    answer: [$2 sqrt(3) - 4/3$],
    solution: [
      $y' = 1/(2 sqrt(x)) - 1/2 sqrt(x)$，
      $1 + (y')^2 = (1/(2 sqrt(x)) + 1/2 sqrt(x))^2$，
      $L = integral_1^3 (1/(2 sqrt(x)) + 1/2 sqrt(x)) dif x = [sqrt(x) + 1/3 sqrt(x^3)]_1^3 = 2 sqrt(3) - 4/3$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      由曲线 $y = sin x$ 和它在 $x = pi/2$ 处的切线以及直线 $x = pi$
      所围成图形绕 $x$ 轴旋转一周所得旋转体的体积为
    ],
    answer: [$pi^2/4$],
    solution: [
      在 $x = pi/2$ 处 $y = 1$，$y' = 0$，切线 $y = 1$。
      在 $[pi/2, pi]$ 上 $V = pi integral_(pi/2)^pi (1 - sin^2 x) dif x
      = pi integral_(pi/2)^pi cos^2 x dif x = pi^2/4$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      水下有一个宽 $2$ m、高 $3$ m 的矩形闸门铅直地浸没在水中，
      水面超过门顶 $2$ m，则闸门上所受的水压力为
    ],
    answer: [$2.058 times 10^5$ N],
    solution: [
      深度自水面 $y in [2, 5]$，宽 $2$ m。
      $F = rho g integral_2^5 2 y dif y = 2 rho g [y^2/2]_2^5 = rho g (25 - 4) = 21 rho g$。
      取 $rho g = 9.8 times 10^3$ N/m³，得 $F = 2.058 times 10^5$ N。
    ],
  ),
  (
    kind: "blank",
    stem: [
      连续函数 $y = f(x, m)$ 对于任意常数 $m$ 恒大于零，
      则由曲线 $y = f(x, m)$ 及直线 $x = a$、$x = b$、$y = 0$ 所围成图形的面积为
    ],
    answer: [$integral_a^b f(x,m) dif x$],
    solution: [由定积分几何意义，面积即为 $integral_a^b f(x,m) dif x$。],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [求 $C$ 的值（$0 < C <= 1$），使得由两曲线 $y = x^2$ 与 $y = C x^3$ 所围成图形的面积为 $2/3$],
    solution: [
      交点满足 $x^2 = C x^3$，即 $x^2(1 - C x) = 0$，得 $x = 0$ 或 $x = 1/C$。
      在 $0 <= x <= 1/C$ 上 $x^2 >= C x^3$。
      面积 $S = integral_0^(1/C) (x^2 - C x^3) dif x = [x^3/3 - C x^4/4]_0^(1/C) = 1/(12 C^3)$。
      由 $1/(12 C^3) = 2/3$，得 $C^3 = 1/8$，所以 $C = 1/2$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求 $a$ 的值，使得由曲线 $y = a(1 - x^2)$（$a > 0$）与它在点 $(-1,0)$ 和 $(1,0)$ 处的法线
      所围成图形的面积最小
    ],
    solution: [
      $y' = -2 a x$，在 $x = plus.minus 1$ 处 $y' = minus.plus 2 a$，法线斜率 $plus.minus 1/(2 a)$。
      法线：$(1,0)$ 处 $y = (x - 1)/(2 a)$；$(-1,0)$ 处 $y = -(x + 1)/(2 a)$，两法线交于 $(0, -1/(2 a))$。
      由对称性，$S(a) = 2 integral_0^1 [a(1 - x^2) - (x - 1)/(2 a)] dif x = (4 a)/3 + 1/(2 a)$。
      令 $S'(a) = 4/3 - 1/(2 a^2) = 0$，得 $a = sqrt(6)/4$，此时面积最小。
    ],
  ),
  (
    kind: "compute",
    stem: [
      有一立体以由抛物线 $y^2 = 2x$ 与直线 $x = 2$ 所围成的图形为底，
      而垂直于抛物线轴的截面都是等边三角形，求其体积
    ],
    solution: [
      在 $x$ 处弦长 $2 sqrt(2x)$，等边三角形面积 $A(x) = (sqrt(3)/4) · (2 sqrt(2x))^2 = 2 sqrt(3) x$。
      体积 $V = integral_0^2 2 sqrt(3) x dif x = 4 sqrt(3)$。
    ],
  ),
)

#book-section(section-title, problems)
