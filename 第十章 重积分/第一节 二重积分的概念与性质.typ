// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第一节 二重积分的概念与性质]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      $iint_D f(x, y) dif sigma = lim_(lambda arrow 0) sum_(i=1)^n f(xi_i, eta_i) Delta sigma_i$ 中 $lambda$ 是。
    ],
    options: (
      [最大小区间长度],
      [小区域最大面积],
      [小区域直径],
      [小区域最大直径],
    ),
    answer: [D],
    solution: [
      在二重积分定义中，$lambda$ 表示分割区域 $D$ 后，各小区域 $D_i$ 直径的最大值：
          $ lambda = max_(1 <= i <= n) \{ "diam"(D_i) \} $
    ],
  ),
  (
    kind: "choice",
    stem: [
      能使得等式 $iint_D dif sigma = 1$ 成立的积分区域 $D$ 为。
    ],
    options: (
      [由直线 $y = x, x = 1, y = 0$ 所围成的平面区域],
      [由直线 $y = 2x, x = 1, y = 0$ 所围成的平面区域],
      [由直线 $|x| + |y| = 1$ 所围成的平面区域],
      [由曲线 $y = sin x$ ($0 <= x <= pi$) 与直线 $y = 0$ 所围成的平面区域],
    ),
    answer: [B],
    solution: [
      $ iint_D dif sigma = sigma(D) $
          即区域 $D$ 的面积。
          A. $ sigma(D) = 1/(2 times 1 times 1) = 0.5 $
          B. $ sigma(D) = 1/(2 times 1 times 2) = 1 $
          C. $ sigma(D) = 2 $
          D. $ sigma(D) = int_0^pi sin x dif x = 2 $
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $D$ 是由直线 $x = 0, y = 0, x + y = 3, x + y = 5$ 所围成的闭区域，记 $I_1 = iint_D ln(x + y) dif sigma, I_2 = iint_D ln^2(x + y) dif sigma$，则。
    ],
    options: (
      [$I_1 < I_2$],
      [$I_1 > I_2$],
      [$I_2 = 2 I_1$],
      [无法比较],
    ),
    answer: [A],
    solution: [
      在区域 $D$ 上，$3 <= x + y <= 5$。 \
          由于 $x + y >= 3 > ee$，有 $ln(x + y) > 1$。 \
          故 $ln^2(x + y) > ln(x + y)$，从而 $I_2 > I_1$。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设曲顶柱体的顶部曲面函数 $z = f(x, y)$，它的底部区域为 $D$，则曲顶柱体的体积可表示为
    ],
    answer: [$iint_D |f(x, y)| dif sigma$],
    solution: [
      曲顶柱体的体积元素为 $dif V = |z| dif sigma = |f(x, y)| dif sigma$。
          $ V = iint_D |f(x, y)| dif sigma $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设闭区域 $D = {(x, y) | x^2 + y^2 <= 1}$，则 $iint_D dif sigma =$
    ],
    answer: [$pi$],
    solution: [
      $ iint_D dif sigma = sigma(D) = pi times 1^2 = pi $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设闭区域 $D = {(x, y) | x^2 + y^2 <= a^2, x >= 0, y >= 0}$ ($a > 0$)，则 $iint_D sqrt(a^2 - x^2 - y^2) dif sigma =$
    ],
    answer: [$(pi a^3)/(6)$],
    solution: [
      变换为极坐标：$x = r cos theta, y = r sin theta$。
          $ I = int_0^(pi/2) dif theta int_0^a sqrt(a^2 - r^2) r dif r = pi/2 times [-1/(3 (a^2 - r^2)^(3/2))]_0^a = (pi a^3)/6 $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设一平面薄片在 $x O y$ 面内占有区域 $D$，其面密度函数为 $rho = (x^2 + y^2) / 2$，则此薄片的质量可表示为
    ],
    answer: [$1/2 iint_D (x^2 + y^2) dif sigma$],
    solution: [
      薄片的质量 $M = iint_D rho(x, y) dif sigma$。代入面密度得：$M = 1/2 iint_D (x^2 + y^2) dif sigma$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      利用二重积分的性质估计二重积分 $I = iint_D (x^2 + y^2 + 2) dif sigma$ 的值，其中积分区域 $D = {(x, y) | |x| + |y| <= 1}$。
    ],
    solution: [
      $4 < I < 6$

      $ sigma(D) = 2 $
          在 $D$ 上，$0 <= x^2 + y^2 <= 1 => 2 <= x^2 + y^2 + 2 <= 3$。
          由估值定理：
          $ 2 times sigma(D) < I < 3 times sigma(D) => 4 < I < 6 $
    ],
  ),
)

#book-section(section-title, problems)
