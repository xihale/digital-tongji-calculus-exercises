// 数据层：只放内容。公式一律行内。
// 题干对照 PDF 书页 87–90；答案与过程经独立核验。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [高等数学(下册)期末测试模拟卷(一)]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    kind-title: [一、选择题（每小题3分，共15分）],
    stem: [若函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处可微，则 $f(x, y)$ 在点 $(x_0, y_0)$ 处不一定],
    options: (
      [连续],
      [偏导数存在],
      [偏导数连续],
      [曲面 $z = f(x, y)$ 的切平面存在],
    ),
    answer: [C],
    solution: [
      可微 ⇒ 连续、偏导存在、切平面存在；但偏导未必连续（偏导连续是可微的充分条件）。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $f(x)$ 为连续函数，$F(t) = integral_1^t dif y integral_y^t f(x) dif x$，则 $F'(2) =$
    ],
    options: ([$2 f(2)$], [$f(2)$], [$-f(2)$], [$0$]),
    answer: [B],
    solution: [
      积分域 $1 <= y <= t$，$y <= x <= t$；交换次序得 $1 <= x <= t$，$1 <= y <= x$，
      故 $F(t) = integral_1^t (x-1) f(x) dif x$，$F'(t) = (t-1) f(t)$，从而 $F'(2) = f(2)$。
    ],
  ),
  (
    kind: "choice",
    stem: [将 $x O y$ 面上的双曲线 $x^2/3 - 4 y^2 = 1$ 绕 $y$ 轴旋转一周所得旋转曲面的方程为],
    options: (
      [$x^2/3 - 4 y^2 - 4 z^2 = 1$],
      [$x^2/3 - 4 y^2 + 4 z^2 = 1$],
      [$x^2/3 + y^2/3 - 4 z^2 = 1$],
      [$x^2/3 - 4 y^2 + z^2/3 = 1$],
    ),
    answer: [D],
    solution: [
      绕 $y$ 轴旋转时，$x^2$ 换为 $x^2 + z^2$，得 $x^2/3 + z^2/3 - 4 y^2 = 1$，即 D。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $L: x^2 + y^2 = 1$，取顺时针方向，则
      $oint_L (x dif y - y dif x)/(x^2 + y^2) =$
    ],
    options: ([$0$], [$2 pi$], [$-2 pi$], [$pi$]),
    answer: [C],
    solution: [
      在 $L$ 上 $x^2+y^2=1$，积分即 $oint_L (x dif y - y dif x)$。
      逆时针为 $2 pi$，顺时针为 $-2 pi$。
    ],
  ),
  (
    kind: "choice",
    stem: [下列级数中，条件收敛的是],
    options: (
      [$sum_(n=1)^oo (-1)^n sqrt(n/(n+1))$],
      [$sum_(n=1)^oo (-1)^(n-1) / sqrt(n(n+1))$],
      [$sum_(n=1)^oo (-1)^(n-1) / (n(n+1))$],
      [$sum_(n=1)^oo (-1)^(n-1) / 2^n$],
    ),
    answer: [B],
    solution: [
      A 通项不趋于 0，发散；B 绝对级数 $tilde 1/n$ 发散，交错收敛（莱布尼茨），条件收敛；
      C 绝对收敛；D 绝对收敛（几何级数）。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    kind-title: [二、填空题（每小题3分，共15分）],
    stem: [已知 $|a| = 2$，$|b| = sqrt(2)$，且 $a · b = 2$，则 $|a times b| =$],
    answer: [$2$],
    solution: [
      $|a times b|^2 = |a|^2 |b|^2 - (a · b)^2 = 4 · 2 - 4 = 4$，故 $|a times b| = 2$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      函数 $u = x y^2 + z^3 - x y z$ 在点 $(1, 1, 2)$ 处沿方向角为
      $alpha = pi/3$，$beta = pi/4$，$gamma = pi/3$ 的方向的方向导数为
    ],
    answer: [$5$],
    solution: [
      $u_x = y^2 - y z$，$u_y = 2 x y - x z$，$u_z = 3 z^2 - x y$，
      在 $(1,1,2)$ 处 $grad u = (-1, 0, 11)$；
      单位方向 $e = (1/2, sqrt(2)/2, 1/2)$，
      故 $D_e u = -1/2 + 0 + 11/2 = 5$。
    ],
  ),
  (
    kind: "blank",
    stem: [曲面 $x^2 + 2 y^2 + z - x e^z = 4$ 在点 $(0, 1, 2)$ 处的切平面方程为],
    answer: [$e^2 x - 4 y - z + 6 = 0$],
    solution: [
      令 $F = x^2 + 2 y^2 + z - x e^z - 4$，
      $F_x = 2x - e^z$，$F_y = 4y$，$F_z = 1 - x e^z$。
      在 $(0,1,2)$：$grad F = (-e^2, 4, 1)$，
      切平面 $-e^2 x + 4(y-1) + (z-2) = 0$，即 $e^2 x - 4 y - z + 6 = 0$。
    ],
  ),
  (
    kind: "blank",
    stem: [设曲面 $Sigma$ 为上半球面 $z = sqrt(2 - x^2 - y^2)$，则 $iint_Sigma (y + 1) dif S =$],
    answer: [$4 pi$],
    solution: [
      关于 $y$ 对称，$iint_Sigma y dif S = 0$；
      $iint_Sigma 1 dif S$ 为半径 $sqrt(2)$ 的上半球面面积 $2 pi R^2 = 4 pi$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $f(x)$ 是周期为 $2 pi$ 的周期函数，且
      $f(x) = cases(1 - x & -pi <= x < 0, 1 + x & 0 <= x < pi)$，
      $S(x)$ 为 $f(x)$ 的傅里叶级数的和函数，则 $S(-3 pi) =$
    ],
    answer: [$1 + pi$],
    solution: [
      $S(-3 pi) = S(-pi)$；在间断点取左右极限平均：
      $f(-pi^+) = 1+pi$，$f(pi^-) = 1+pi$，故 $S(-pi) = 1+pi$。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    kind-title: [三、计算题（11～12每小题6分，13～17每小题7分，18小题8分，19小题10分，20小题5分，共70分）],
    stem: [
      设函数 $z = f(x, y)$ 的全微分为 $dif z = (4 - 2x) dif x - (2y + 4) dif y$，
      试确定 $f(x, y)$ 的极值点，并判别该点是极大值点还是极小值点。
    ],
    solution: [
      由 $f'_x = 4-2x$，$f'_y = -2y-4$，令二者为 0 得驻点 $(2, -2)$。
      $A = f''_(x x) = -2$，$B = f''_(x y) = 0$，$C = f''_(y y) = -2$，
      $A C - B^2 = 4 > 0$ 且 $A < 0$，故 $(2,-2)$ 为极大值点。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iint_D cos(x/y) dif x dif y$，其中 $D$ 为由直线 $x = 0$，$y = pi/2$，$y = pi$
      及抛物线 $x = y^2$ 所围成的平面区域。
    ],
    solution: [
      $I = integral_(pi/2)^pi dif y integral_0^(y^2) cos(x/y) dif x
        = integral_(pi/2)^pi y (sin y) dif y = pi - 1$。
    ],
  ),
  (
    kind: "compute",
    stem: [设函数 $z = f(x/y, y/x)$，其中 $f$ 具有一阶连续偏导数，求 $dif z$。],
    solution: [
      记 $f'_1 = partial f \/ partial u$，$f'_2 = partial f \/ partial v$（$u=x/y$，$v=y/x$），则
      $(pd z)/(pd x) = (1/y) f'_1 - (y/x^2) f'_2$，
      $(pd z)/(pd y) = -(x/y^2) f'_1 + (1/x) f'_2$，
      故 $dif z = ((1/y) f'_1 - (y/x^2) f'_2) dif x + ((1/x) f'_2 - (x/y^2) f'_1) dif y$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求曲线 $cases(x^2 + 2 y^2 + z^2 = 10, x - y + z = 0)$ 在点 $(1, 2, 1)$ 处的切线方程。
    ],
    solution: [
      $grad F = (2x, 4y, 2z)$，$grad G = (1, -1, 1)$；
      在 $(1,2,1)$：$n_1 = (2,8,2) = 2(1,4,1)$，$n_2 = (1,-1,1)$，
      方向 $s = n_1 times n_2 ~ (1, 0, -1)$，
      切线：$(x-1)/1 = (y-2)/0 = (z-1)/(-1)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $f(u)$ 具有一阶连续导数，且 $f(0) = 0$，$f'(0) = 1$，求
      $lim_(t -> 0^+) 1/t^3 iint_(x^2 + y^2 <= t^2) f(sqrt(x^2 + y^2)) dif x dif y$。
    ],
    solution: [
      极坐标：$lim_(t->0^+) (2 pi integral_0^t f(rho) rho dif rho)/t^3
        = (2 pi)/3 lim_(t->0^+) f(t)/t = (2 pi)/3 f'(0) = (2 pi)/3$。
    ],
  ),
  (
    kind: "compute",
    stem: [计算 $oint_L (y^2 + x) dif s$，其中 $L$ 为圆 $x^2 + y^2 = 4$。],
    solution: [
      参数 $x=2 cos theta$，$y=2 sin theta$，$dif s = 2 dif theta$，
      $oint = integral_0^(2 pi) (4 sin^2 theta + 2 cos theta) · 2 dif theta = 8 pi$；
      或由对称性 $oint y^2 dif s = (1/2) oint 4 dif s$，$oint x dif s = 0$。
    ],
  ),
  (
    kind: "compute",
    stem: [将函数 $f(x) = 1/(x^2 + 4x + 3)$ 展开成 $(x - 1)$ 的幂级数。],
    solution: [
      $f(x) = 1/((x+1)(x+3)) = 1/(2(1+x)) - 1/(2(3+x))$
      $= 1/(4(1+(x-1)/2)) - 1/(8(1+(x-1)/4))$。
      展开得 $f(x) = sum_(n=0)^oo (-1)^n (1/2^(n+2) - 1/2^(2n+3)) (x-1)^n$，
      收敛域 $-1 < x < 3$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $f(x)$ 在区间 $(-oo, +oo)$ 上具有连续导数，$L$ 是上半平面 $(y > 0)$ 内以点 $(a, b)$ 为起点、
      点 $(c, d)$ 为终点的有向分段光滑曲线，记
      $I = integral_L [1/y + y f(x y)] dif x + [x f(x y) - x/y^2] dif y$。
    ],
    parts: (
      [证明：曲线积分 $I$ 与路径 $L$ 无关；],
      [当 $a b = c d$ 时，计算 $I$ 的值。],
    ),
    solution-parts: (
      [
        记 $P = 1/y + y f(x y)$，$Q = x f(x y) - x/y^2$。
        $(pd P)/(pd y) = -1/y^2 + f(x y) + x y f'(x y) = (pd Q)/(pd x)$，
        故在 $y>0$ 内与路径无关。
      ],
      [
        取折线路径或势函数 $U = x/y + F(x y)$（$F'=f$），
        $I = c/d - a/b + F(c d) - F(a b)$；
        当 $a b = c d$ 时，$I = c/d - a/b$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [
      计算 $I = iint_Sigma [f_y (x, y) + x^3] dif y dif z + [y^3 - f_x (x, y)] dif z dif x + z^3 dif x dif y$，
      其中 $f(x, y)$ 具有二阶连续偏导数，$Sigma$ 为锥面 $z = sqrt(x^2 + y^2)$（$0 <= z <= 1$）的下侧。
    ],
    solution: [
      取辅助面 $Sigma_1: z=1$（$x^2+y^2<=1$）上侧，与锥面 $Sigma$（下侧）围成
      $Omega: rho <= z <= 1$。高斯公式得
      $I = 3 iiint_Omega (x^2+y^2+z^2) dif V - iint_(Sigma_1) z^3 dif x dif y$
      （$f_(x y)$ 与 $-f_(x y)$ 抵消）。
      柱坐标：$iiint_Omega (x^2+y^2+z^2) dif V = (3 pi)/10$，
      $iint_(Sigma_1) 1 dif x dif y = pi$，故 $I = 9 pi/10 - pi = -pi/10$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设幂级数 $sum_(n=0)^oo a_n x^n$ 在 $(-oo, +oo)$ 上收敛，且
      $a_0 = 0$，$a_1 = 1$，$a_2 = 0$，$a_(n+2) = 2/((n+1)) a_n$（$n = 0, 1, 2, dots$），
      求该级数的和函数 $S(x)$。
    ],
    solution: [
      偶项全为 0；$a_(2n+1) = 1/n!$（$n = 0, 1, 2, dots$），
      故 $S(x) = sum_(n=0)^oo x^(2n+1)/n! = x e^(x^2)$（$-oo < x < +oo$）。
    ],
  ),
)

#book-section(section-title, problems)
