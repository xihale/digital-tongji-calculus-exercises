// 数据层：只放内容。公式一律行内。
// 题干对照 PDF 书页 91–94；答案以书后参考答案为准。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [高等数学(下册)期末测试模拟卷(二)]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    kind-title: [一、选择题（每小题3分，共15分）],
    stem: [
      设有直线 $l: cases(2x + 3y - z = 1, x - 2y - 3z = 2)$ 及平面
      $Pi: 11x - 5y + 7z = 2$，则直线 $l$
    ],
    options: (
      [与平面 $Pi$ 斜交],
      [垂直于平面 $Pi$],
      [平行于平面 $Pi$],
      [在平面 $Pi$ 上],
    ),
    answer: [B],
    solution: [
      直线方向 $s = (2,3,-1) times (1,-2,-3) = (-11, 5, -7)$，
      与平面法向 $n = (11,-5,7)$ 平行（$s = -n$），故 $l perp Pi$。
    ],
  ),
  (
    kind: "choice",
    stem: [函数 $z = 2x^3 - 4x^2 + 2x y - y^2$ 的极值点为],
    options: (
      [$(0, 0)$],
      [$(1, 1)$],
      [$(0, 0)$ 与 $(1, 1)$],
      [无极值点],
    ),
    answer: [A],
    solution: [
      $z_x = 6x^2 - 8x + 2y$，$z_y = 2x - 2y$。
      由 $z_y=0$ 得 $y=x$；代入 $z_x=0$：$6x^2-6x=0$，$x=0$ 或 $1$。
      驻点 $(0,0)$、$(1,1)$。
      $A=12x-8$，$B=2$，$C=-2$，$A C-B^2 = -2(12x-8)-4$。
      在 $(0,0)$：$A C-B^2=12>0$，$A=-8<0$，极大值点；
      在 $(1,1)$：$A C-B^2=-12<0$，鞍点。故极值点仅 $(0,0)$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数
      $f(x, y) = cases((x y)/sqrt(x^4 + y^4) & (x, y) != (0, 0), 0 & (x, y) = (0, 0))$，
      则在点 $(0, 0)$ 处
    ],
    options: (
      [偏导数不存在，函数不连续],
      [偏导数不存在，函数连续],
      [偏导数存在，函数连续],
      [偏导数存在，函数不连续],
    ),
    answer: [D],
    solution: [
      $f'_x(0,0)=f'_y(0,0)=0$ 存在；
      沿 $y=x$ 有 $f(x,x)=x^2/sqrt(2 x^4)=1/sqrt(2) != 0$，故不连续。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设曲面 $Sigma$ 的方程为 $x^2 + y^2 + z^2 = a^2$（$z >= 0$），
      $Sigma_1$ 为 $Sigma$ 在第一卦限的部分，则下列选项中正确的是
    ],
    options: (
      [$iint_Sigma x dif S = 4 iint_(Sigma_1) x dif S$],
      [$iint_Sigma y dif S = 4 iint_(Sigma_1) y dif S$],
      [$iint_Sigma z dif S = 4 iint_(Sigma_1) z dif S$],
      [$iint_Sigma x y z dif S = 4 iint_(Sigma_1) x y z dif S$],
    ),
    answer: [C],
    solution: [
      上半球对 $x$、$y$ 为奇函数积分为 0，对第一卦限一般不为 0，A、B 错；
      $z$ 在各卦限对称且非负，上半球 $= 4 times$ 第一卦限部分，C 对；
      $x y z$ 在不同卦限变号，D 错。
    ],
  ),
  (
    kind: "choice",
    stem: [级数 $sum_(n=1)^oo (sin n a)/n^4$ 是],
    options: (
      [条件收敛级数],
      [绝对收敛级数],
      [发散级数],
      [敛散性不确定的级数],
    ),
    answer: [B],
    solution: [
      $|(sin n a)/n^4| <= 1/n^4$，由比较判别法绝对收敛。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    kind-title: [二、填空题（每小题3分，共24分）],
    stem: [
      已知直线 $x/2 = (y+2)/(-2) = (z-1)/1$ 与
      $(x-1)/4 = (y-3)/a = (z+1)/(-2)$ 相互垂直，则 $a =$
    ],
    answer: [$3$],
    solution: [
      方向向量 $(2,-2,1)$ 与 $(4,a,-2)$ 点积为 0：
      $8 - 2a - 2 = 0$，得 $a = 3$。
    ],
  ),
  (
    kind: "blank",
    stem: [点 $M(1, 0, -1)$ 在平面 $x + 2y + z = 12$ 上的投影点的坐标为],
    answer: [$(3, 4, 1)$],
    solution: [
      过 $M$ 作法线：$H = (1+t, 2t, -1+t)$ 代入平面得 $t=2$，
      故 $H = (3, 4, 1)$。
    ],
  ),
  (
    kind: "blank",
    stem: [设函数 $f$ 可微，$z = f(x+y, x y)$ 在点 $(x, y)$ 处的全微分 $dif z =$],
    answer: [$(f'_1 + y f'_2) dif x + (f'_1 + x f'_2) dif y$],
    solution: [
      $u=x+y$，$v=x y$，$dif z = f'_1 (dif x+dif y) + f'_2 (y dif x + x dif y)$。
    ],
  ),
  (
    kind: "blank",
    stem: [函数 $u = x y^2 + z^3 - x^2 y z$ 在点 $M(1, 1, 1)$ 处的最大方向导数为],
    answer: [$sqrt(6)$],
    solution: [
      $grad u|_M = (-1, 1, 2)$，$|grad u| = sqrt(6)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $I = iiint_Omega (dif v)/(1 + x^2 + y^2)$，其中空间闭区域 $Omega$ 由
      $z = sqrt(x^2 + y^2)$ 与 $z = 1$ 围成，则 $I$ 在柱面坐标系下的三次积分为
      （不用计算）
    ],
    answer: [$integral_0^(2 pi) dif theta integral_0^1 rho dif rho integral_rho^1 1/(1+rho^2) dif z$],
    solution: [
      $0 <= theta <= 2 pi$，$0 <= rho <= 1$，$rho <= z <= 1$，
      $dif v = rho dif z dif rho dif theta$，被积函数 $1/(1+rho^2)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $f(x)$ 为连续函数，$F(t) = integral_0^t dif y integral_y^t f(x) dif x$（$t > 0$），
      将 $F(t)$ 交换积分次序后有
    ],
    answer: [$integral_0^t x f(x) dif x$],
    solution: [
      域 $0<=y<=t$，$y<=x<=t$ ⇌ $0<=x<=t$，$0<=y<=x$，
      故 $F(t) = integral_0^t f(x) · x dif x$。
    ],
  ),
  (
    kind: "blank",
    stem: [设 $L$ 是直线 $3x + 4y = 12$（$0 <= x <= 4$）的一段，则 $integral_L (3x + 4y) dif s =$],
    answer: [$60$],
    solution: [
      在 $L$ 上 $3x+4y=12$，弧长 $5$，故积分 $12 · 5 = 60$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $f(x)$ 是周期为 $2 pi$ 的周期函数，它在区间 $[-pi, pi)$ 上的表达式为 $f(x) = x$，
      则 $f(x)$ 的傅里叶级数的和函数 $S(x)$ 在点 $x = (5 pi)/2$ 处的值为
    ],
    answer: [$pi/2$],
    solution: [
      $S((5 pi)/2) = S(pi/2) = f(pi/2) = pi/2$（内点连续）。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    kind-title: [三、计算题（14～17每小题8分，18～19每小题10分，共52分）],
    stem: [求曲线 $cases(2 x^2 + 3 y^2 + z^2 = 9, x + y + z = 2)$ 在点 $(1, -1, 2)$ 处的法平面方程。],
    solution: [
      $n_1 = (4x, 6y, 2z)|_((1,-1,2)) = (4,-6,4)$，$n_2 = (1,1,1)$，
      切向 $T = n_1 times n_2 = (-10, 0, 10)$，
      法平面：$-10(x-1) + 10(z-2) = 0$，即 $x - z = -1$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $z = f(x, y)$ 是由方程 $phi(c x - a z, c y - b z) = 0$ 所确定的隐函数，
      其中 $phi$ 具有一阶连续偏导数，求 $a (pd z)/(pd x) + b (pd z)/(pd y)$（$a, b, c$ 是常数）。
    ],
    solution: [
      $(pd z)/(pd x) = (c phi'_1)/(a phi'_1 + b phi'_2)$，
      $(pd z)/(pd y) = (c phi'_2)/(a phi'_1 + b phi'_2)$，
      故 $a z_x + b z_y = c$。
    ],
  ),
  (
    kind: "compute",
    stem: [计算 $iint_D y e^(x y) dif sigma$，其中闭区域 $D: 1/x <= y <= 1$，$1 <= x <= 2$。],
    solution: [
      $I = integral_1^2 dif x integral_(1/x)^1 y e^(x y) dif y$。
      内层 $integral y e^(x y) dif y = e^(x y)(x y - 1)/x^2$，得 $e^x (x-1)/x^2$。
      因 $(e^x / x)' = e^x (x-1)/x^2$，故 $I = [e^x / x]_1^2 = e^2/2 - e$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $integral_L (3 sin x + 2 x y - 4 x) dif x + (x^2 - e^y) dif y$，
      其中 $L$ 为摆线 $x = t - sin t$，$y = 1 - cos t$ 上从点 $O(0, 0)$ 到点 $A(pi, 2)$ 的一段弧。
    ],
    solution: [
      $P = 3 sin x + 2 x y - 4 x$，$Q = x^2 - e^y$，$P_y = 2x = Q_x$，与路径无关。
      取折线 $y=0$（$x:0->pi$）再 $x=pi$（$y:0->2$）：
      $integral_0^pi (3 sin x - 4 x) dif x + integral_0^2 (pi^2 - e^y) dif y = 7 - e^2$。
    ],
  ),
  (
    kind: "compute",
    stem: [求幂级数 $sum_(n=1)^oo (-1)^(n-1) (2n-1)/n x^n$ 的收敛半径、收敛域及和函数。],
    solution: [
      $R = 1$；端点 $x=±1$ 通项不趋于 0，发散；收敛域 $(-1, 1)$。
      $S(x) = 2 sum (-1)^(n-1) x^n - sum (-1)^(n-1) x^n / n
        = (2x)/(1+x) - ln(1+x)$，$x in (-1,1)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $I = iint_Sigma x z^2 dif y dif z + (x^2 y - z^3) dif z dif x + (2 x y + y^2 z) dif x dif y$，
      其中 $Sigma$ 是球面 $x^2 + y^2 + z^2 = a^2$（$a > 0$）上半部分的上侧。
    ],
    solution: [
      补 $Sigma_1: z=0$（下侧），散度 $div = z^2 + x^2 + y^2$，
      $iiint_Omega r^2 dif V$（上半球）$= 2/5 pi a^5$，
      底面积分中 $iint 2 x y dif x dif y = 0$，故 $I = (2/5) pi a^5$。
    ],
  ),

  // ===== 四、应用题 =====
  (
    kind: "short",
    kind-title: [四、应用题（9分）],
    stem: [
      将周长为 $2 p$ 的矩形绕它的一边旋转一周构成一个圆柱体，问：矩形的长、宽分别为多少时，
      可使得圆柱体体积最大？
    ],
    solution: [
      设边长 $x,y$，$x+y=p$。绕宽 $y$ 转：$V = pi x^2 y = pi x^2 (p-x)$，
      $V' = 0$ 得 $x = (2/3)p$，$y = (1/3)p$，最大体积 $(4/27) pi p^3$。
      （绕另一边则长宽互换。）
    ],
  ),
)

#book-section(section-title, problems)
