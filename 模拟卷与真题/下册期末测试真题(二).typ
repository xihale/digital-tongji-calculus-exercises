// 数据层：只放内容。公式一律行内。
// 题干对照 PDF 书页 99–102；答案与过程经独立核验（原书笔误已改正）。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [高等数学(下册)期末测试真题(二)]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    kind-title: [一、选择题（每小题4分，共20分）],
    stem: [级数 $sum_(n=1)^oo (-1)^(n-1) / (n + (-1)^(n-1))$],
    options: (
      [绝对收敛],
      [条件收敛],
      [发散],
      [敛散性不确定],
    ),
    answer: [B],
    solution: [
      通项 $~ (-1)^(n-1)/n$，交错收敛；绝对值 $~ 1/n$ 发散，条件收敛。
    ],
  ),
  (
    kind: "choice",
    stem: [
      直线 $cases(x + 3y + 2z + 1 = 0, 2x - y - 10z + 3 = 0)$ 与平面
      $4x - 2y + z - 2 = 0$ 的位置关系是
    ],
    options: (
      [直线在平面内],
      [平行但不在平面内],
      [垂直],
      [相交但不垂直],
    ),
    answer: [C],
    solution: [
      $n_1=(1,3,2)$，$n_2=(2,-1,-10)$，
      $s = n_1 times n_2 = (-28, 14, -7) = -7(4,-2,1)$，
      与平面法向 $(4,-2,1)$ 平行，故直线垂直于平面。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $L: 4x^2 + y^2 = 1$，取正向，则
      $oint_L (-y dif x + x dif y)/(4x^2 + y^2) =$
    ],
    options: (
      [$-2 pi$],
      [$2 pi$],
      [$0$],
      [$pi$],
    ),
    answer: [D],
    solution: [
      在 $L$ 上 $4x^2+y^2=1$，积分即 $oint (-y dif x + x dif y)$。
      参数 $x=(1/2) cos t$，$y = sin t$，得 $pi$。
    ],
  ),
  (
    kind: "choice",
    stem: [设函数 $f(x, y) = (x y)/(x^2 + y^2)$，则 $lim_((x,y)->(0,0)) f(x, y)$],
    options: (
      [不存在],
      [$0$],
      [$1$],
      [无穷大],
    ),
    answer: [A],
    solution: [
      沿 $y=k x$ 极限为 $k/(1+k^2)$，随 $k$ 而变，极限不存在。
    ],
  ),
  (
    kind: "choice",
    stem: [
      $integral_0^2 dif x integral_0^(x^2) f(x, y) dif y + integral_2^sqrt(8) dif x integral_0^(sqrt(8-x^2)) f(x, y) dif y$
      交换积分次序后为
    ],
    options: (
      [$integral_0^4 dif y integral_(-sqrt(8-y^2))^2 f(x, y) dif x$],
      [$integral_0^2 dif y integral_0^(sqrt(8-y^2)) f(x, y) dif x$],
      [$integral_0^4 dif y integral_y^2 f(x, y) dif x$],
      [$integral_0^2 dif y integral_(sqrt(y))^(sqrt(8-y^2)) f(x,y) dif x + integral_2^4 dif y integral_(sqrt(y))^2 f(x,y) dif x$],
    ),
    answer: [D],
    solution: [
      区域 $D = D_1 union D_2$：
      $D_1: 0<=x<=2,\ 0<=y<=x^2$；$D_2: 2<=x<=sqrt(8),\ 0<=y<=sqrt(8-x^2)$。
      $y in [0,4]$。固定 $y$：
      - $0<=y<=2$ 时 $x$ 从 $sqrt(y)$ 到 $sqrt(8-y^2)$；
      - $2<=y<=4$ 时仅 $D_1$，故 $x$ 从 $sqrt(y)$ 到 $2$。
      故为选项 D。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    kind-title: [二、填空题（每小题4分，共20分）],
    stem: [已知 $|a| = 4$，向量 $a$ 与轴 $u$ 的夹角是 $pi/3$，则 $"Prj"_u a =$],
    answer: [$2$],
    solution: [$"Prj"_u a = |a| cos pi/3 = 4 · 1/2 = 2$。],
  ),
  (
    kind: "blank",
    stem: [曲面 $x^3 + y^3 + z^3 + x y z - 6 = 0$ 在点 $(1, 2, -1)$ 处的切平面方程是],
    answer: [$x + 11 y + 5 z = 18$],
    solution: [
      $F_x = 3x^2 + y z$，$F_y = 3y^2 + x z$，$F_z = 3z^2 + x y$，
      在点处 $(1, 11, 5)$，切平面 $1(x-1)+11(y-2)+5(z+1)=0$，
      即 $x + 11y + 5z = 18$。
    ],
  ),
  (
    kind: "blank",
    stem: [平面曲线 $x = y^2/4 - (ln y)/2$（$1 <= y <= e$）的弧长为],
    answer: [$1/4 (e^2 + 1)$],
    solution: [
      $x' = y/2 - 1/(2y)$，$sqrt(1+(x')^2) = (y + 1/y)/2$，
      $L = integral_1^e (y+1/y)/2 dif y = 1/4 (e^2 + 1)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      函数 $u = ln(x + sqrt(y^2 + z^2))$ 在点 $A(1, 0, 1)$ 处从点 $A$ 到点 $B(3, -2, 2)$ 的方向导数为
    ],
    answer: [$1/2$],
    solution: [
      记 $R=sqrt(y^2+z^2)$，$grad u = (1/(x+R), y/((x+R)R), z/((x+R)R))$，
      在 $A(1,0,1)$：$grad u = (1/2, 0, 1/2)$；
      $arrow(A B)=(2,-2,1)$，$|A B|=3$，$e=(2/3,-2/3,1/3)$，
      $D_e u = (1/2)(2/3) + (1/2)(1/3) = 1/2$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $f(x) = cases(x & 0 < x <= 1, 1 - x & 1 < x <= 2)$，
      $S(x) = a_0/2 + sum_(n=1)^oo a_n cos((n pi x)/2)$ 是其傅里叶级数，则 $S(7) =$
    ],
    answer: [$1/2$],
    solution: [
      余弦级数对应偶延拓，周期 $4$：$S(7)=S(7-8)=S(-1)=S(1)$。
      $x=1$ 处左极限 $1$、右极限 $0$，间断点取均值 $S(1)=(1+0)/2=1/2$，
      故 $S(7)=1/2$。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    kind-title: [三、计算题（11～15每小题7分，16～17每小题9分，18小题7分，共60分）],
    stem: [
      计算 $iint_D e^(-x^2 - y^2) dif x dif y$，其中 $D$ 是由中心在坐标原点、半径为 $R$ 的圆所围成的闭区域
    ],
    solution: [
      极坐标：$integral_0^(2 pi) dif theta integral_0^R rho e^(-rho^2) dif rho = pi(1 - e^(-R^2))$。
    ],
  ),
  (
    kind: "compute",
    stem: [求过点 $M(2, 1, 3)$ 且与直线 $(x+1)/3 = (y-1)/2 = z/(-1)$ 垂直的直线方程],
    solution: [
      过 $M$ 且垂直于已知直线的平面：$3(x-2)+2(y-1)-(z-3)=0$，即 $3x+2y-z=5$。
      已知直线与该平面交于 $(2/7, 13/7, -3/7)$，
      所求直线：$(x-2)/2 = (y-1)/(-1) = (z-3)/4$；
      或两平面交线 $cases(3x+2y-z-5=0, x-2y-z+3=0)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $z = f(x y, x/y) + g(x^2 - y^2)$，其中 $f$ 具有二阶连续偏导数，$g$ 具有二阶连续导数，
      求 $(pd^2 z)/(pd x pd y)$
    ],
    solution: [
      $u=x y$，$v=x/y$，则
      $(pd z)/(pd x) = y f'_1 + f'_2 / y + 2x g'$。
      再对 $y$ 求偏导：
      $partial_y (y f'_1) = f'_1 + y(x f''_11 - (x/y^2) f''_12)$，
      $partial_y (f'_2/y) = (x/y) f''_12 - (x/y^3) f''_22 - f'_2/y^2$，
      $partial_y (2x g') = -4 x y g''$。
      $f''_12$ 交叉项相消，得
      $(pd^2 z)/(pd x pd y) = f'_1 - f'_2/y^2 + x y f''_11 - (x/y^3) f''_22 - 4 x y g''$。
    ],
  ),
  (
    kind: "compute",
    stem: [求函数 $f(x, y) = e^(2x)(x + y^2 + 2y)$ 的极值],
    solution: [
      驻点 $(1/2, -1)$；$A=2e>0$，$B=0$，$C=2e$，$A C-B^2>0$，
      极小值 $f(1/2,-1) = -e/2$。
    ],
  ),
  (
    kind: "compute",
    stem: [已知幂级数 $sum_(n=0)^oo (n+1)(n+2)(x-1)^n$，求其收敛域及和函数],
    solution: [
      收敛半径 $R=1$，端点发散，收敛域 $(0, 2)$；
      和函数 $S(x) = 2/(2-x)^3$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算
      $iint_Sigma x^3 dif y dif z + [1/z f(y/z) + y^3] dif z dif x + [1/y f(y/z) + z^3] dif x dif y$，
      其中 $f$ 具有一阶连续导数，$Sigma$ 为锥面 $x = sqrt(y^2 + z^2)$ 和球面 $x^2 + y^2 + z^2 = 1$
      所围立体表面的外侧
    ],
    solution: [
      散度 $3(x^2+y^2+z^2)$（$f$ 项抵消），
      球坐标在 $0<=phi<=pi/4$ 积分得 $(3/5)(2-sqrt(2)) pi$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $integral_L (2 x y^3 - y^2 cos x) dif x + (1 - 2 y sin x + 3 x^2 y^2) dif y$，
      其中 $L$ 为抛物线 $2x = pi y^2$ 上从点 $(0,0)$ 到点 $(pi/2, 1)$ 的一段弧
    ],
    solution: [
      $P_y = Q_x$，与路径无关。取折线 $(0,0)->(pi/2,0)->(pi/2,1)$，
      得 $pi^2/4$。
    ],
  ),
  (
    kind: "proof",
    stem: [
      设函数 $f(x, y) = |x - y| g(x, y)$，其中函数 $g(x, y)$ 在点 $(0, 0)$ 的某邻域内连续。
      试讨论 $f$ 在 $(0,0)$ 处的偏导数与可微性（提示：与 $g(0,0)$ 是否为 0 有关）
    ],
    solution: [
      当 $g(0,0)=0$ 时，$f'_x(0,0)=f'_y(0,0)=0$，且
      $(Delta f - dif f)/rho -> 0$，故可微；
      当 $g(0,0)!=0$ 时，偏导一般不存在（左右极限差号）。
    ],
  ),
)

#book-section(section-title, problems)
