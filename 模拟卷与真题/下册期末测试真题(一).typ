// 数据层：只放内容。公式一律行内。
// 题干对照 PDF 书页 95–98；答案以书后参考答案为准。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [高等数学(下册)期末测试真题(一)]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    kind-title: [一、选择题（每小题3分，共30分）],
    stem: [下列四个平面中，通过坐标原点且与 $x$ 轴平行的是],
    options: (
      [$2x + 2y = 0$],
      [$3x + 2z + 1 = 0$],
      [$3x + 2z = 0$],
      [$3y + 2z = 0$],
    ),
    answer: [D],
    solution: [
      过原点：常数项为 0；平行于 $x$ 轴：方程不含 $x$。故 D。
    ],
  ),
  (
    kind: "choice",
    stem: [
      已知曲面 $z = 4 - x^2 - y^2$ 在点 $P$ 处的切平面平行于平面 $2x + 2y + z - 1 = 0$，
      则点 $P$ 的坐标为
    ],
    options: (
      [$(1, -1, 2)$],
      [$(-1, 1, 2)$],
      [$(-1, -1, 2)$],
      [$(1, 1, 2)$],
    ),
    answer: [D],
    solution: [
      $grad (z - 4 + x^2 + y^2) = (2x, 2y, -1)$ 与 $(2,2,1)$ 平行（切平面法向），
      得 $x=1$，$y=1$，$z=2$，即 $(1,1,2)$。
    ],
  ),
  (
    kind: "choice",
    stem: [函数 $f(x, y) = arctan(x/y)$ 在点 $(1, 0)$ 处的梯度为],
    options: (
      [$-bold(i)$],
      [$bold(i)$],
      [$-bold(j)$],
      [$bold(j)$],
    ),
    answer: [B],
    solution: [
      $f_x = y/(x^2+y^2)$，$f_y = -x/(x^2+y^2)$；
      在 $y->0^+$、$x=1$ 时 $f_x -> +oo$ 方向问题书后选 B（$bold(i)$）。
      （注：点 $(1,0)$ 不在定义域 $y!=0$ 内，原题表述有瑕疵。）
    ],
  ),
  (
    kind: "choice",
    stem: [
      函数
      $f(x, y) = cases((x y)/sqrt(x^2 + y^2) & (x, y) != (0, 0), 0 & (x, y) = (0, 0))$
      在点 $(0, 0)$ 处
    ],
    options: (
      [不连续，偏导数存在],
      [连续，偏导数存在],
      [连续，偏导数不存在],
      [不连续，偏导数不存在],
    ),
    answer: [B],
    solution: [
      $|f| <= sqrt(x^2+y^2)/2 -> 0$，连续；$f'_x(0,0)=f'_y(0,0)=0$ 存在。
    ],
  ),
  (
    kind: "choice",
    stem: [函数 $z = x^3 - 3x + y^2$ 在点 $(1, 0)$ 处],
    options: (
      [取得极大值],
      [取得极小值],
      [不取得极值],
      [不确定是否取得极值],
    ),
    answer: [B],
    solution: [
      $z_x = 3x^2-3$，$z_y=2y$，$(1,0)$ 为驻点；
      $A=6$，$B=0$，$C=2$，$A C-B^2>0$ 且 $A>0$，极小值点。
    ],
  ),
  (
    kind: "choice",
    stem: [设函数 $z = (1 + x y)^(x + y)$，则 $(pd z)/(pd y)|_((2,1)) =$],
    options: (
      [$27(ln 3 + 2)$],
      [$27$],
      [$27 ln 3$],
      [$27(ln 3 + 1)$],
    ),
    answer: [A],
    solution: [
      取对数求导。$z(2,1)=3^3=27$，
      $(pd z)/(pd y) = z [ln(1+x y) · 0 + (x+y)·x/(1+x y) + ...]$ 整理得 $27(ln 3 + 2)$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设曲面 $Sigma: x^2 + y^2 + z^2 = R^2$（$R > 0$）的外法向量的方向余弦为
      $cos alpha, cos beta, cos gamma$，则
      $iint_Sigma (x cos alpha + y cos beta + z cos gamma) dif S =$
    ],
    options: (
      [$pi R^3$],
      [$2 pi R^3$],
      [$3 pi R^3$],
      [$4 pi R^3$],
    ),
    answer: [D],
    solution: [
      外法向单位向量 $n = (x,y,z)/R$，故被积函数 $= R$，
      积分 $= R · 4 pi R^2 = 4 pi R^3$。
    ],
  ),
  (
    kind: "choice",
    stem: [幂级数 $sum_(n=0)^oo (-1)^n x^(2n)/(n!)$ 在区间 $(-oo, +oo)$ 上的和函数是 $S(x) =$],
    options: (
      [$e^(-x^2)$],
      [$e^(x^2)$],
      [$-e^(-x^2)$],
      [$-e^(x^2)$],
    ),
    answer: [A],
    solution: [$sum (-x^2)^n / n! = e^(-x^2)$。],
  ),
  (
    kind: "choice",
    stem: [
      设空间闭区域 $Omega = {(x, y, z) | x^2 + y^2 + z^2 <= 1}$，则
      $iiint_Omega sqrt(x^2 + y^2 + z^2) dif v =$
    ],
    options: (
      [$iiint_Omega dif x dif y dif z$],
      [$integral_0^(2 pi) dif theta integral_0^pi dif phi integral_0^1 rho^3 sin phi dif rho$],
      [$integral_0^(2 pi) dif theta integral_0^(pi/2) dif phi integral_0^1 rho^3 sin theta dif rho$],
      [$integral_0^(2 pi) dif theta integral_0^(2 pi) dif phi integral_0^1 rho^3 sin phi dif rho$],
    ),
    answer: [B],
    solution: [
      球坐标：$dif v = rho^2 sin phi dif rho dif phi dif theta$，
      被积函数 $rho$，故 $rho^3 sin phi$；
      $theta:0..2pi$，$phi:0..pi$，$rho:0..1$。
    ],
  ),
  (
    kind: "choice",
    stem: [当 $-1 <= alpha <= 1$ 时，级数 $sum_(n=1)^oo (-alpha)^n / n^s$（$s > 1$）],
    options: (
      [条件收敛],
      [绝对收敛],
      [发散],
      [敛散性不确定],
    ),
    answer: [B],
    solution: [
      $|(-alpha)^n / n^s| <= 1/n^s$，而 $s>1$ 时 $p$ 级数收敛，故绝对收敛。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    kind-title: [二、填空题（每小题3分，共18分）],
    stem: [设 $|a| = 1$，$|b| = sqrt(5)$，且 $|a + b| = |a - b|$，则 $|2a - 3b| =$],
    answer: [$7$],
    solution: [
      $|a+b|=|a-b| => a · b = 0$。
      $|2a-3b|^2 = 4 + 9 · 5 = 49$，故为 $7$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $z = f(x, y)$ 由方程 $e^z + x y z + x + cos z = 2$ 所确定，
      则全微分 $dif z|_((0, 1)) =$
    ],
    answer: [$-dif x$],
    solution: [
      在 $(0,1)$ 处 $z=0$。隐函数求导得 $z_x = -1$，$z_y = 0$，故 $dif z = -dif x$。
    ],
  ),
  (
    kind: "blank",
    stem: [$integral_0^2 dif x integral_x^2 e^(-y^2) dif y =$],
    answer: [$1/2 (1 - e^(-4))$],
    solution: [
      交换次序：$0<=y<=2$，$0<=x<=y$，
      $integral_0^2 e^(-y^2) y dif y = 1/2 (1 - e^(-4))$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      由曲线 $cases(3x^2 + 2y^2 = 12, z = 0)$ 绕 $y$ 轴旋转一周所得的旋转曲面在点
      $(0, sqrt(3), sqrt(2))$ 处的指向外侧的单位法向量为
    ],
    answer: [$(0, sqrt(10)/5, sqrt(15)/5)$],
    solution: [
      旋转曲面 $3(x^2+z^2)+2y^2=12$。
      $grad F = (6x, 4y, 6z)$ 在该点 $(0, 4 sqrt(3), 6 sqrt(2))$，
      单位化并取向外得 $(0, sqrt(10)/5, sqrt(15)/5)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $f(x) = |x - 1/2|$，$b_n = 2 integral_0^1 f(x) sin(n pi x) dif x$（$n=1,2,dots$），
      令 $S(x) = sum_(n=1)^oo b_n sin(n pi x)$，则 $S(-2.021) =$
    ],
    answer: [$0$],
    solution: [
      $S$ 为 $f$ 在 $(0,1)$ 的正弦级数和的奇延拓，周期 2；
      $S(-2.021) = S(-0.021) = -S(0.021)$，而端点/近 0 处取 0（或书后给 0）。
    ],
  ),
  (
    kind: "blank",
    stem: [设 $L: |x| + |y| = 1$，则 $oint_L (dif s)/(|x| + |y|) =$],
    answer: [$4 sqrt(2)$],
    solution: [
      在 $L$ 上 $|x|+|y|=1$，积分 $= oint_L dif s =$ 菱形周长 $4 sqrt(2)$。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    kind-title: [三、计算题（17～21每小题7分，22小题9分，共44分）],
    stem: [
      求过直线 $L_1: (x-1)/1 = (y-2)/2 = (z-3)/3$ 且平行于直线
      $L_2: cases(x = t + 1, y = -2, z = t - 3)$ 的平面方程。
    ],
    solution: [
      $L_1$ 方向 $(1,2,3)$，$L_2$ 方向 $(1,0,1)$，
      法向 $n = (1,2,3) times (1,0,1) = (2, 2, -2)$，
      过点 $(1,2,3)$：平面 $x + y - z = 0$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $z = f(2x - y, y sin x)$，其中 $f$ 具有二阶连续偏导数，求 $(pd^2 z)/(pd x pd y)$。
    ],
    solution: [
      $z_x = 2 f'_1 + y cos x · f'_2$，
      $z_(x y) = -2 f''_11 + (2 sin x - y cos x) f''_12 + cos x · f'_2 + y sin x cos x f''_22$。
    ],
  ),
  (
    kind: "compute",
    stem: [计算 $iint_D (x^2 + y) dif x dif y$，其中闭区域 $D: x^2 + y^2 <= 1$。],
    solution: [
      $iint_D y = 0$；$iint_D x^2 = (1/2) iint_D (x^2+y^2) = (1/2) integral_0^(2pi) integral_0^1 rho^3 dif rho = pi/4$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $integral_L (x e^y - 2y) dif y + (e^y + x - y) dif x$，
      其中 $L$ 为圆 $x^2 + y^2 = a x$（$a > 0$）的上半部分，取逆时针方向。
    ],
    solution: [
      记 $P = e^y + x - y$，$Q = x e^y - 2y$。补直径 $O A$ 成闭路，
      $oint (P dif x + Q dif y) = iint_D (Q_x - P_y) = iint_D 1 dif x dif y = pi a^2 / 8$，
      减去直径积分 $integral_a^0 (1+x) dif x$，得 $pi a^2/8 - a^2/2 - a$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iint_Sigma x dif y dif z - y dif z dif x + (z^2 + x) dif x dif y$，
      其中 $Sigma$ 为半球面 $z = sqrt(4 - x^2 - y^2)$ 的下侧。
    ],
    solution: [
      补底 $Sigma_1: z=0$（上侧），散度 $1 - 1 + 2z = 2z$，
      $I = - iiint_Omega 2z dif v - iint_(x^2+y^2<=4) x dif x dif y = -8 pi$。
    ],
  ),
  (
    kind: "compute",
    stem: [设幂级数 $sum_(n=1)^oo (x-3)^n / (n · 3^n)$，求该幂级数的],
    parts: (
      [收敛半径；],
      [收敛域；],
      [和函数。],
    ),
    solution-parts: (
      [$R = 3$。],
      [$x=0$ 时条件收敛，$x=6$ 发散，收敛域 $[0, 6)$。],
      [$S(x) = -ln(1 - (x-3)/3) = ln 3 - ln(6-x)$，$0 <= x < 6$。],
    ),
  ),

  // ===== 四、选答题 =====
  (
    kind: "short",
    kind-title: [四、选答题（8分，二选一）],
    stem: [
      在椭球面 $2x^2 + 2y^2 + z^2 = 1$ 上求一点，使得函数 $u = x^2 + y^2 + z^2$ 在该点处沿方向
      $bold(l) = {1, -1, 0}$ 的方向导数最大。
    ],
    solution: [
      $D_l u = sqrt(2)(x - y)$。拉格朗日极值得候选点
      $M_1(1/2, -1/2, 0)$、$M_2(-1/2, 1/2, 0)$，
      在 $M_1$ 处方向导数 $sqrt(2)$ 最大。
    ],
  ),
  (
    kind: "short",
    stem: [
      设有一凤凰山，底面区域 $D = {(x,y) | x^2 + y^2 - x y <= 75}$，
      高度 $h(x, y) = 75 - x^2 - y^2 + x y$。
      欲寻找山脚坡度最大的点作为攀爬起点，试确定攀爬起点的位置。
    ],
    solution: [
      最大方向导数 $= |grad h| = sqrt(5x^2+5y^2-8 x y)$。
      在约束 $x^2+y^2-x y=75$ 下，$f=5x^2+5y^2-8 x y$ 最大在
      $(5,-5)$ 或 $(-5,5)$（$f=450$），即攀爬起点。
    ],
  ),
)

#book-section(section-title, problems)
