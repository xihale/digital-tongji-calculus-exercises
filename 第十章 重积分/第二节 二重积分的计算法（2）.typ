// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第二节 二重积分的计算法（2）]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      二次积分 $int_0^(pi/2) dif theta int_0^(cos theta) f(rho cos theta, rho sin theta) rho dif rho$ 可写成
    ],
    options: (
      [$int_0^1 dif y int_0^(sqrt(y - y^2)) f(x, y) dif x$],
      [$int_0^1 dif y int_0^(sqrt(1 - y^2)) f(x, y) dif x$],
      [$int_0^1 dif x int_0^1 f(x, y) dif y$],
      [$int_0^1 dif x int_0^(sqrt(x - x^2)) f(x, y) dif y$],
    ),
    answer: [D],
    solution: [
      极坐标方程 $rho = cos theta$ 对应直角坐标方程 $x^2 + y^2 = x$。由于 $0 <= theta <= pi/2$，区域在第一象限，即 $0 <= x <= 1, 0 <= y <= sqrt(x-x^2)$。故二次积分为 $int_0^1 dif x int_0^{sqrt(x-x^2)} f(x, y) dif y$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设闭区域 $D$ 关于直线 $y = x$ 对称，则有 $iint_D f(x, y) dif sigma = iint_D f(y, x) dif sigma$。用此结论可得 $iint_(x^2 + y^2 <= 2) (x^2 + y^2/4) dif sigma =$
    ],
    options: (
      [$pi$],
      [$3/2 pi$],
      [$5/4 pi$],
      [$2 pi$],
    ),
    answer: [C],
    solution: [
      由对称性，$iint_D x^2 dif sigma = iint_D y^2 dif sigma$。
          故
          $I = iint_D (x^2 + y^2/4) dif sigma$
          $= 5/4 iint_D x^2 dif sigma$
          $= 5/8 iint_D (x^2 + y^2) dif sigma$
          $= 5/8 int_0^{2pi} dif theta int_0^{sqrt(2)} rho^3 dif rho$
          $= 5/4 pi$。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设闭区域 $D = {(x, y) | x^2 + y^2 <= 2x}$，则 $iint_D f(x, y) dif sigma$ 在极坐标系下的二次积分可表示为
    ],
    answer: [$int_(-(pi/2))^(pi/2) dif theta int_0^(2 cos theta) f(rho cos theta, rho sin theta) rho dif rho$],
    solution: [
      $int_(-(pi/2))^(pi/2) dif theta int_0^(2 cos theta) f(rho cos theta, rho sin theta) rho dif rho$

      $ r^2 <= 2r cos theta => r <= 2 cos theta, -pi/2 <= theta <= pi/2 $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设闭区域 $D = {(x, y) | 0 <= y <= 1 - x, 0 <= x <= 1}$，则 $iint_D f(x, y) dif sigma$ 在极坐标系下的二次积分可表示为
    ],
    answer: [$int_0^(pi/2) dif theta int_0^(1/(cos theta + sin theta)) f(rho cos theta, rho sin theta) rho dif rho$],
    solution: [
      $int_0^(pi/2) dif theta int_0^(1/(cos theta + sin theta)) f(rho cos theta, rho sin theta) rho dif rho$

      $ x + y = 1 => r(cos theta + sin theta) = 1, 0 <= theta <= pi/2 $
    ],
  ),
  (
    kind: "blank",
    stem: [
      将二次积分 $int_0^1 dif x int_0^(sqrt(2 a x - x^2)) f(sqrt(x^2 + y^2)) dif y$ 化为极坐标形式，结果为
    ],
    answer: [$int_0^(pi/2) dif theta int_0^(2 a cos theta) f(rho) rho dif rho$。],
    solution: [
      $int_0^(pi/2) dif theta int_0^(2 a cos theta) f(rho) rho dif rho$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      若二重积分 $iint_D (x^5 + sin y^3 + 3) dif sigma = 24$ ，则闭区域 $D$ 可用不等式表示成
    ],
    answer: [$|x| <= 1, |y| <= 2$ （答案不唯一）],
    solution: [
      $|x| <= 1, |y| <= 2$ （答案不唯一）
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      计算 $iint_D x y^2 dif sigma$，其中 $D$ 是由圆 $x^2 + y^2 = 4$ 及 $y$ 轴所围成的右半闭区域
    ],
    solution: [
      $64/15$

      $ I = int_(-(pi/2))^(pi/2) cos theta sin^2 theta dif theta int_0^2 r^4 dif r = [1/3 sin^3 theta]_(-(pi/2))^(pi/2) times [1/5 r^5]_0^2 = 64/15 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iint_D |1 - x^2 - y^2| dif sigma$，其中闭区域 $D = {(x, y) | x^2 + y^2 <= 4}$
    ],
    solution: [
      $5 pi$

      $ I = 2pi (int_0^1 (1 - r^2) r dif r + int_1^2 (r^2 - 1) r dif r) = 2pi (1/4 + 9/4) = 5pi $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iint_D y/x dif sigma$，其中 $D$ 是由圆 $x^2 + y^2 = 4, x^2 + y^2 = 1$ 及直线 $y = 0, y = x$ 所围成的在第一象限的闭区域
    ],
    solution: [
      $3/4 ln 2$

      区域 $D$ 在极坐标下为：$1 <= rho <= 2, 0 <= theta <= pi/4$。
          被积函数 $y/x = tan theta$，面积元 $dif sigma = rho dif rho dif theta$。
          $I = int_0^(pi/4) dif theta int_1^2 tan theta dot rho dif rho$
          $= (int_0^(pi/4) tan theta dif theta) (int_1^2 rho dif rho)$
          $= [ -ln(cos theta) ]_0^(pi/4) dot [ 1/2 rho^2 ]_1^2$
          $= (-ln(sqrt(2)/2) - 0) dot (2 - 1/2) = 1/2 ln 2 dot 3/2 = 3/4 ln 2$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      （附加题）计算 $iint_D (x + y) dif sigma$，其中闭区域 $D = {(x, y) | x^2 + y^2 <= x + y}$
    ],
    solution: [
      $pi/2$

      区域 $D$ 为 $(x - 1/2)^2 + (y - 1/2)^2 <= 1/2$，是一个圆心在 $(1/2, 1/2)$，半径为 $R = 1/sqrt(2)$ 的圆。
          由对称性或重心定义：$iint_D x dif sigma = bar(x) dot sigma(D) = 1/2 dot pi R^2 = pi/4$。
          同理 $iint_D y dif sigma = bar(y) dot sigma(D) = 1/2 dot pi R^2 = pi/4$。
          故 $iint_D (x + y) dif sigma = pi/4 + pi/4 = pi/2$。
    ],
  ),
)

#book-section(section-title, problems)
