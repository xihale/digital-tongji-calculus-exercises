// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第二节 定积分在几何学上的应用]

#let problems = (
  // ===== 一、填空题 =====
  (
    kind: "blank",
    stem: [能用定积分表示的量具有如下特征：],
    parts: (
      [可以把整体划分为数量众多、彼此同类且足够小的微元；],
      [每个微元的量能够写成某个自变量的函数与对应微小量（如 $dif x$、$dif y$ 等）的乘积；],
      [当分割无限细时，所有微元量的求和极限存在，并等于所求的总量。],
    ),
    answers: (
      [微元可分],
      [乘积形式],
      [极限存在],
    ),
    solution: [
      定积分的元素法（微元法）要求量具有可加性：整体可拆为微元，微元可写成 $f(x)\,dif x$ 等形式，
      且分割加细时黎曼和极限存在。
    ],
  ),
  (
    kind: "blank",
    stem: [
      若要求由曲线 $y = x^3$ 和 $y = x^2 + 2x$ 所围成图形的面积，
      则其面积元素与面积表达式分别为
    ],
    answers: (
      [$abs(x^3 - (x^2 + 2x)) dif x$],
      [$integral_(-1)^0 (x^3 - x^2 - 2x) dif x + integral_0^2 (x^2 + 2x - x^3) dif x$],
    ),
    solution: [
      交点满足 $x^3 = x^2 + 2x$，即 $x(x^2 - x - 2) = 0$，得 $x = -1,\,0,\,2$。
      在 $[-1,0]$ 上 $x^3$ 在上方；在 $[0,2]$ 上 $x^2 + 2x$ 在上方。
    ],
  ),
  (
    kind: "blank",
    stem: [
      若要求底面半径为 $R$、高为 $H$ 的圆锥的体积，
      以底面圆心为原点、高为 $x$ 轴，则其体积元素与体积表达式分别为
    ],
    answers: (
      [$pi (R(1 - x/H))^2 dif x$],
      [$integral_0^H pi (R(1 - x/H))^2 dif x = 1/3 pi R^2 H$],
    ),
    solution: [
      在高度 $x$ 处截面半径按相似比为 $R(1 - x/H)$，
      体积微元为圆盘 $dif V = pi r(x)^2 dif x$，积分得 $V = (1/3) pi R^2 H$。
    ],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [求由曲线 $y = 1/x$ 和直线 $y = x$ 及 $x = 2$ 所围成图形的面积],
    solution: [
      曲线交于 $x = 1$。在 $[1, 2]$ 上上方函数为 $y = x$。
      面积 $S = integral_1^2 (x - 1/x) dif x = [x^2/2 - ln x]_1^2 = 3/2 - ln 2$。
    ],
  ),
  (
    kind: "compute",
    stem: [求由曲线 $y = e^x$ 及 $y = e^(-x)$ 与直线 $x = 1$ 所围成图形的面积],
    solution: [
      两曲线交于 $x = 0$。面积 $S = integral_0^1 (e^x - e^(-x)) dif x = [e^x + e^(-x)]_0^1 = e + 1/e - 2$。
    ],
  ),
  (
    kind: "compute",
    stem: [求由抛物线 $y^2 = 2 p x$ 及其在点 $(p/2, p)$ 处的法线所围成图形的面积],
    solution: [
      法线方程：$y = -x + 3p/2$，与抛物线除给定点外再交于 $(9p/2, -3p)$。
      采用横条法：$S = integral_(-3p)^p [(3p/2 - y) - y^2/(2p)] dif y = (16/3) p^2$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求由摆线 $x = a(t - sin t)$，$y = a(1 - cos t)$（$0 <= t <= pi$）
      的一段与 $x$ 轴所围成图形的面积
    ],
    solution: [
      参数面积公式 $S = integral y x'(t) dif t$，其中 $x'(t) = a(1 - cos t)$。
      $S = a^2 integral_0^pi (1 - cos t)^2 dif t = (3/2) pi a^2$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      由曲线 $y = x^3$ 与直线 $x = 2$ 及 $y = 0$ 所围成的图形分别绕 $x$ 轴及 $y$ 轴旋转一周，
      计算所得两个旋转体的体积
    ],
    solution-parts: (
      [绕 $x$ 轴：$V_x = pi integral_0^2 (x^3)^2 dif x = (128 pi)/7$。],
      [绕 $y$ 轴（圆柱壳）：$V_y = 2 pi integral_0^2 x · x^3 dif x = 64 pi/5$。],
    ),
  ),
  (
    kind: "compute",
    stem: [由曲线 $y = x^2$ 及 $y^2 = x$ 所围成的图形绕 $y$ 轴旋转一周，计算所得旋转体的体积],
    solution: [
      对 $0 <= y <= 1$，外半径 $r_o = sqrt(y)$，内半径 $r_i = y^2$。
      $V = pi integral_0^1 (r_o^2 - r_i^2) dif y = pi integral_0^1 (y - y^4) dif y = 3 pi/10$。
    ],
  ),
  (
    kind: "compute",
    stem: [计算曲线 $y = ln x$ 上相应于 $sqrt(3) <= x <= sqrt(8)$ 的一段弧的长度],
    solution: [
      弧长 $L = integral_(sqrt(3))^(sqrt(8)) sqrt(x^2 + 1)/x dif x$。
      化简为 $L = [sqrt(x^2 + 1) + ln (x /(sqrt(x^2 + 1) + 1))]_(sqrt(3))^(sqrt(8)) = 1 + 1/2 ln 3/2$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      （附加题）由圆 $x^2 + (y - 1)^2 = 1$ 所围成的图形分别绕 $x$ 轴和 $y$ 轴旋转一周，
      计算所得旋转体的体积
    ],
    solution-parts: (
      [圆盘面积为 $pi$，质心距 $x$ 轴的距离为 1；绕 $x$ 轴旋转得圆环体：$V_x = pi · 2 pi = 2 pi^2$。],
      [绕 $y$ 轴旋转成半径 1 的球：$V_y = 4 pi/3$。],
    ),
  ),
)

#book-section(section-title, problems)
