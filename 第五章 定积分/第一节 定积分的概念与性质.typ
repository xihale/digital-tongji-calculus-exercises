// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第一节 定积分的概念与性质]

#let problems = (
  // ===== 一、判断题 =====
  (
    kind: "judge",
    stem: [$(dif)/(dif x) integral_a^b f(x) dif x = f(x)$],
    answer: [×],
    solution: [
      定积分 $integral_a^b f(x) dif x$ 是常数，导数为 $0$。
      变上限积分才有 $(dif)/(dif x) integral_a^x f(t) dif t = f(x)$。
    ],
  ),
  (
    kind: "judge",
    stem: [定积分的定义中，“$lambda -> 0$”可以换成“$n -> oo$”],
    answer: [×],
    solution: [
      $n -> oo$ 只保证分点个数趋于无穷，不能保证最大子区间长度 $lambda -> 0$
      （例如某一段始终不分）。必须要求 $lambda -> 0$。
    ],
  ),
  (
    kind: "judge",
    stem: [交换定积分的上下限，定积分的值不变],
    answer: [×],
    solution: [
      $integral_a^b f(x) dif x = - integral_b^a f(x) dif x$，交换上下限后积分变号。
    ],
  ),
  (
    kind: "judge",
    stem: [
      若 $integral_a^b f(x) dif x = integral_a^c f(x) dif x + integral_c^b f(x) dif x$ 成立，
      则必有 $a < c < b$
    ],
    answer: [×],
    solution: [
      区间可加性对 $a$、$b$、$c$ 的相对位置没有限制，
      只要 $f$ 在包含这三点的区间上可积即可。
    ],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [
      设 $integral_(-1)^1 3 f(x) dif x = 18$，$integral_(-1)^3 f(x) dif x = 4$，
      $integral_(-1)^3 g(x) dif x = 3$，求：
    ],
    parts: (
      [$integral_(-1)^1 f(x) dif x$；],
      [$integral_1^3 f(x) dif x$；],
      [$integral_3^(-1) g(x) dif x$；],
      [$integral_(-1)^3 (1/5)[4 f(x) + 3 g(x)] dif x$。],
    ),
    solution-parts: (
      [
        由 $integral_(-1)^1 3 f(x) dif x = 3 integral_(-1)^1 f(x) dif x = 18$，得
        $integral_(-1)^1 f(x) dif x = 6$。
      ],
      [
        $integral_1^3 f(x) dif x = integral_(-1)^3 f - integral_(-1)^1 f = 4 - 6 = -2$。
      ],
      [
        $integral_3^(-1) g(x) dif x = - integral_(-1)^3 g(x) dif x = -3$。
      ],
      [
        原式 $= (1/5)[4 integral_(-1)^3 f + 3 integral_(-1)^3 g]
        = (1/5)(16 + 9) = 5$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [利用定积分的几何意义，求下列定积分的值（要求作图）：],
    parts: (
      [$integral_0^t (2x + 1) dif x$；],
      [$integral_(-1)^2 |x - 1| dif x$；],
      [$integral_(-3)^3 sqrt(9 - x^2) dif x$。],
    ),
    solution-parts: (
      [
        梯形：上底 $1$，下底 $2t+1$，高 $t$，
        面积 $S = (1 + 2t + 1)t/2 = t^2 + t$。
      ],
      [
        $[-1, 1]$ 上为底 $2$、高 $2$ 的三角形，面积 $2$；
        $[1, 2]$ 上为底 $1$、高 $1$ 的三角形，面积 $1/2$。
        总面积 $= 2 + 1/2 = 5/2$。
      ],
      [
        $y = sqrt(9 - x^2)$ 是圆心在原点、半径为 $3$ 的上半圆，
        积分值为半圆面积 $1/2 pi · 3^2 = (9/2) pi$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [估计下列定积分的值：],
    parts: (
      [$integral_(pi/4)^(5 pi/4) (1 + sin^2 x) dif x$；],
      [$integral_2^0 e^(x^2 - x) dif x$。],
    ),
    solution-parts: (
      [
        区间长 $pi$，且 $1 <= 1 + sin^2 x <= 2$，
        故 $pi <= I <= 2 pi$。
      ],
      [
        $I = - integral_0^2 e^(x^2 - x) dif x$。
        令 $u = x^2 - x = (x - 1/2)^2 - 1/4$，
        在 $[0, 2]$ 上 $u_min = -1/4$，$u_max = 2$，
        故 $e^(-1/4) <= e^(x^2-x) <= e^2$，
        从而 $-2 e^2 <= I <= -2 e^(-1/4)$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [（附加题）利用定积分的定义计算 $integral_0^1 e^x dif x$。],
    solution: [
      等分 $[0, 1]$：$Delta x = 1/n$，取 $xi_i = i/n$，
      积分和 $sum_(i=1)^n e^(i/n) · (1/n)
      = (1/n) · e^(1/n) (1 - e)/(1 - e^(1/n))$。
      令 $n -> oo$，得 $integral_0^1 e^x dif x = e - 1$。
    ],
  ),

  // ===== 三、证明题 =====
  (
    kind: "proof",
    stem: [
      （附加题）已知当 $a > 0$ 时，$a x^2 + b x + c >= 0$ 恒成立
      $arrow.l.r.double b^2 - 4 a c <= 0$。
      试用此结论证明：若 $f$ 在 $[0, 1]$ 上连续，则
      $integral_0^1 f^2(x) dif x >= (integral_0^1 f(x) dif x)^2$。
    ],
    solution: [
      对任意实数 $t$，有 $integral_0^1 (f(x) - t)^2 dif x >= 0$，即
      $integral_0^1 f^2 dif x - 2 t integral_0^1 f dif x + t^2 >= 0$ 对一切 $t$ 成立。
      这是关于 $t$ 的二次式 $t^2 - 2 (integral f) t + integral f^2$，
      首项系数 $1 > 0$ 且恒非负，故判别式
      $4 (integral_0^1 f)^2 - 4 integral_0^1 f^2 <= 0$，
      即 $integral_0^1 f^2(x) dif x >= (integral_0^1 f(x) dif x)^2$。
    ],
  ),
)

#book-section(section-title, problems)
