// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section
#import "../lib/figures.typ": fig-arched-curve

#let section-title = [第二节 微积分基本公式]

#let problems = (
  // ===== 一、计算题 =====
  (
    kind: "compute",
    stem: [计算下列导数：],
    parts: (
      [$(dif)/(dif x) integral_0^(x^2) sqrt(1 + t^2) dif t$；],
      [$(dif)/(dif x) integral_(x^2)^(x^3) (dif t)/(sqrt(1 + t^4))$；],
      [$(dif)/(dif x) integral_(sin x)^(cos x) cos(pi t^2) dif t$。],
    ),
    solution-parts: (
      [
        由 $(dif)/(dif x) integral_a^(u(x)) f(t) dif t = f(u(x)) u'(x)$，得
        $2x sqrt(1 + (x^2)^2) = 2x sqrt(1 + x^4)$。
      ],
      [
        $(dif)/(dif x) integral_(u)^(v) f = f(v) v' - f(u) u'$，故
        $(3x^2)/(sqrt(1 + x^(12))) - (2x)/(sqrt(1 + x^8))$。
      ],
      [
        得 $-sin x · cos(pi cos^2 x) - cos x · cos(pi sin^2 x)$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [求下列极限：],
    parts: (
      [$lim_(x -> 0) (integral_0^x cos(t^2) dif t)/x$；],
      [$lim_(x -> 0) ((integral_0^x e^(t^2) dif t)^2)/(integral_0^x t e^(2 t^2) dif t)$；],
      [$lim_(x -> +oo) (integral_0^x arctan^2 t dif t)/(sqrt(x^2 + 1))$。],
    ),
    solution-parts: (
      [
        $0/0$ 型，洛必达：$lim_(x -> 0) cos(x^2) = 1$。
      ],
      [
        洛必达后仍为 $0/0$。由 $integral_0^x e^(t^2) dif t ~ x$（$x -> 0$），
        分子导数 $2 integral_0^x e^(t^2) dif t · e^(x^2) ~ 2x$，
        分母导数 $x e^(2x^2) ~ x$，故极限为 $2$。
      ],
      [
        洛必达：分子导数 $arctan^2 x -> (pi/2)^2$，分母导数
        $x/sqrt(x^2 + 1) -> 1$，故极限为 $pi^2/4$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [计算下列定积分：],
    parts: (
      [$integral_0^(sqrt(3) a) (dif x)/(a^2 + x^2)$；],
      [$integral_(-1)^0 (3x^4 + 3x^2 + 1)/(x^2 + 1) dif x$；],
      [$integral_0^(2pi) |sin x| dif x$；],
      [
        $integral_0^2 f(x) dif x$，其中
        $f(x) = cases(x + 1 & x <= 1, (1/2) x^2 & x > 1)$；
      ],
      [$integral_0^2 max{x^2, x^3} dif x$。],
    ),
    solution-parts: (
      [
        $[1/a arctan(x/a)]_0^(sqrt(3) a) = (1/a)(pi/3 - 0) = pi/(3a)$。
      ],
      [
        $(3x^4 + 3x^2 + 1)/(x^2 + 1) = 3x^2 + 1/(x^2 + 1)$，
        故 $[x^3 + arctan x]_(-1)^0 = 0 - (-1 - pi/4) = 1 + pi/4$。
      ],
      [
        $integral_0^(2pi) |sin x| dif x = 2 integral_0^pi sin x dif x
        = 2[-cos x]_0^pi = 2(1 + 1) = 4$。
        （或按四个“半波”：$4 integral_0^(pi/2) sin x dif x = 4$。）
      ],
      [
        $integral_0^1 (x + 1) dif x + integral_1^2 (x^2)/2 dif x
        = [x^2/2 + x]_0^1 + [x^3/6]_1^2
        = 3/2 + 7/6 = 8/3$。
      ],
      [
        在 $[0, 1]$ 上 $x^2 >= x^3$，在 $[1, 2]$ 上 $x^3 >= x^2$，
        故 $integral_0^1 x^2 dif x + integral_1^2 x^3 dif x
        = 1/3 + (4 - 1/4) = 1/3 + 15/4 = 49/12$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [
      设函数 $y = f(x)$ 具有三阶连续导数，其部分图形如图所示，
      试确定下列定积分的符号：
    ],
    figure: fig-arched-curve(),
    figure-caption: [图5-1],
    parts: (
      [$integral_(-3)^2 f(x) dif x$；],
      [$integral_(-3)^2 f'(x) dif x$；],
      [$integral_(-3)^2 f''(x) dif x$；],
      [$integral_(-3)^2 f'''(x) dif x$。],
    ),
    solution-parts: (
      [
        在 $[-3, 2]$ 上曲线均在 $x$ 轴上方（端点为零），故积分 $> 0$。
      ],
      [
        $integral_(-3)^2 f' = f(2) - f(-3) = 0 - 0 = 0$。
      ],
      [
        $integral_(-3)^2 f'' = f'(2) - f'(-3)$。
        图中 $x = -3$ 处斜率为正，$x = 2$ 处斜率为负，故结果 $< 0$。
      ],
      [
        $integral_(-3)^2 f''' = f''(2) - f''(-3)$。
        图中 $x = -3$ 附近曲线下凸（$f''(-3) > 0$），
        $x = 2$ 附近曲线上凸（$f''(2) < 0$），故积分 $< 0$。
      ],
    ),
  ),
)

#book-section(section-title, problems)
