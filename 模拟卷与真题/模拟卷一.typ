// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [高等数学(上册)期末测试模拟卷(一)]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    kind-title: [一、选择题（每小题3分，共15分）],
    stem: [当 $x -> 0$ 时，下列是 $x$ 的同阶（不等价）无穷小的是],
    options: (
      [$sin x - x$],
      [$ln(1 - x)$],
      [$x^2 sin x$],
      [$e^x - 1$],
    ),
    answer: [B],
    solution: [
      A. $sin x - x tilde -x^3/6$，为高阶；B. $lim (ln(1-x))/x = -1 != 0,plus.minus 1$，同阶不等价；
      C. $x^2 sin x tilde x^3$，高阶；D. $e^x - 1 tilde x$，等价。
    ],
  ),
  (
    kind: "choice",
    stem: [下列命题中不正确的是],
    options: (
      [若函数 $f(x)$ 在点 $x_0$ 处不连续，则 $f(x)$ 在点 $x_0$ 处必不可导],
      [若 $lim_(x -> x_0) f(x)$ 不存在，则函数 $f(x)$ 在点 $x_0$ 处不连续],
      [若函数 $f(x)$ 在点 $x_0$ 处可导，则 $f(x)$ 在点 $x_0$ 处必可微],
      [若函数 $f(x)$ 在区间 $[a, b]$ 上可积，则 $f(x)$ 在 $[a, b]$ 上必连续],
    ),
    answer: [D],
    solution: [
      可积不一定连续（如有限个间断点仍可积）。A、B、C 均正确。
    ],
  ),
  (
    kind: "choice",
    stem: [设函数 $f(x) = (1 + e^(1/x))/(3 + 2 e^(1/x))$，则 $x = 0$ 是 $f(x)$ 的],
    options: ([跳跃间断点], [可去间断点], [无穷间断点], [振荡间断点]),
    answer: [A],
    solution: [
      $lim_(x->0^+) f(x) = 1/2$，$lim_(x->0^-) f(x) = 1/3$，左右极限存在但不相等，为跳跃间断点。
    ],
  ),
  (
    kind: "choice",
    stem: [下列不定积分的计算不正确的是],
    options: (
      [$integral (dif x)/(sqrt(4 - x^2)) = arcsin x/2 + C$],
      [$integral (dif x)/(x^2 - 2x + 2) = arctan(x - 1) + C$],
      [$integral 2^x · 3^x dif x = (2^x · 3^x)/(ln 2 + ln 3) + C$],
      [$integral x/(1 + x^2) dif x = arctan x + C$],
    ),
    answer: [D],
    solution: [
      D 应为 $1/2 ln(1+x^2) + C$；$arctan x$ 的导数是 $1/(1+x^2)$。其余正确。
    ],
  ),
  (
    kind: "choice",
    stem: [下列反常积分收敛的是],
    options: (
      [$integral_1^(+oo) (dif x)/(sqrt(x))$],
      [$integral_(-oo)^(+oo) (dif x)/(x^2 + 4x + 5)$],
      [$integral_0^1 (dif x)/(x^2)$],
      [$integral_(-1)^1 (dif x)/x$],
    ),
    answer: [B],
    solution: [
      B：$x^2 + 4x + 5 = (x+2)^2 + 1$，积分值为 $pi$，收敛。A、C、D 均发散。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    kind-title: [二、填空题（每小题3分，共18分）],
    stem: [
      设函数
      $f(x) = cases(
        (sin 3x)/(ln(1 + x)) & -1 < x < 0,
        a sec x + 1 & x >= 0,
      )$
      在点 $x = 0$ 处连续，则 $a =$
    ],
    answer: [$2$],
    solution: [
      左极限 $lim_(x->0^-) (sin 3x)/(ln(1+x)) = 3$，右极限 $a + 1$，故 $a = 2$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      已知参数方程 $x = ln(1 + t^2)$，$y = t - arctan t$，则 $(dif y)/(dif x) =$
    ],
    answer: [$t/2$],
    solution: [
      $(dif x)/(dif t) = 2t/(1+t^2)$，$(dif y)/(dif t) = t^2/(1+t^2)$，故 $(dif y)/(dif x) = t/2$。
    ],
  ),
  (
    kind: "blank",
    stem: [函数 $f(x) = x e^x$ 的带有拉格朗日余项的三阶麦克劳林公式为],
    answer: [
      $x + x^2 + x^3/2 + ((4 + xi) e^xi)/(24) x^4$（$xi$ 在 $0$ 与 $x$ 之间）
    ],
    solution: [
      $f(0)=0$，$f'(0)=1$，$f''(0)=2$，$f'''(0)=3$，$f^((4))(x) = (4+x)e^x$，
      故 $f(x) = x + x^2 + x^3/2 + ((4+xi)e^xi)/(24) x^4$。
    ],
  ),
  (
    kind: "blank",
    stem: [曲线 $y = 4x - x^2$ 在其顶点处的曲率 $k =$],
    answer: [$2$],
    solution: [
      顶点 $(2,4)$，$y' = 0$，$y'' = -2$，$k = |y''|/(1+(y')^2)^(3/2) = 2$。
    ],
  ),
  (
    kind: "blank",
    stem: [$integral_(-2)^2 (x|sin x| + 4 - x^2)/(sqrt(4 - x^2)) dif x =$],
    answer: [$2 pi$],
    solution: [
      奇函数部分积分为 0；$integral_(-2)^2 sqrt(4-x^2) dif x = 2 pi$（半圆直径 4 的面积）。
    ],
  ),
  (
    kind: "blank",
    stem: [微分方程 $(dif y)/(dif x) = (1 + y^2) e^x$ 的通解为],
    answer: [$y = tan(e^x + C)$],
    solution: [
      $(dif y)/(1+y^2) = e^x dif x$，积分得 $arctan y = e^x + C$，即 $y = tan(e^x + C)$。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    kind-title: [三、计算题（12～15题每小题7分，16～17题每小题8分，共44分）],
    stem: [求 $lim_(x -> +oo) (integral_0^x arctan^2 t dif t)/(sqrt(x^2 + 1))$。],
    solution: [
      $oo/oo$ 型，洛必达得 $lim_(x->+oo) arctan^2 x · sqrt(1+1/x^2) = (pi/2)^2 = pi^2/4$。
    ],
  ),
  (
    kind: "compute",
    stem: [已知函数 $y(x)$ 由方程 $x^3 + y^3 - 3x + 3y - 2 = 0$ 所确定，求 $y''(1)$。],
    solution: [
      由 $x=1$ 得 $y=1$。隐函数求导 $y' = (1-x^2)/(y^2+1)$，$y'(1)=0$；
      再求导得 $y''(1) = -1$。
    ],
  ),
  (
    kind: "compute",
    stem: [求 $integral arctan sqrt(x) dif x$。],
    solution: [
      分部积分并令 $sqrt(x)=t$，得 $integral arctan sqrt(x) dif x = (x+1) arctan sqrt(x) - sqrt(x) + C$。
    ],
  ),
  (
    kind: "compute",
    stem: [求 $integral_0^pi x^2 |cos x| dif x$。],
    solution: [
      分段：$integral_0^(pi/2) x^2 cos x dif x + integral_(pi/2)^pi x^2 (-cos x) dif x$。
      原函数 $x^2 sin x + 2x cos x - 2 sin x$，计算得 $pi^2/2 + 2 pi - 4$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $f(x) = cases(1 + x^2 & x < 0, e^(-x) & x >= 0)$，求 $integral_1^3 f(x - 2) dif x$。
    ],
    solution: [
      令 $u = x-2$，得 $integral_(-1)^1 f(u) dif u = integral_(-1)^0 (1+u^2) dif u + integral_0^1 e^(-u) dif u = 7/3 - 1/e$。
    ],
  ),
  (
    kind: "compute",
    stem: [求曲线 $y = x^4 (12 ln x - 7)$ 的凹凸区间及拐点。],
    solution: [
      $y'' = 144 x^2 ln x$（$x > 0$）。$0 < x < 1$ 时 $y'' < 0$（凸）；$x > 1$ 时 $y'' > 0$（凹）；
      拐点 $(1, -7)$。
    ],
  ),

  // ===== 四、应用题 =====
  (
    kind: "short",
    kind-title: [四、应用题（每小题9分，共18分）],
    stem: [要做一个容积为 $2 pi$ 的密闭圆柱形罐头筒，问：半径和高分别为多少时能使所用材料最省？],
    solution: [
      $pi r^2 h = 2 pi$，$h = 2/r^2$，$S = 2 pi r^2 + 4 pi/r$。
      $S' = 0$ 得 $r = 1$，$h = 2$。
    ],
  ),
  (
    kind: "short",
    stem: [
      求由抛物线 $y^2 = 2x$ 与直线 $y = x - 4$ 所围成图形的面积，
      并求此图形绕 $y$ 轴旋转一周所得旋转体的体积。
    ],
    solution-parts: (
      [交点 $(2,-2)$、$(8,4)$，面积 $S = integral_(-2)^4 (y+4 - y^2/2) dif y = 18$。],
      [绕 $y$ 轴 $V = pi integral_(-2)^4 [(y+4)^2 - (y^2/2)^2] dif y = (576 pi)/5$。],
    ),
  ),

  // ===== 五、证明题 =====
  (
    kind: "proof",
    kind-title: [五、证明题（5分）],
    stem: [
      若函数 $f(x)$ 在区间 $(a, b)$ 内具有二阶导数且 $f(x_1) = f(x_2) = f(x_3)$，
      其中 $a < x_1 < x_2 < x_3 < b$，证明：在 $(a, b)$ 内至少存在一点 $xi$，使得 $f''(xi) = 0$。
    ],
    solution: [
      由罗尔定理，存在 $xi_1 in (x_1,x_2)$、$xi_2 in (x_2,x_3)$ 使 $f'(xi_1)=f'(xi_2)=0$；
      再对 $f'$ 用罗尔定理，存在 $xi in (xi_1,xi_2) subset (a,b)$ 使 $f''(xi)=0$。
    ],
  ),
)

#book-section(section-title, problems)
