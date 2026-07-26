// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [总习题十]

#let problems = (
  (
    kind: "judge",
    kind-title: [一、判断题],
    stem: [
      设闭区域 $D = {(x, y) | x^2 + y^2 <= 1}$，$D_1$ 为 $D$ 在 first 象限的区域，则
          $iint_D sqrt(1 - x^2 - y^2) dif sigma = 4 iint_(D_1) sqrt(1 - x^2 - y^2) dif sigma$
    ],
    answer: [√],
    solution: [
      被积函数关于 $x, y$ 均为偶函数，且区域 $D$ 对称分布于四个象限。
    ],
  ),
  (
    kind: "judge",
    stem: [
      设闭区域 $D = {(x, y) | x^2 + y^2 <= 1}$，$D_1$ 为 $D$ 在第一象限的区域，则
            $iint_D x y dif sigma = 4 iint_(D_1) x y dif sigma$
    ],
    answer: [×],
    solution: [
      $x y$ 在 $D$ 上对 $x, y$ 奇对称，全域积分为 0，而第一象限积分为正。
    ],
  ),
  (
    kind: "judge",
    stem: [
      二重积分 $iint_D f(x, y) dif sigma$ 的几何意义是以曲面 $z = f(x, y)$ 为曲顶，以区域 $D$ 为底面的曲顶柱体的体积。（注：需 $f(x,y) >= 0$）
    ],
    answer: [×],
  ),
  (
    kind: "judge",
    stem: [
      设空间闭区域 $Omega = {(x, y, z) | x^2 + y^2 + z^2 <= R^2, z >= 0}$，$Omega_1$ 为 $Omega$ 在第一卦限的区域，则 $iiint_Omega x dif v = 4 iiint_(Omega_1) x dif v$。
    ],
    answer: [×],
    solution: [
      被积函数 $x$ 对 $x$ 轴奇对称值抵消，在 $Omega$ 上积分为 0。
    ],
  ),
  (
    kind: "choice",
    kind-title: [二、选择题],
    stem: [
      设闭区域 $D$ 由直线 $x = 0, y = 0, x + y = 1/2, x + y = 1$ 所围成，
          记 $I_1 = iint_D ln(x + y) dif sigma$，
          $I_2 = iint_D (x + y) dif sigma, I_3 = iint_D sin(x + y) dif sigma$，
          则 $I_1, I_2, I_3$ 间的大小关系为。
    ],
    options: (
      [$I_1 < I_2 < I_3$],
      [$I_3 < I_2 < I_1$],
      [$I_1 < I_3 < I_2$],
      [$I_2 < I_1 < I_3$],
    ),
    answer: [C],
    solution: [
      在积分区域 $D$ 上，$1/2 <= x+y <= 1$。在这个范围内：ln 函数值为负，故 $I_1 < 0$；又因为 $sin(x+y) < x+y$，故 $I_3 < I_2$。综上，$I_1 < I_3 < I_2$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $f(x, y)$ 是连续函数，则二次积分 $int_(-6)^2 dif x int_((x^2/4) - 1)^(2 - x) f(x, y) dif y =$。
    ],
    options: (
      [$int_(-8)^2 dif y int_(2 sqrt(y + 1))^(2 - y) f(x, y) dif x$],
      [$int_(-8)^2 dif y int_(-6)^(2 - y) f(x, y) dif x$],
      [$int_(-1)^2 dif y int_(-2 sqrt(y + 1))^(2 sqrt(y + 1)) f(x, y) dif x$
    $+ int_2^8 dif y int_(2 sqrt(y + 1))^(2 - y) f(x, y) dif x$],
      [$int_(-1)^0 dif y int_(-2 sqrt(y + 1))^(2 sqrt(y + 1)) f(x, y) dif x$
    $+ int_0^8 dif y int_(-2 sqrt(y + 1))^(2 - y) f(x, y) dif x$],
    ),
    answer: [D],
    solution: [
      积分区域由 $y = x^2/4 - 1$ 和 $y = 2-x$ 围成，交点为 $(-6, 8)$ 和 $(2, 0)$。
          改为 $Y$ 型积分时，在 $y in [-1, 0]$ 段，
          $x$ 的范围是 $[-2 sqrt(y + 1), 2 sqrt(y + 1)]$；
          在 $y in [0, 8]$ 段，$x$ 的范围是 $[-2 sqrt(y + 1), 2 - y]$。
          故选 D。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $Omega$ 是由曲面 $x^2 + y^2 + z^2 = 1$ 及平面 $x = 0, y = 0, z = 0$ 所围成的空间闭区域在第一卦限的部分，则 $iiint_Omega x y z dif v =$。
    ],
    options: (
      [$1/48$],
      [$1/56$],
      [$1/64$],
      [$1/72$],
    ),
    answer: [A],
    solution: [
      $I = int_0^1 r^5 dif r int_0^(pi/2) sin theta cos theta dif theta int_0^(pi/2) sin^3 phi cos phi dif phi = 1/6 dot 1/2 dot 1/4 = 1/48$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      计算 $int_0^1 dif x int_x^1 x^2 e^(-y^2) dif y .$
    ],
    solution: [
      交换积分次序：$0 <= y <= 1, 0 <= x <= y$。
          $I = int_0^1 e^(-y^2) dif y int_0^y x^2 dif x = int_0^1 e^(-y^2) [ 1/3 x^3 ]_0^y dif y$
          $= 1/3 int_0^1 y^3 e^(-y^2) dif y$
          令 $t = y^2, dif t = 2y dif y$。
          $I = 1/6 int_0^1 t e^(-t) dif t = 1/6 [ -t e^(-t) - e^(-t) ]_0^1$
          $= 1/6 ( ( -1/e - 1/e ) - (0 - 1) ) = 1/6 (1 - 2/e)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iint_D (x^2 - y^2) dif sigma$，其中闭区域 $D$ 由曲线 $y = sin x$ ($0 <= x <= pi$) 和直线 $y = 0$ 所围成。
    ],
    solution: [
      由对称性 $iint_D y^2 dif sigma = int_0^pi dif x int_0^(sin x) y^2 dif y = int_0^pi 1/3 sin^3 x dif x = 1/3 dot 4/3 = 4/9$。
          $iint_D x^2 dif sigma = int_0^pi x^2 dif x int_0^(sin x) dif y = int_0^pi x^2 sin x dif x$
          $= [ -x^2 cos x + 2x sin x + 2 cos x ]_0^pi = (pi^2 - 2) - 2 = pi^2 - 4$。
          故 $I = (pi^2 - 4) - 4/9 = pi^2 - 40/9$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iint_D sqrt(R^2 - x^2 - y^2) dif sigma$，其中闭区域 $D$ 由圆 $x^2 + y^2 = R x$ 所围成。
    ],
    solution: [
      极坐标：
          $ I = int_(-(pi/2))^(pi/2) dif theta int_0^(R cos theta) sqrt(R^2 - r^2) r dif r = (pi/3 - 4/9) R^3 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iiint_Omega 1/(1 + x + y + z)^3 dif v$，其中空间闭区域 $Omega$ 由平面 $x = 0, y = 0, z = 0, x + y + z = 1$ 所围成。
    ],
    solution: [
      $I = int_0^1 dif x int_0^(1-x) dif y int_0^(1-x-y) 1/(1+x+y+z)^3 dif z$
          $= int_0^1 dif x int_0^(1-x) [ -1/2 (1+x+y+z)^(-2) ]_0^(1-x-y) dif y$
          $= 1/2 int_0^1 dif x int_0^(1-x) ( (1+x+y)^(-2) - 1/4 ) dif y$
          $= 1/2 int_0^1 [ -(1+x+y)^(-1) - 1/4 y ]_0^(1-x) dif x$
          $= 1/2 int_0^1 ( (1/(1+x) - 1/2) - 1/4 (1-x) ) dif x$
          $= 1/2 [ ln(1+x) - 1/2 x - 1/4 x + 1/8 x^2 ]_0^1$
          $= 1/2 ( ln 2 - 3/4 + 1/8 ) = 1/2 (ln 2 - 5/8)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iiint_Omega (x^2 + y^2) dif v$，其 $Omega$ 为曲线 $cases(y^2 = 2z, x = 0)$ 绕 $z$ 轴旋转一周所得的曲面与平面 $z = 4$ 所围成的空间闭区域。
    ],
    solution: [
      旋转面方程为 $x^2 + y^2 = 2z$。区域 $Omega$ 可表示为 $0 <= z <= 4$ 及其截面 $x^2 + y^2 <= 2z$。
          利用柱面坐标：$0 <= theta <= 2pi, 0 <= rho <= sqrt(2z), 0 <= z <= 4$。
          $I = int_0^4 dif z int_0^(2pi) dif theta int_0^(sqrt(2z)) rho^2 dot rho dif rho$
          $= int_0^4 dif z dot 2pi dot [ 1/4 rho^4 ]_0^(sqrt(2z))$
          $= int_0^4 2pi dot 1/4 (2z)^2 dif z = 2pi int_0^4 z^2 dif z$
          $= 2pi [ 1/3 z^3 ]_0^4 = 2pi dot 64/3 = 128/3 pi$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      一均匀物体（密度 $rho$ 为常数）占有的空间闭区域 $Omega$ 由曲面 $z = x^2 + y^2$ 和平面 $z = 0$ ， $|x| = a, |y| = a$ 所围成，求：
            （1）物体的体积； (2) 物体的质心； （3）物体关于 $z$ 轴的转动惯量
    ],
    solution: [
      (1) $(8 a^4)/3$; (2) $(0, 0, 7/(15 a^2))$; (3) $(112 rho a^6)/45$

      (1)
          $ V = iint_D (x^2 + y^2) dif sigma = (8 a^4)/3 $
          (2)
          $ bar(x) = 0, bar(y) = 0, bar(z) = M_(x y)/V = (56/45 a^6)/(8/3 a^4) = 7/(15 a^2) $
          (3)
          $ I_z = rho iint_D (x^2+y^2)^2 dif sigma = (112 rho a^6)/45 $
    ],
  ),
)

#book-section(section-title, problems)
