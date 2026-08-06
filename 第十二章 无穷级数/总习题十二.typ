// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section, blank

#let section-title = [总习题十二]

#let problems = (
  (
    kind: "judge",
    kind-title: [一、判断题],
    stem: [
      若级数 $sum_(n=1)^oo u_n$ 收敛，则 $lim_(n arrow oo) u_n = 0$。
    ],
    answer: [√],
    solution: [
      级数收敛的必要条件是通项趋于 0。
    ],
  ),
  (
    kind: "judge",
    stem: [
      若级数 $sum_(n=1)^oo u_n$ 收敛，$sum_(n=1)^oo v_n$ 发散，则级数 $sum_(n=1)^oo (u_n + v_n)$ 发散。
    ],
    answer: [√],
    solution: [
      若 $sum(u_n+v_n)$ 收敛，则 $sum v_n = sum(u_n+v_n) - sum u_n$ 也收敛，矛盾。
    ],
  ),
  (
    kind: "judge",
    stem: [
      级数加括号后不改变其敛散性。
    ],
    answer: [×],
    solution: [
      发散级数加括号后可能收敛，例如 $1-1+1-1+dots$ 发散，但 $(1-1)+(1-1)+dots = 0+0+dots = 0$ 收敛。
    ],
  ),
  (
    kind: "judge",
    stem: [
      正项级数收敛的充要条件是前 $n$ 项和构成的数列 $(s_n)$ 有界。
    ],
    answer: [√],
    solution: [
      正项级数部分和数列单调递增，单调递增数列收敛当且仅当有界。
    ],
  ),
  (
    kind: "judge",
    stem: [
      若正项级数 $sum_(n=1)^oo u_n$ 收敛，则级数 $sum_(n=1)^oo sqrt(u_n u_(n+1))$ 也收敛。
    ],
    answer: [√],
    solution: [
      由均值不等式 $sqrt(u_n u_(n+1)) <= (u_n + u_(n+1))/(2)$，右端为收敛级数的线性组合，故左端级数收敛。
    ],
  ),
  (
    kind: "judge",
    stem: [
      若 $(lim_(n arrow oo) u_n)/(v_n)= l$ ($0 < l < +oo$)，则级数 $sum_(n=1)^oo u_n$ 和 $sum_(n=1)^oo v_n$ 有相同的敛散性。
    ],
    answer: [√],
    solution: [
      这是极限比较审敛法的结论。
    ],
  ),
  (
    kind: "choice",
    kind-title: [二、选择题],
    stem: [
      当级数 $sum_(n=1)^oo (a_n + b_n)$ 收敛时，级数 $sum_(n=1)^oo a_n$ 与 $sum_(n=1)^oo b_n$。
    ],
    options: (
      [必同时收敛],
      [必同时发散],
      [可能同时发散],
      [不可能同时收敛],
    ),
    answer: [C],
    solution: [
      取 $a_n = n, b_n = -n$，则 $a_n + b_n = 0$ 收敛，但 $sum a_n, sum b_n$ 都发散。故选 C。
    ],
  ),
  (
    kind: "choice",
    stem: [
      在正项级数中，$sum_(n=1)^oo a_n$ 收敛是级数 $sum_(n=1)^oo a_n^2$ 收敛的。
    ],
    options: (
      [充分条件],
      [必要条件],
      [充要条件],
      [无关条件],
    ),
    answer: [A],
    solution: [
      若 $sum a_n$ 收敛，则 $a_n -> 0$，当 $n$ 足够大时 $a_n < 1$，故 $a_n^2 < a_n$，由比较审敛法知 $sum a_n^2$ 收敛。但反之不成立，例如 $a_n = 1/n$ 时 $sum a_n^2$ 收敛但 $sum a_n$ 发散。故为充分条件。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $sum_(n=1)^oo a_n$ 为任意项级数，若 $|a_n| > |a_(n+1)|$ 且 $lim_(n arrow oo) a_n = 0$，则该级数。
    ],
    options: (
      [条件收敛],
      [绝对收敛],
      [发散],
      [敛散性不确定（符号未定）],
    ),
    answer: [D],
    solution: [
      莱布尼茨判别法只适用于交错级数（$a_n$ 符号交替）。这里 $a_n$ 的符号未定，故无法判断敛散性。
    ],
  ),
  (
    kind: "choice",
    stem: [
      若函数 $y =(sum_(n=0)^oo x^n)/((n!)^2)$，则 $x y'' + y' =$。
    ],
    options: (
      [$y$],
      [$2y$],
      [$(y)/(4)$],
      [0],
    ),
    answer: [A],
    solution: [
      逐项求导： \
          $y' =(sum_(n=1)^oo (n x^(n-1)))/((n!)^2)=(sum_(n=0)^oo x^n)/(n!(n+1)!)$， \
          $y'' =(sum_(n=2)^oo (n(n-1)x^(n-2)))/((n!)^2)=(sum_(n=0)^oo x^n)/(n!(n+2)!)$。 \
          因而 \
          $x y'' + y' = sum_(n=0)^oo [(x^(n+1))/(n!(n+2)!)+(x^n)/(n!(n+1)!)]$。 \
          把第一项换指标并合并，可得每阶系数恰为 $(1)/((n!)^2)$，故 \
          $x y'' + y' =(sum_(n=0)^oo x^n)/((n!)^2)= y$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      若级数 $sum_(n=0)^oo a_n (x - 1)^n$ 在点 $x = -1$ 处收敛，则该级数在点 $x = 2$ 处。
    ],
    options: (
      [发散],
      [条件收敛],
      [绝对收敛],
      [敛散性不确定],
    ),
    answer: [C],
    solution: [
      收敛中心为 $x_0=1$。在 $x=-1$ 处收敛，故 $R >= |-1-1| = 2$。$x=2$ 到中心距离为 1，在收敛圆内部，必绝对收敛。
    ],
  ),
  (
    kind: "choice",
    stem: [
      级数 $(1)/(2)-(1)/(4)+(1)/(8)- dots +((-1)^(n-1))/(2^n)+ dots$ 的和为。
    ],
    options: (
      [$(1)/(2)$],
      [1],
      [$(1)/(3)$],
      [$(2)/(3)$],
    ),
    answer: [C],
    solution: [
      公比 $q = -(1)/(2)$，首项 $a = (1)/(2)$。$S =(a)/(1-q) = ((1)/(2))/((3)/(2)) = (1)/(3)$。
    ],
  ),
  (
    kind: "blank",
    kind-title: [三、填空题],
    stem: [
      幂级数 $(sum_(n=0)^oo x^n)/(n!)$ 的收敛区间为
    ],
    answer: [$(-oo, +oo)$],
    solution: [
      由比值法： \
          $u_n=(x^n)/(n!)$， \
          $abs((u_(n+1))/(u_n))=(abs(x))/((n+1) arrow 0)< 1$（任意实数 $x$）。 \
          故级数对一切 $x in RR$ 收敛， \
          收敛区间为 $(-oo,+oo)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      级数 $(sum_(n=0)^oo 1)/(1 + a^n)$ ($a > 0$) 当 $a$ 满足条件 #blank() 时收敛
    ],
    answer: [$a > 1$],
    solution: [
      若 $0<a<=1$，则 $a^n<=1$， \
          故 \
          $(1)/(1+a^n)>=(1)/(2)$，通项不趋于 0，级数发散。 \
          若 $a>1$，当 $n$ 大时 \
          $(1)/(1+a^n)<=(1)/(a^n)$，与收敛等比级数比较可知收敛。 \
          故收敛条件为 $a>1$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      幂级数 $(sum_(n=1)^oo ((-1)^n x^(3n-1)))/(n dot 8^n)$ 的收敛域为
    ],
    answer: [$(-2, 2]$],
    solution: [
      写成 \
          $(1)/(x sum_(n=1)^oo (((-1)^n)/(n))((x^3)/(8))^n)$。 \
          由对数级数可知需满足 $(|x^3)/(8|<1)$，即 $|x|<2$。 \
          端点检验： \
          $x=2$ 时为交错调和型收敛； \
          $x=-2$ 时为调和型发散。 \
          故收敛域为 \
          $(-2,2]$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      级数 $sum_(n=1)^oo (u_n - 2)$ 收敛，则 $lim_(n arrow oo) u_n =$
    ],
    answer: [$2$],
    solution: [
      级数收敛的必要条件是通项趋于 0， \
          即 \
          $lim_(n arrow oo) (u_n - 2) = 0$。 \
          因而 \
          $lim_(n arrow oo) u_n = 2$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      幂级数 $(sum_(n=0)^oo x^n)/(3^n + (-2)^n + 3 dot 2^n)$ 的收敛半径 $R =$
    ],
    answer: [$3$],
    solution: [
      当 $n$ 大时分母主导项为 $3^n$， \
          故系数 \
          $a_n=(1)/(3^n+(-2)^n+3 dot 2^n)$ 与 $(1)/(3^n)$ 同阶。 \
          用根值法： \
          $lim_(n arrow oo) root(n, abs(a_n))=(1)/(3)$， \
          故收敛半径 \
          $R=(1)/((1)/(3))=3$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $f(x)$ 是周期为 $2 pi$ 的周期函数，且 $f(x) = cases(0 & "if" -pi <= x < 0, x + 2 & "if" 0 <= x < pi)$。则 $f(x)$ 的傅里叶级数在点 $x = 0$ 处收敛于
    ],
    answer: [$1$],
    solution: [
      傅里叶级数在间断点收敛到左右极限平均值。 \
          在 $x=0$ 处： \
          $f(0^-)=0, f(0^+)=2$。 \
          因而 \
          $S(0)=(1)/(2(0+2))=1$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [四、计算题],
    stem: [
      计算 $iint_D (x^2 + y) dif x dif y$，其中 $D$ 是由 $x^2 + y^2 <= 1$ 围成的闭区域。
    ],
    solution: [
      $(pi)/(4)$

      利用圆域对称性， \
          $iint_D y dif x dif y = 0$。 \
          又由 $x,y$ 对称， \
          $iint_D x^2 dif x dif y =(1)/(2 iint_D (x^2+y^2) dif x dif y)$。 \
          改用极坐标： \
          $iint_D (x^2+y^2) dif x dif y = int_0^(2 pi) int_0^1 r^2 dot r dif r dif theta = 2 pi int_0^1 r^3 dif r =(pi)/(2)$。 \
          所以 \
          $iint_D (x^2+y) dif x dif y = iint_D x^2 dif x dif y =(1)/(2 dot ((pi)/(2)))$ \
          $=(pi)/(4)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求幂级数 $(sum_(n=1)^oo (n^2 + 1))/(n x^(2n))$ ($|x| < 1$) 在收敛区间内的和函数，并求 $(sum_(n=1)^oo (n^2 + 1))/(n dot 2^n)$ 的和。
    ],
    solution: [
      拆项： \
          $(sum_(n=1)^oo (n^2+1))/(n x^(2n))=sum n x^(2n)+(sum x^(2n))/(n)$。 \
          其中 \
          $sum n t^n=(t)/((1-t)^2)$，取 $t=x^2$ 得 \
          $sum n x^(2n)=(x^2)/((1-x^2)^2)$； \
          又 \
          $(sum x^(2n))/(n)=-ln(1-x^2)$。 \
          故 \
          $S(x)=(x^2)/((1-x^2)^2)-ln(1-x^2)$。 \
          再取 $x^2=(1)/(2)$（即 $x=(1)/(sqrt(2))$）得到 \
          $(sum_(n=1)^oo (n^2+1))/(n dot 2^n)=S((1)/(sqrt(2)))=2+ln 2$。
    ],
  ),
  (
    kind: "choice",
    kind-title: [一、选择题（每小题3分，共15分）],
    stem: [
      若函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处可微，则 $f(x, y)$ 在点 $(x_0, y_0)$ 处不一定。
    ],
    options: (
      [连续],
      [偏导数存在],
      [偏导数连续],
      [曲面 $z = f(x, y)$ 的切平面存在],
    ),
    answer: [C],
  ),
  (
    kind: "choice",
    stem: [
      设 $f(x)$ 为连续函数，$F(t) = int_1^t dif y int_y^t f(x) dif x$，则 $F'(2) =$ 。
    ],
    answer: [$int_1^2 f(x) dif x$],
    solution: [
      利用交换积分次序或变限积分求导：$F(t) = int_1^t dif x f(x) int_1^x dif y = int_1^t (x-1) f(x) dif x$（此路不通，原限为 $y$ 到 $t$）。 \
          正确次序：$1 <= y <= t, y <= x <= t => 1 <= x <= t, 1 <= y <= x$。 \
          $F(t) = int_1^t f(x) (x-1) dif x$。 \
          $F'(t) = (t-1) f(t)$。 \
          *注：若按原题结果 $int_1^2 f(x) dif x$，则 $F(t) = int_1^t dif x int_1^x f(y) dif y$。*
    ],
  ),
  (
    kind: "choice",
    stem: [
      将 $x O y$ 面上的双曲线 $(x^2)/(3)- 4y^2 = 1$ 绕 $y$ 轴旋转一周所得旋转曲面的方程为。
    ],
    options: (
      [$(x^2)/(3)- 4y^2 - 4z^2 = 1$],
      [$(x^2)/(3)- 4y^2 + 4z^2 = 1$],
      [$(x^2)/(3)+(y^2)/(3)- 4z^2 = 1$],
      [$(x^2)/(3)- 4y^2 +(z^2)/(3)= 1$],
    ),
    answer: [D],
  ),
  (
    kind: "choice",
    stem: [
      设 $L: x^2 + y^2 = 1$，取顺时针方向，则 $(oint_L (x dif y - y dif x))/(x^2 + y^2)=$ 。
    ],
    answer: [$-2 pi$],
    solution: [
      在 $L$ 上 $x^2+y^2=1$。积分化为 $oint_L (x dif y - y dif x)$。 \
          逆时针方向结果为 $2 pi$，故顺时针为 $-2 pi$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      下列级数中，条件收敛的是。
    ],
    options: (
      [$sum_(n=1)^oo (-1)^n sqrt((n)/(n+1))$],
      [$(sum_(n=1)^oo (-1)^(n-1))/(sqrt(n(n+1)))$],
      [$(sum_(n=1)^oo (-1)^(n-1))/(n(n+1))$],
      [$(sum_(n=1)^oo (-1)^(n-1))/(2^n)$],
    ),
    answer: [B],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题（每小题3分，共15分）],
    stem: [
      已知 $|a| = 2$，$|b| = sqrt(2)$，且 $a dot b = 2$，则 $|a times b| =$
    ],
    answer: [$2$],
    solution: [
      用恒等式 $|a times b|^2=|a|^2|b|^2-(a dot b)^2$。 \
          代入得 $|a times b|^2=2^2 dot (sqrt(2))^2-2^2=8-4=4$，故 $|a times b|=2$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      函数 $u = x y^2 + z^3 - x y z$ 在点 $(1, 1, 2)$ 处在方向角为 $alpha =(pi)/(3), beta =(pi)/(4), gamma =(pi)/(3)$ 的方向上的方向导数为
    ],
    answer: [$1 + sqrt(2)$],
    solution: [
      方向导数公式： \
          $D_l u=grad u dot bold(e)$，其中 \
          $bold(e)=(cos alpha,cos beta,cos gamma)$。 \
          先求 \
          $u_x=y^2-y dot z, u_y=2 dot x dot y-x dot z, u_z=3z^2-x dot y$， \
          再在点 $(1,1,2)$ 处代入，并与 \
          $bold(e)=((1)/(2),(sqrt(2))/(2),(1)/(2))$ 点乘， \
          得 \
          $D_l u=1+sqrt(2)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      曲面 $x^2 + 2y^2 + z - x ee^z = 4$ 在点 $(0, 1, 2)$ 处的切平面方程为
    ],
    answer: [$ee^2 x - 4y - z + 6 = 0$],
    solution: [
      设 $F(x,y,z)=x^2+2y^2+z-x ee^z-4$。计算梯度： \
          $F_x=2x-ee^z$, $F_y=4y$, $F_z=1-x ee^z$。 \
          点 $P(0,1,2)$ 处：$F_x = -ee^2$, $F_y = 4$, $F_z = 1$。 \
          切平面：$-ee^2(x-0) + 4(y-1) + 1(z-2) = 0 => ee^2 x - 4y - z + 6 = 0$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设曲面 $Sigma$ 为上半球面 $z = sqrt(2 - x^2 - y^2)$，$iint_Sigma (y + 1) dif S =$
    ],
    answer: [$4 pi$],
    solution: [
      上半球面关于 $y O z$ 面对称，$iint_Sigma y dif S = 0$。 \
          剩余部分为 $iint_Sigma 1 dif S$，即上半球面面积 $2 pi R^2 = 2 pi (2) = 4 pi$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $f(x)$ 是周期为 $2 pi$ 的周期函数，且 $f(x) = cases(1 - x & "if" -pi <= x < 0, 1 + x & "if" 0 <= x < pi)$，$S(x)$ 为 $f(x)$ 的傅里叶级数的和函数，则 $S(-3 pi) =$
    ],
    answer: [$1+pi$],
    solution: [
      因 $S(x)$ 周期为 $2 pi$，$S(-3 pi) = S(-pi)$。 \
          由收敛定理，$S(-pi) =([f(-pi^+) + f(-pi^-)])/(2)=([f(-pi^+) + f(pi^-)])/(2)$。 \
          $f(-pi^+) = 1 - (-pi) = 1 + pi$, $f(pi^-) = 1 + pi$。 \
          故 $S(-3 pi) = 1 + pi$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题（11~12 每小题6分，13~17 每小题7分，18小题8分，19小题10分，20小题5分，共70分）],
    stem: [
      设函数 $z = f(x, y)$ 的全微分为 $dif z = (4 - 2x) dif x - (2y + 4) dif y$，试确定 $f(x, y)$ 的极值点，并判别该点是极大值点还是极小值点。
    ],
    solution: [
      由全微分可读出 \
          $f_x = 4 - 2x, f_y = -2y - 4$。 \
          驻点满足 $f_x = f_y = 0$，故 \
          $4 - 2x = 0, -2y - 4 = 0$，解得 \
          $(x,y)=(2,-2)$。 \
          二阶偏导数为 \
          $f_(x x)''=-2, f_(x y)''=0, f_(y y)''=-2$。 \
          记 $A=f_(x x)'', B=f_(x y)'', C=f_(y y)''$， \
          则 \
          $A C - B^2 = (-2)(-2)-0=4>0$，且 $A<0$。 \
          因此该驻点为极大值点。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iint_D cos x/y dif x dif y$，其中 $D$ 为由直线 $x = 0, y =(pi)/(2), y = pi$ 及抛物线 $x = y^2$ 所围成的平面区域。
    ],
    solution: [
      按区域先对 $x$ 积分： \
          $D={((x,y)| pi)/(2)<=y<=pi, 0<=x<=y^2}$， \
          故 \
          $I=int_pi/2^pi dif y int_0^(y^2) cos x/y dif x$。 \
          内层令 $u=(x)/(y)$，得 \
          $int_0^(y^2) cos x/y dif x=y sin y$。 \
          因而 \
          $I=int_pi/2^pi y sin y dif y =[-y cos y+sin y]_pi/2^pi =pi-1$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $z = f((x)/(y),(y)/(x))$，其中 $f$ 具有一阶连续偏导数，求 $dif z$。
    ],
    solution: [
      设 \
          $u =(x)/(y), v =(y)/(x)$，则 $z=f(u,v)$。 \
          由全微分公式 \
          $dif z = f_1' dif u + f_2' dif v$。 \
          计算 \
          $dif u = ((1)/(y)) dif x - ((x)/(y^2)) dif y$， \
          $dif v = -((y)/(x^2)) dif x + ((1)/(x)) dif y$。 \
          代入得 \
          $dif z = [(f_1')/(y)-(y f_2')/(x^2)] dif x + [-(x f_1')/(y^2)+(f_2')/(x)] dif y$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求曲线 $cases(x^2 + 2y^2 + z^2 = 10, x - y + z = 0)$ 在点 $(1, 2, 1)$ 处的切线方程。
    ],
    solution: [
      设 \
          $F_1=x^2+2y^2+z^2-10, F_2=x-y+z$。 \
          交线在点 $P(1,2,1)$ 处的切向量可取 \
          $bold(t)=grad F_1(P) times grad F_2(P)$。 \
          先算梯度： \
          $grad F_1=(2x,4y,2z)$，故 $grad F_1(P)=(2,8,2)$； \
          $grad F_2=(1,-1,1)$。 \
          叉积 \
          $(2,8,2) times (1,-1,1)=(10,0,-10)$， \
          可化为方向向量 $(1,0,-1)$（或等比例 $(3,0,-3)$）。 \
          故切线方程为 \
          $(x-1)/(3)=(y-2)/(0)=(z-1)/(-3)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $f(u)$ 具有一阶连续导数，且 $f(0) = 0, f'(0) = 1$，求 $(lim_(t arrow 0^+) 1)/(t^3 iint_(x^2 + y^2 <= t^2) f(sqrt(x^2 + y^2)) dif x dif y)$。
    ],
    solution: [
      极坐标变换后 \
          $I(t)=(1)/(t^3 int_0^(2pi) int_0^t f(r) r dif r dif theta)=(2pi)/(t^3 int_0^t f(r) r dif r)$。 \
          由 $f(0)=0, f'(0)=1$，有 \
          $f(r)=r+o(r)$（$r -> 0$）。 \
          故 \
          $f(r)r = r^2+o(r^2)$， \
          从而 \
          $int_0^t f(r)r dif r = int_0^t (r^2+o(r^2)) dif r =(t^3)/(3)+ o(t^3)$。 \
          代回得 \
          $I(t)=(2pi)/(t^3 [(t^3)/(3)+o(t^3)])->(2pi)/(3)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $oint_L (y^2 + x) dif s$，其中 $L$ 为圆 $x^2 + y^2 = 4$。
    ],
    solution: [
      取参数方程 \
          $x=2 cos theta, y=2 sin theta, 0<=theta<=2pi$。 \
          则 \
          $dif s = sqrt((dif x)^2+(dif y)^2)=2 dif theta$。 \
          原积分 \
          $oint_L (y^2+x) dif s = int_0^(2pi) [4 sin^2 theta + 2 cos theta] dot 2 dif theta$ \
          $= 8 int_0^(2pi) sin^2 theta dif theta + 4 int_0^(2pi) cos theta dif theta$ \
          $= 8pi + 0 = 8pi$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      将函数 $f(x) =(1)/(x^2 + 4x + 3)$ 展开成 $(x - 1)$ 的幂级数。
    ],
    solution: [
      令 $t=x-1$，则 \
          $f(x)=(1)/(t^2+6t+8)=(1)/((t+2)(t+4))$。 \
          部分分式分解： \
          $(1)/((t+2)(t+4))=(1)/(2 [(1)/(t+2)-(1)/(t+4)])$。 \
          在 $|t|<2$ 下， \
          $(1)/(t+2)=(1)/(2 sum_(n=0)^oo (-1)^n ((t)/(2))^n)$， \
          $(1)/(t+4)=(1)/(4 sum_(n=0)^oo (-1)^n ((t)/(4))^n)$。 \
          代入得 \
          $f(x)=sum_(n=0)^oo (-1)^n ((1)/(2^(n+2))-(1)/(2^(2n+3))) t^n$。 \
          即 \
          $f(x)=sum_(n=0)^oo (-1)^n ((1)/(2^(n+2))-(1)/(2^(2n+3)))(x-1)^n, |x-1|<2$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $f(x)$ 在区间 $(-oo, +oo)$ 上具有连续导数，$L$ 是上半平面 ($y > 0$) 内以点 $(a, b)$ 为起点、点 $(c, d)$ 为终点的有向分段光滑曲线，记 $I = int_L [(1)/(y)+ y f(x y)] dif x + [x f(x y) -(x)/(y^2)] dif y$。

          (1) 证明：曲线积分 $I$ 与路径 $L$ 无关；

          (2) 当 $a b = c d$ 时，计算 $I$ 的值。
    ],
    solution: [
      记 \
          $P(x,y)=(1)/(y)+y f(x y), Q(x,y)=x f(x y)-(x)/(y^2)$。 \
          (1) 先验恰当性： \
          $P_y=-(1)/(y^2)+f(x y)+x y f'(x y)$， \
          $Q_x=f(x y)+x y f'(x y)-(1)/(y^2)$， \
          故 $P_y=Q_x$。 \
          在上半平面 $y>0$（单连通）内，积分与路径无关。 \
          (2) 求势函数 $U$： \
          对 $P$ 关于 $x$ 积分， \
          $U(x,y)=(x)/(y)+F(x y)+phi(y)$，其中 $F'(t)=f(t)$。 \
          再求 $U_y=-(x)/(y^2)+x f(x y)+phi'(y)$，与 $Q$ 比较得 $phi'(y)=0$。 \
          因而可取 \
          $U=(x)/(y)+F(x y)$。 \
          所以 \
          $I=U(c,d)-U(a,b)=(c)/(d)-(a)/(b)+F(c d)-F(a b)$。 \
          当 $a b=c d$ 时，后两项相消， \
          $I=(c)/(d)-(a)/(b)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $I = iint_Sigma [f_y(x, y) + x^3] dif y dif z + [y^3 - f_x(x, y)] dif z dif x + z^3 dif x dif y$，其中 $f(x, y)$ 具有二阶连续偏导数，$Sigma$ 为锥面 $z = sqrt(x^2 + y^2)$ ($0 <= z <= 1$) 的下侧。
    ],
    solution: [
      设向量场 \
          $bold(F)=(P,Q,R)$，其中 \
          $P=f_y+x^3, Q=y^3-f_x, R=z^3$。 \
          用平面圆盘 $z=1, x^2+y^2<=1$ 与锥面 $Sigma$ 组成闭曲面 $partial Omega$，其中 \
          $Omega={ (r,theta,z) | 0<=r<=1, r<=z<=1 }$。 \
          由于 $Sigma$ 取下侧，恰为该闭区域外法向。 \
          散度 \
          $div bold(F)=P_x+Q_y+R_z =f_(y x)''+3x^2+3y^2-f_(x y)''+3z^2 =3(x^2+y^2+z^2)$。 \
          由高斯公式 \
          $iint_(Sigma) bold(F) dot bold(n) dif S + iint_(D) bold(F) dot bold(n) dif S = iiint_(Omega) div bold(F) dif v$。 \
          右端（三重积分）用柱坐标： \
          $iiint_(Omega) 3(r^2+z^2) r dif z dif r dif theta =(9pi)/(10)$。 \
          圆盘 $D$ 上外法向为 $+bold(k)$，故 \
          $iint_(D) bold(F) dot bold(n) dif S = iint_(x^2+y^2<=1) z^3 dif x dif y = pi$。 \
          故 \
          $I =(9pi)/(10)- pi = -(pi)/(10)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设幂级数 $sum_(n=0)^oo a_n x^n$ 在 $(-oo, +oo)$ 上收敛，且 $a_0 = 0, a_1 = 1, a_2 = 0, a_(n+2) =(2)/((n+1) a_n)$ ($n = 0, 1, 2, dots$)，求该级数的和函数 $S(x)$。
    ],
    solution: [
      由递推式 \
          $a_(n+2)=(2 a_n)/(n+1)$，奇偶项分开。 \
          偶项：$a_0=0, a_2=0$，递推后全为 0。 \
          奇项： \
          $a_1=1, a_3=2, a_5=1, a_7=(1)/(3), dots$ \
          可归纳得 \
          $a_(2k+1)=(1)/(k!)$。 \
          故 \
          $S(x)=sum_(k=0)^oo a_(2k+1) x^(2k+1) =(sum_(k=0)^oo x^(2k+1))/(k!)=(x sum_(k=0)^oo (x^2)^k)/(k!)=x ee^(x^2)$。
    ],
  ),
  (
    kind: "choice",
    kind-title: [一、选择题（每小题3分，共15分）],
    stem: [
      设有直线 $l: cases(2 x + 3 y - z = 1, x - 2 y - 3 z = 2)$ 及平面 $Pi : 11x - 5y + 7z = 2$，则直线 $l$。
    ],
    options: (
      [与平面 $Pi$ 斜交],
      [垂直于平面 $Pi$],
      [平行于平面 $Pi$],
      [在平面 $Pi$ 上],
    ),
    answer: [D],
  ),
  (
    kind: "choice",
    stem: [
      函数 $z = 2x^3 - 4x^2 + 2x y - y^2$ 的极大值点为。
    ],
    options: (
      [$(0, 0)$],
      [$(1, 1)$],
      [$((4)/(3),(4)/(3))$],
      [不存在],
    ),
    answer: [A],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $f(x, y) = cases(((x y)/( sqrt(x^4 + y^4))), & (x, y) != (0, 0), 0, & (x, y) = (0, 0),)$ 则在点(0,0)处.
    ],
    options: (
      [偏导数不存在, 函数不连续],
      [偏导数不存在, 函数连续],
      [偏导数存在, 函数连续],
      [偏导数存在, 函数不连续],
    ),
    answer: [D],
  ),
  (
    kind: "choice",
    stem: [
      设曲面 $Sigma$ 的方程为 $x^2 + y^2 + z^2 = a^2$ ($z >= 0$)，$Sigma_1$ 为 $Sigma$ 在第一卦限的部分，则下列选项中正确的是。
    ],
    options: (
      [$iint_Sigma x dif S = 4 iint_(Sigma_1) x dif S$],
      [$iint_Sigma y dif S = 4 iint_(Sigma_1) y dif S$],
      [$iint_Sigma z dif S = 4 iint_(Sigma_1) x dif S$],
      [$iint_Sigma x y z dif S = 4 iint_(Sigma_1) x y z dif S$],
    ),
    answer: [A],
  ),
  (
    kind: "choice",
    stem: [
      级数 $(sum_(n=1)^oo (sin n alpha))/(n^4)$ 是。
    ],
    options: (
      [条件收敛级数],
      [绝对收敛级数],
      [发散级数],
      [敛散性不确定的级数],
    ),
    answer: [B],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题（每小题3分，共24分）],
    stem: [
      已知直线 $(x)/(2)=(y+2)/()-2 =(z-1)/(1)$ 与 $(x-1)/(4)=(y-3)/(a)=(z+1)/()-2$ 相互垂直，则 $a =$
    ],
    answer: [$3$],
    solution: [
      两直线方向向量分别为 \
          $bold(v)_1=(2,-2,1), bold(v)_2=(4,a,-2)$。 \
          垂直条件 \
          $bold(v)_1 dot bold(v)_2=0$， \
          即 \
          $2 dot 4+(-2)a+1 dot (-2)=0$。 \
          解得 \
          $a=3$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      点 $M(1, 0, -1)$ 在平面 $x + 2y + z = 12$ 上的投影点的坐标为
    ],
    answer: [$(3, 4, 1)$],
    solution: [
      平面法向量 \
          $bold(n)=(1,2,1)$。 \
          投影点 $H$ 在直线 \
          $M+t bold(n)$ 上： \
          $H=(1+t,2t,-1+t)$。 \
          代入平面方程 \
          $(1+t)+2(2t)+(-1+t)=12$， \
          得 $t=2$。 \
          故 \
          $H=(3,4,1)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $f$ 可微，$z = f(x + y, x y)$ 在点 $(x, y)$ 处的全微分 $dif z =$
    ],
    answer: [$(f_1' + y f_2') dif x + (f_1' + x f_2') dif y$],
    solution: [
      令 \
          $u=x+y, v=x y$，则 \
          $z=f(u,v)$。 \
          链式法则给出 \
          $dif z=f_1' dif u+f_2' dif v$。 \
          又 \
          $dif u=dif x+dif y, dif v=y dif x+x dif y$。 \
          代入并合并，得 \
          $dif z=(f_1'+y f_2') dif x+(f_1'+x f_2') dif y$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      函数 $u = x y^2 + z^3 - x^2 y z$ 在点 $M(1, 1, 1)$ 处的最大方向导数为
    ],
    answer: [$sqrt(14)$],
    solution: [
      点处最大方向导数等于梯度模长： \
          $max D_l u=norm(grad u)$。 \
          先求偏导并在 $M(1,1,1)$ 处代入， \
          再计算向量长度，可得 \
          $max D_l u=sqrt(14)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $I =(iiint_Omega dif v)/(1 + x^2 + y^2)$，其中空间闭区域 $Omega$ 由
          $z = sqrt(x^2 + y^2)$ 与 $z = 1$ 围成，
          则 $I$ 在柱面坐标系下的三次积分为
        ],
    answer: [$(int_0^(2 pi) dif theta int_0^1 rho dif rho int_rho^1 rho)/((1 + rho^2) dif z)$],
    solution: [
      柱坐标下 \
          $x^2+y^2=rho^2, dif v=rho dif z dif rho dif theta$。 \
          区域由锥面 $z=rho$ 与平面 $z=1$ 围成， \
          故 \
          $0<=theta<=2pi, 0<=rho<=1, rho<=z<=1$。 \
          因而 \
          $I=(int_0^(2pi) dif theta int_0^1 rho dif rho int_rho^1 rho)/((1+rho^2) dif z)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $f(x)$ 为连续函数，$F(t) = int_0^t dif y int_y^t f(x) dif x$ ($t > 0$)，将 $F(t)$ 交换积分次序后有
    ],
    answer: [$int_0^t dif x int_0^x f(x) dif y = int_0^t x f(x) dif x$],
    solution: [
      积分域为 \
          $D={(x,y)|0<=y<=t, y<=x<=t}$。 \
          交换次序后写成 \
          $0<=x<=t, 0<=y<=x$，故 \
          $F(t)=int_0^t dif x int_0^x f(x) dif y$ \
          $=int_0^t x f(x) dif x$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $L$ 是直线 $3x + 4y = 12$ ($0 <= x <= 4$) 的一段，则 $int_L (3x + 4y) dif s =$
    ],
    answer: [$60$],
    solution: [
      在线段 $L$ 上恒有 \
          $3x+4y=12$，故 \
          $int_L (3x+4y) dif s=12 int_L dif s$。 \
          端点为 $(0,3)$ 与 $(4,0)$， \
          线段弧长 \
          $=sqrt(4^2+(-3)^2)=5$。 \
          因而积分为 \
          $12 dot 5=60$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $f(x)$ 是周期为 $2 pi$ 的周期函数，它在区间 $[-pi, pi)$ 上的表达式为 $f(x) = x$，则 $f(x)$ 的傅里叶级数的和函数 $S(x)$ 在点 $x =(5)/(2 pi)$ 处的值为
    ],
    answer: [$(pi)/(2)$],
    solution: [
      由周期性 \
          $S((5pi)/(2))=S pi / 2$。 \
          点 $(pi)/(2 in (-pi,pi))$ 且函数在该点连续， \
          故傅里叶级数和等于函数值： \
          $S pi / 2=f pi / 2=(pi)/(2)$。 \
          因而 \
          $S((5pi)/(2))=(pi)/(2)$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题(14～17每小题8分，18～19每小题10分，共52分)],
    stem: [
      求曲线 $cases(2 x^2 + 3 y^2 + z^2 = 9, x + y + z = 2)$ 在点 $(1, -1, 2)$ 处的法平面方程。
    ],
    solution: [
      设 \
          $F_1=2x^2+3y^2+z^2-9, F_2=x+y+z-2$。 \
          交线在点 $P$ 处切向量可取 \
          $bold(t)=grad F_1(P) times grad F_2(P)$。 \
          法平面的法向量即为该切向量， \
          因而法平面方程写成 \
          $bold(t) dot [(x,y,z)-P]=0$。 \
          代入 $P(1,-1,2)$ 化简得 \
          $x+4y-3z+9=0$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $z = f(x, y)$ 是由方程 $Phi(c dot x - a dot z, c dot y - b dot z) = 0$ 所确定的隐函数，其中 $Phi$ 具有一阶连续偏导数，求 $(a (partial z))/(partial x)+(b (partial z))/(partial y)$ ($a, b, c$ 是常数)。
    ],
    solution: [
      记 \
          $u=c dot x-a dot z, v=c dot y-b dot z$，则方程为 $Phi(u, v)=0$。 \
          对 $x,y$ 分别求偏导： \
          $Phi_u(c-a z_x)+Phi_v(-b z_x)=0$， \
          $Phi_u(-a z_y)+Phi_v(c-b z_y)=0$。 \
          解得 \
          $z_x=(c Phi_u)/(a Phi_u+b Phi_v), z_y=(c Phi_v)/(a Phi_u+b Phi_v)$。 \
          因而 \
          $a z_x+b z_y=c$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iint_D y ee^(x y) dif sigma$，其中闭区域 $(D: 1)/(x)<= y <= 1, 1 <= x <= 2$。
    ],
    solution: [
      按题给区域可写为 \
          $I=int_1^2 dif x int_((1)/(x))^1 y ee^(x y) dif y$。 \
          先对内层积分，再对外层积分， \
          化简后得到 \
          $I=ee^2-e-1$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $int_L (3 sin x + 2 x y - 4 x) dif x + (x^2 - ee^y) dif y$，其中 $L$ 为摆线 $x = t - sin t, y = 1 - cos t$ 上从点 $O(0, 0)$ 到点 $A(pi, 2)$ 的一段弧。
    ],
    solution: [
      记 \
          $P=3 sin x+2x y-4x, Q=x^2-ee^y$。 \
          先验恰当性： \
          $P_y=2x=Q_x$，故积分与路径无关。 \
          可取势函数 $U$ 满足 $dif U=P dif x+Q dif y$， \
          所求积分为 \
          $U(A)-U(O)$。 \
          代入端点 $O(0,0), A(pi,2)$ 得 \
          $int_L ...=4-ee^2-pi$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求幂级数 $(sum_(n=1)^oo (-1)^(n-1) (2n-1))/(n x^n)$ 的收敛半径、收敛域及和函数。
    ],
    solution: [
      系数数量级不改变比值极限，故收敛半径 \
          $R=1$。 \
          端点检验后收敛域写作 \
          $(-1,1]$。 \
          再将通项拆分： \
          $((-1)^(n-1)(2n-1))/(n x^n)=2(-1)^(n-1)x^n-((-1)^(n-1)x^n)/(n)$。 \
          故和函数 \
          $S(x)=2 sum_(n=1)^oo (-1)^(n-1)x^n-(sum_(n=1)^oo (-1)^(n-1)x^n)/(n)$ \
          $=(2x)/(1+x)+ln(1+x)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $I = iint_Sigma x z^2 dif y dif z + (x^2 y - z^3) dif z dif x + (2 x y + y^2 z) dif x dif y$，其中 $Sigma$ 是球面 $x^2 + y^2 + z^2 = a^2$ ($a > 0$) 上半部分的上侧。
    ],
    solution: [
      写成通量形式，取 \
          $bold(F)=(x z^2, x^2 y-z^3, 2x y+y^2 z)$。 \
          用上半球面与其底圆盘围成闭曲面，应用高斯公式： \
          $iint_(partial Omega) bold(F) dot bold(n) dif S=iiint_Omega div bold(F) dif v$。 \
          计算散度并减去底盘贡献后，得到上半球所求通量 \
          $I=(2)/(5 pi a^5)$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [四、应用题（9分）],
    stem: [
      将周长为 $2 p$ 的矩形绕它的一边旋转一周构成一个圆柱体，问：矩形的长、宽分别为多少时，可使得圆柱体体积最大？
    ],
    solution: [
      设矩形两边长为 $a,b$，则 \
          $a+b=p$。 \
          若绕边 $a$ 旋转，则圆柱半径为 $b$，高为 $a$，体积 \
          $V=pi b^2 a=pi(p-a)^2 a$。 \
          对 $a$ 求导： \
          $V'(a)=pi(p-a)(p-3a)$。 \
          在 $0<a<p$ 内极值点为 $a=(p)/(3)$，从而 $b=(2p)/(3)$。 \
          若绕边 $b$ 旋转，角色互换，得 \
          $a=(2p)/(3), b=(p)/(3)$。 \
          故最优长宽比为 $2:1$，即 \
          长为 $(2)/(3 p)$、宽为 $(1)/(3 p)$（以宽为轴） \
          或长为 $(1)/(3 p)$、宽为 $(2)/(3 p)$（以长为轴）。
    ],
  ),
  (
    kind: "choice",
    kind-title: [一、选择题（每小题3分，共30分）],
    stem: [
      下列四个平面中，通过坐标原点且与 $x$ 轴平行的是。
    ],
    options: (
      [$2x + 2y = 0$],
      [$3x + 2z + 1 = 0$],
      [$3x + 2z = 0$],
      [$3y + 2z = 0$],
    ),
    answer: [D],
  ),
  (
    kind: "choice",
    stem: [
      已知曲面 $z = 4 - x^2 - y^2$ 在点 $P$ 处的切平面平行于平面 $2x + 2y + z - 1 = 0$，则点 $P$ 的坐标为。
    ],
    options: (
      [$(1, -1, 2)$],
      [$(-1, 1, 2)$],
      [$(-1, -1, 2)$],
      [$(1, 1, 2)$],
    ),
    answer: [D],
  ),
  (
    kind: "choice",
    stem: [
      函数 $f(x, y) =(x)/(y)$ 在点 $(1, 1)$ 处的梯度为。（注：原题点 (1,0) 处无意义，修正为 (1,1) 或考察 $(x,y) arrow (1,0)$ 的极限行为）
    ],
    options: (
      [$-bold(i)$],
      [$bold(i)$],
      [$-bold(j)$],
      [$bold(i) - bold(j)$],
    ),
    answer: [D],
    solution: [
      D.（此处假设 $bold(n) = (1, -1)$）
    ],
  ),
  (
    kind: "choice",
    stem: [
      函数 $f(x, y) = cases(((x y)/( sqrt(x^2 + y^2))), & (x, y) != (0, 0), 0, & (x, y) = (0, 0))$ 在点(0,0)处.
    ],
    options: (
      [不连续, 偏导数存在],
      [连续, 偏导数存在],
      [连续, 偏导数不存在],
      [不连续, 偏导数不存在],
    ),
    answer: [A],
  ),
  (
    kind: "choice",
    stem: [
      函数 $z = x^3 - 3x + y^2$ 在点 $(1, 0)$ 处。
    ],
    options: (
      [取得极大值],
      [取得极小值],
      [不取得极值],
      [不确定是否取得极值],
    ),
    answer: [B],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $z = (1 + x y)^(x + y)$ ，则 $((partial z)/(partial y)) |_( (2,1) ) =$ 。
    ],
    options: (
      [$27(ln 3 + 2)$],
      [27],
      [$27 ln 3$],
      [$27(ln 3 + 1)$],
    ),
    answer: [$27(ln 3 + 2)$],
  ),
  (
    kind: "choice",
    stem: [
      设曲面 $Sigma : x^2 + y^2 + z^2 = R^2 (R > 0)$ 的外法向量的方向余弦为 $cos alpha , cos beta , cos gamma$ ，则 $iint_Sigma (x cos alpha + y cos beta + z cos gamma ) dif S =$ 。
    ],
    options: (
      [$pi R^3$],
      [$2 pi R^3$],
      [$3 pi R^3$],
      [$4 pi R^3$],
    ),
    answer: [$4 pi R^3$],
  ),
  (
    kind: "choice",
    stem: [
      幂级数 $(sum_(n=0)^oo (-1)^n x^(2n))/(n!)$ 在区间 $(-oo, +oo)$ 上的和函数是 $S(x) =$。
    ],
    options: (
      [$ee^(-x^2)$],
      [$ee^(x^2)$],
      [$-ee^(-x^2)$],
      [$-ee^(x^2)$],
    ),
    answer: [A],
  ),
  (
    kind: "choice",
    stem: [
      设空间闭区域 $Omega = ((x, y, z) | x^2 + y^2 + z^2 <= 1)$ ，则 $iiint_Omega sqrt(x^2 + y^2 + z^2) dif v =$ 。
    ],
    options: (
      [$iiint_Omega dif x dif y dif z$],
      [$int_0^(2 pi ) dif theta int_0^( pi ) dif phi int_0^1 rho^3 sin phi dif rho$],
      [$int_0^(2 pi ) dif theta int_0^pi dif phi int_0^1 rho^3 sin theta dif rho$],
      [$int_0^(2 pi ) dif theta int_0^(2 pi ) dif phi int_0^1 rho^3 sin phi dif rho$],
    ),
    answer: [$(pi)/(2)$],
  ),
  (
    kind: "choice",
    stem: [
      当 $-1 <= alpha <= 1$ 时，级数 $(sum_(n=1)^oo ((- alpha )^n))/((n^s) (s > 1))$
    ],
    options: (
      [条件收敛],
      [绝对收敛],
      [发散],
      [敛散性不确定],
    ),
    answer: [B],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题（每小题3分，共18分）],
    stem: [
      设 $|a| = 1$ ， $|b| = sqrt(5)$ ，且 $|a + b| = |a - b|$ ，则 $|2 a - 3 b| =$
    ],
    answer: [$7$],
    solution: [
      由 $|a+b|^2 = |a-b|^2$ 得 $|a|^2 + |b|^2 + 2 a dot b = |a|^2 + |b|^2 - 2 a dot b$，解得 $a dot b = 0$ (向量垂直)。 \
          则 $|2 a - 3 b|^2 = 4|a|^2 + 9|b|^2 - 12 a dot b = 4(1)^2 + 9(sqrt(5))^2 - 0 = 4 + 45 = 49$。 \
          故 $|2 a - 3 b| = 7$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $z = f(x, y)$ 由方程 $ee^z + x y z + x + cos x = 2$ 所确定，则 $dif z|_((0,1)) =$
    ],
    answer: [$-dif x$],
    solution: [
      对方程 \
          $ee^z+x y z+x+cos x=2$ 作全微分： \
          $ee^z dif z+y z dif x+x z dif y+x y dif z+dif x-sin x dif x=0$。 \
          在点 $(0,1)$ 上先由原方程得 $z=0$，代入后化为 \
          $dif z+dif x=0$。 \
          因而 \
          $dif z|_((0,1))=-dif x$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      $int_0^2 dif x int_x^2 ee^(-y^2) dif y =$
    ],
    answer: [$(1)/(2 (1 - ee^(-4)))$],
    solution: [
      积分域为 \
          $D={(x,y)|0<=x<=2, x<=y<=2}$。 \
          交换次序得 \
          $0<=y<=2, 0<=x<=y$，故 \
          $I=int_0^2 dif y int_0^y ee^(-y^2) dif x =int_0^2 y ee^(-y^2) dif y$。 \
          令 $u=y^2$，得 \
          $I=(1)/(2 int_0^4 ee^(-u) dif u)=(1)/(2(1-ee^(-4)))$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      由曲线 $3x^2 + 2y^2 = 12, z = 0$ 绕 $y$ 轴旋转一周所得的旋转曲面在点 $(0, sqrt(6), 0)$ 处的一个单位法向量为
    ],
    answer: [$(0, 1, 0)$],
    solution: [
      旋转曲面可写作 \
          $F(x,y,z)=3(x^2+z^2)+2y^2-12=0$。 \
          法向量为梯度 \
          $grad F=(6x,4y,6z)$。 \
          在点 $(0,sqrt(6),0)$ 处 \
          $grad F=(0,4sqrt(6),0)$，归一化后可取 \
          $(0,1,0)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $f(x) = |x -(1)/(2|, b_n = 2 int_0^1 f(x) sin(n pi x) dif x)$ ，其正弦级数为 $S(x) = sum_(n=1)^( oo ) b_n sin(n pi x)$ ，则 $S(-2021) =$
    ],
    answer: [$0$],
    solution: [
      正弦级数各项均形如 $sin(n pi x)$。 \
          当 $x$ 为整数 $k$ 时， \
          $sin(n pi k)=0$（任意 $n$）， \
          故级数和为 0。 \
          取 $x=-2021 in ZZ$，即得 \
          $S(-2021)=0$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $L: |x| + |y| = 1$ ，则 $(oint_L (dif s))/(|x| + |y|)=$
    ],
    answer: [$4 sqrt(2)$],
    solution: [
      在曲线 $L$ 上，$|x| + |y| = 1$ 恒成立。 \
          则 $(oint_L (dif s))/(|x| + |y|)= oint_L 1 dif s$，即为正方形 $L$ 的周长。 \
          正方形顶点为 $(1,0), (0,1), (-1,0), (0,-1)$，边长为 $sqrt(1^2 + 1^2) = sqrt(2)$。 \
          故周长为 $4 sqrt(2)$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题（ $17~ 21$ 每小题7分，22小题9分，共44分）],
    stem: [
      求过直线 $L_1$: $(x-1)/(1)=(y-2)/(2)=(z-3)/(3)$ 且平行于直线 $L_2$: $x = t+1, y = -2, z = t-3$ 的平面方程。
    ],
    solution: [
      平面需包含 $L_1$，并平行于 $L_2$， \
          故平面内有两个方向向量： \
          $bold(v)_1=(1,2,3)$（来自 $L_1$）， \
          $bold(v)_2=(1,0,1)$（来自 $L_2$）。 \
          法向量可取 \
          $bold(n)=bold(v)_1 times bold(v)_2$。 \
          再用 $L_1$ 上点 $(1,2,3)$ 代入点法式 \
          $bold(n) dot [(x,y,z)-(1,2,3)]=0$， \
          化简得 \
          $x-2y+z=0$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $z = f(2x - y, y sin x)$，其中 $f$ 具有二阶连续偏导数，求 $(partial^2 z)/(partial x partial y)$。
    ],
    solution: [
      设 \
          $u=2x-y, v=y sin x$，则 $z=f(u,v)$。 \
          先对 $x$ 求偏导： \
          $z_x=f_1 u_x+f_2 v_x=2f_1+y cos x f_2$。 \
          再对 $y$ 求偏导： \
          $(partial^2 z)/(partial x partial y)=(partial)/((partial y)(2f_1))+(partial)/((partial y)(y cos x f_2))$ \
          $ = 2(f_(11) u_y + f_(12) v_y) + cos x f_2 + y cos x (f_(21) u_y + f_(22) v_y) $。 \
          代入 $u_y = -1, v_y = sin x$，得 \
          $(partial^2 z)/(partial x partial y)= -2f_(11) + 2sin x f_(12) + cos x f_2 - y cos x f_(21) + y sin x cos x f_(22) $。 \
          即 \
          $-2 f_(11)'' + 2 sin x f_(12)'' + cos x f_2' - y cos x f_(21)'' + y sin x cos x f_(22)''$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iint_D (x^2 + y) dif x dif y$，其中闭区域 $D: x^2 + y^2 <= 1$。
    ],
    solution: [
      圆域关于 $x$ 轴对称，故 \
          $iint_D y dif x dif y=0$。 \
          且由 $x,y$ 对称性 \
          $iint_D x^2 dif x dif y=(1)/(2 iint_D (x^2+y^2) dif x dif y)$。 \
          于是 \
          $iint_D (x^2+y) dif x dif y =(1)/(2 int_0^(2pi) int_0^1 r^2 dot r dif r dif theta)=(pi)/(4)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $int_L (x ee^y - 2y) dif y + (ee^y + x - y) dif x$，其中 $L$ 为圆 $x^2 + y^2 = a x$ ($a > 0$) 的上半部分，取逆时针方向。
    ],
    solution: [
      记 \
          $P=ee^y+x-y, Q=x ee^y-2y$，则原积分为 \
          $int_L P dif x+Q dif y$。 \
          补上 $x$ 轴弦段构成闭曲线后，应用格林公式： \
          $oint (P dif x+Q dif y)=iint (Q_x-P_y) dif sigma$。 \
          其中 \
          $Q_x=ee^y, P_y=ee^y-1$，故被积函数为 1。 \
          再扣回弦段积分，得到 \
          $int_L ...=a^2-(pi a^2)/(8)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iint_Sigma x dif y dif z - y dif z dif x + (z^2 + x) dif x dif y$，其中 $Sigma$ 为半球面 $z = sqrt(4 - x^2 - y^2)$ 的下侧。
    ],
    solution: [
      提示: 作辅助曲面 $Sigma_1: z = 0 (x^2 + y^2 <= 4)$ , 取上侧, $Omega$ 为 $Sigma$ 与 $Sigma_1$ 所围成的空间闭区域. 由高斯公式, 得 \
          原式 $= ( iint_( Sigma + Sigma_1) - iint_( Sigma_1))[x dif y dif z - y dif z dif x + (z^2 + x) dif x dif y]$ \
          $= - iiint_Omega (1 - 1 + 2 z) dif v - iint_(x^2 + y^2 <= 4) x dif x dif y = - 2 int_0^2 z dot pi (4 - z^2) dif z - 0 = - 8 pi .$
    ],
  ),
  (
    kind: "compute",
    stem: [
      设幂级数 $(sum_(n=1)^oo (x-3)^n)/(n dot 3^n)$, 求该幂级数的：（1）收敛半径；（2）收敛域；（3）和函数.
    ],
    solution: [
      (1) 系数 $a_n =(1)/(n dot 3^n)$。 \
          $(R = lim_(n arrow oo) |a_n)/(a_(n+1)| =(lim_(n arrow oo) ((n+1) dot 3^(n+1)))/(n dot 3^n)= 3)$。 \
          (2) 收敛区间为 $|x-3| < 3$，即 $0 < x < 6$。 \
          当 $x = 0$ 时, 原级数为 $(sum_(n=1)^( oo ) (-1)^n)/(n)$ 收敛; \
          当 $x = 6$ 时, 原级数为 $(sum_(n=1)^( oo ) 1)/(n)$ 发散. \
          从而原级数的收敛域为 $[0,6)$ . \
          (3) 记和函数为 $S(x)$，令 $t =(x-3)/(3), t in [-1, 1)$。 \
          $S(t) =(sum_(n=1)^oo t^n)/(n)$。 \
          $S'(t) = sum_(n=1)^oo t^(n-1) =(1)/(1-t)$。 \
          由 $S(0) = 0$，对 $S'(t)$ 积分得 $S(t) = -ln(1-t)$。 \
          故 $S(x) = -ln(1 -(x-3)/(3)) = ln((3)/(6-x))$，$x in [0, 6)$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [四、选答题(8分)(考生可从下面2个题中任选1个作答，多做不多得分)],
    stem: [
      在椭球面 $2 x^2 + 2 y^2 + z^2 = 1$ 上求一点，使得函数 $u = x^2 + y^2 + z^2$ 在该点处沿方向 $l = (1, -1, 0)$ 的方向导数最大。
    ],
    solution: [
      提示：由题意可知目标函数为 \
          $(partial u)/(partial l)= grad u(x, y, z) dot e_l = (2 x, 2 y, 2 z) dot ((1)/(sqrt(2)), -(1)/(sqrt(2)), 0) = sqrt(2) (x - y).$ \
          作拉格朗日函数 \
          $F(x, y, z, lambda) = x - y + lambda (2 x^2 + 2 y^2 + z^2 - 1),$ \
          解方程组 \
          $cases(F_x' = 1 + 4 lambda x = 0, F_y' = -1 + 4 lambda y = 0, F_z' = 2 lambda z = 0, F_lambda' = 2x^2 + 2y^2 + z^2 - 1 = 0)$ \
          得两个可能极值点 $M_1((1)/(2), -(1)/(2), 0), M_2(-(1)/(2),(1)/(2), 0)$ . 在点 $M_1$ 处， $(partial u)/(partial l)= sqrt(2)$；在点 $M_2$ 处， $(partial u)/(partial l)= -sqrt(2)$，所以在点 $((1)/(2), -(1)/(2), 0)$ 处方向导数最大。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设有一凤凰山, 取其底面所在平面为 $x O y$ 面, 底部所占的区域为 $D = {(x,y) | x^2 + y^2 - x y <= 75}$ , 凤凰山的高度函数为 $h(x,y) = 75 - x^2 - y^2 + x y$ . 现欲利用此山进行攀岩活动, 为此寻找山脚坡度最大的点作为攀爬点, 试确定攀爬起点的位置.
    ],
    solution: [
      提示：因为 $grad h(x, y) = (y - 2 x, x - 2 y)$ ，所以在点 $(x, y)$ 处的最大方向导数为 \
          $norm(grad h(x, y)) = sqrt(5 x^2 + 5 y^2 - 8 x y).$ \
          令函数 $f = 5 x^2 + 5 y^2 - 8 x y$ ，求 $f$ 在约束条件 $x^2 + y^2 - x y = 75$ 下的极值. \
          作拉格朗日函数 \
          $L = 5 x^2 + 5 y^2 - 8 x y + lambda (75 - x^2 - y^2 + x y),$ \
          解方程组 \
          $cases(L_x' = 10x - 8y + lambda (y - 2x) = 0, L_y' = 10y - 8x + lambda (x - 2y) = 0, L_lambda' = 75 - x^2 - y^2 + x y = 0)$ \
          得可能极值点 $M_1(5 sqrt(3), 5 sqrt(3)), M_2(-5 sqrt(3), -5 sqrt(3)), M_3(5, -5), M_4(-5, 5)$ . 由于 \
          $f(M_1) = f(M_2) = 150$，$f(M_3) = f(M_4) = 450$， \
          因此在山脚的点 $M_3$ 或点 $M_4$ 可作为攀爬的起点.
    ],
  ),
  (
    kind: "choice",
    kind-title: [一、选择题（每小题4分，共20分）],
    stem: [
      级数 $(sum_(n=1)^oo (-1)^(n-1))/(n + (-1)^(n-1))$ 是。
    ],
    options: (
      [绝对收敛],
      [条件收敛],
      [发散],
      [敛散性不确定],
    ),
    answer: [B],
  ),
  (
    kind: "choice",
    stem: [
      直线 $cases(x + 3y + 2z + 1 = 0, 4x - 2y + z - 2 = 0)$ 的位置关系是。
    ],
    options: (
      [直线在平面内],
      [平行但不在平面内],
      [垂直],
      [相交但不垂直],
    ),
    answer: [C],
  ),
  (
    kind: "choice",
    stem: [
      设 $L: 4 x^2 + y^2 = 1$，取正向，则 $(oint_L (-y dif x + x dif y))/(4x^2 + y^2)=$ 。
    ],
    options: (
      [$-2 pi$],
      [$2 pi$],
      [0],
      [$pi$],
    ),
    answer: [D],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $f(x, y) =(x y)/(x^2 + y^2)$，则 $lim_((x, y) arrow (0, 0)) f(x, y)$。
    ],
    options: (
      [不存在],
      [0],
      [1],
      [无穷大],
    ),
    answer: [A],
  ),
  (
    kind: "choice",
    stem: [
      $int_0^2 dif x int_0^x f(x,y) dif y + int_2^(sqrt(8)) dif x int_0^(sqrt(8 - x^2))f(x,y) dif y$ 交换积分次序后为( ).
    ],
    options: (
      [$int_0^2 dif y int_(sqrt(8 - y^2))^2 f(x,y) dif x$],
      [$int_0^2 dif y int_0^(sqrt(8 - y^2))f(x,y) dif x$],
      [$int_0^2 dif y int_(y^2)^2 f(x,y) dif x$],
      [$int_0^2 dif y int_y^(sqrt(8 - y^2))f(x,y) dif x$],
    ),
  ),
  (
    kind: "blank",
    kind-title: [二、填空题（每小题4分，共20分）],
    stem: [
      已知 $|bold(a)| = 4$ ，向量 $bold(a)$ 与轴 $u$ 的夹角是 $(pi)/(3)$ ，则 $Prj_u bold(a) =$
    ],
    answer: [$2$],
    solution: [
      向轴 $u$ 的标量投影为 \
          $Prj_u bold(a)=|bold(a)| cos pi/3$。 \
          代入 \
          $|bold(a)|=4$，得 \
          $Prj_u bold(a)=(4 dot 1)/(2)=2$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      曲面 $x^3 + y^3 + z^3 + x y z - 6 = 0$ 在点 $(1, 2, -1)$ 处的切平面方程是
    ],
    answer: [设 \
    $F(x,y,z)=x^3+y^3+z^3+x y z-6$。 \
    切平面法向量为 $grad F$： \
    $F_x=3x^2+y z, F_y=3y^2+x z, F_z=3z^2+x y$。 \
    在点 $(1,2,-1)$ 处， \
    $grad F=(1,11,5)$。 \
    切平面方程 \
    $1(x-1)+11(y-2)+5(z+1)=0$， \
    化简得 $x+11y+5z=18$。],
    solution: [
      设 \
          $F(x,y,z)=x^3+y^3+z^3+x y z-6$。 \
          切平面法向量为 $grad F$： \
          $F_x=3x^2+y z, F_y=3y^2+x z, F_z=3z^2+x y$。 \
          在点 $(1,2,-1)$ 处， \
          $grad F=(1,11,5)$。 \
          切平面方程 \
          $1(x-1)+11(y-2)+5(z+1)=0$， \
          化简得 $x+11y+5z=18$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      平面曲线 $x = ((1)/(4)) y^2 - ((1)/(2)) ln y (1 <= y <= ee)$ 的弧长为
    ],
    answer: [以 $y$ 为参数，弧长公式 \
    $L=int_1^ee sqrt(1+((dif x)/(dif y))^2) dif y$。 \
    由 \
    $x(y)=(y^2)/(4)-((1)/(2))ln y$， \
    得 \
    $(dif x)/(dif y)=(y)/(2)-(1)/(2y)$。 \
    所以 \
    $1+((dif x)/(dif y))^2 =1+(1)/(4(y-(1)/(y))^2)=(1)/(4(y+(1)/(y))^2)$。 \
    因 $y>0$， \
    $sqrt(1+((dif x)/(dif y))^2)=(1)/(2(y+(1)/(y)))$。 \
    故 \
    $L=(1)/(2 int_1^ee (y+(1)/(y)) dif y)=(1)/(2[(y^2)/(2)+ln y]_1^ee)=(1)/(4(ee^2+1))$。],
    solution: [
      以 $y$ 为参数，弧长公式 \
          $L=int_1^ee sqrt(1+((dif x)/(dif y))^2) dif y$。 \
          由 \
          $x(y)=(y^2)/(4)-((1)/(2))ln y$， \
          得 \
          $(dif x)/(dif y)=(y)/(2)-(1)/(2y)$。 \
          所以 \
          $1+((dif x)/(dif y))^2 =1+(1)/(4(y-(1)/(y))^2)=(1)/(4(y+(1)/(y))^2)$。 \
          因 $y>0$， \
          $sqrt(1+((dif x)/(dif y))^2)=(1)/(2(y+(1)/(y)))$。 \
          故 \
          $L=(1)/(2 int_1^ee (y+(1)/(y)) dif y)=(1)/(2[(y^2)/(2)+ln y]_1^ee)=(1)/(4(ee^2+1))$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      函数 $u = ln (x + sqrt(y^2 + z^2))$ 在点 $A(1,0,1)$ 处从点 $A$ 到点 $B(3,-2,2)$ 的方向导数为
    ],
    answer: [方向向量 \
    从 $A$ 到 $B$ 的方向向量为 $(2,-2,1)$，单位方向 \
    $bold(e)=(2,-2,1)/(3)$。 \
    设 $r=sqrt(y^2+z^2)$，则 \
    $u=ln(x+r)$， \
    $u_x=(1)/(x+r), u_y=((y)/(r))/(x+r), u_z=((z)/(r))/(x+r)$。 \
    在 $A(1,0,1)$ 有 $r=1$，故 \
    $grad u(A)=((1)/(2),0,(1)/(2))$。 \
    方向导数 \
    $D_l u(A)=grad u(A) dot bold(e) =((1)/(2),0,(1)/(2)) dot ((2)/(3),-(2)/(3),(1)/(3))=(1)/(2)$。],
    solution: [
      方向向量 \
          从 $A$ 到 $B$ 的方向向量为 $(2,-2,1)$，单位方向 \
          $bold(e)=(2,-2,1)/(3)$。 \
          设 $r=sqrt(y^2+z^2)$，则 \
          $u=ln(x+r)$， \
          $u_x=(1)/(x+r), u_y=((y)/(r))/(x+r), u_z=((z)/(r))/(x+r)$。 \
          在 $A(1,0,1)$ 有 $r=1$，故 \
          $grad u(A)=((1)/(2),0,(1)/(2))$。 \
          方向导数 \
          $D_l u(A)=grad u(A) dot bold(e) =((1)/(2),0,(1)/(2)) dot ((2)/(3),-(2)/(3),(1)/(3))=(1)/(2)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $f(x) = cases(x, & 0 < x <= 1, 1 - x, & 1 < x <= 2)$，其余弦级数记为 $S(x) =(a_0)/(2)+ sum_(n=1)^oo a_n cos((n pi x)/(2))$，则 $S(7) =$
    ],
    answer: [$(1)/(2)$],
    solution: [
      余弦级数对应把 $f$ 在 $[0,2]$ 上作偶延拓并再以周期 $4$ 延拓。 \
          因而 \
          $S(7)=S(7-4)=S(3)=S(-1)=S(1)$。 \
          点 $x=1$ 是分段连续函数的跳点，傅里叶级数在该点收敛到左右极限平均值： \
          $S(1)=(f(1-0)+f(1+0))/(2)=(1+0)/(2)=(1)/(2)$。 \
          故 $S(7)=(1)/(2)$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题（11~15 每小题7分，16~17 每小题9分，18小题7分，共60分）],
    stem: [
      计算 $iint_D ee^(-x^2 - y^2) dif x dif y$ ，其中 $D$ 是由中心在坐标原点，半径为 $R$ 的圆所围成的闭区域。
    ],
    solution: [
      区域 $D$ 为圆盘 $x^2+y^2<=R^2$，改用极坐标 \
          $x=r cos theta, y=r sin theta$，雅可比为 $r$。 \
          因而 \
          $I=iint_D ee^(-x^2-y^2) dif x dif y =int_0^(2pi) int_0^R ee^(-r^2) r dif r dif theta$。 \
          先算径向积分，令 $u=r^2$，$dif u=2r dif r$： \
          $int_0^R ee^(-r^2) r dif r =(1)/(2 int_0^(R^2) ee^(-u) dif u)=(1)/(2 (1-ee^(-R^2)))$。 \
          故 \
          $I=(int_0^(2pi) 1)/(2 (1-ee^(-R^2)) dif theta)=pi(1-ee^(-R^2))$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求过点 $M(2, 1, 3)$ 且与直线 $(x + 1)/(3)=(y - 1)/(2)=(z)/(-1)$ 垂直的直线方程。
    ],
    solution: [
      设已知直线为 \
          $(l: (x+1))/(3)=(y-1)/(2)=(z)/(-1)=t$， \
          则其方向向量为 $bold(v)=(3,2,-1)$，参数式为 \
          $x=3t-1, y=2t+1, z=-t$。 \
          过点 $M(2,1,3)$ 且垂直于 $l$ 的垂线，其垂足 $H$ 应在平面 \
          $Pi: bold(v) dot [(x,y,z)-M]=0$ 上，即 \
          $3(x-2)+2(y-1)-(z-3)=0$。 \
          将 $l$ 的参数式代入得 \
          $3(3t-1)+2(2t+1)-(-t-3)=0$， \
          化简得 $14t-6=0$，故 $t=(3)/(7)$。 \
          垂足为 \
          $H((2)/(7),(13)/(7),-(3)/(7))$。 \
          所求直线通过 $M,H$，方向向量 \
          $bold(d)=H-M=(-(12)/(7),(6)/(7),-(24)/(7))$，可取等比例方向向量 $(2,-1,4)$。 \
          因而直线方程可写为 \
          $(x-2)/(2)=(y-1)/(-1)=(z-3)/(4)$。 \
          （等价形式） \
          $cases(x-2y+z+3=0, 3x+2y-z-5=0)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $z = f(x y,(x)/(y)) + g(x^2 - y^2)$ ，其中 $f$ 具有二阶连续偏导数， $g$ 具有二阶连续导数，求 $(partial^2 z)/(partial x partial y)$ .
    ],
    solution: [
      设 \
          $u=x y, v=(x)/(y), w=x^2-y^2$，则 \
          $z=f(u,v)+g(w)$。 \
          先求一阶偏导： \
          $z_x=f_u u_x+f_v v_x+g'(w)w_x =y f_u+(1)/(y f_v)+2x g'(w)$。 \
          再对 $y$ 求偏导： \
          $(partial)/((partial y)(y f_u))= f_u + y(f_(u u) u_y + f_(u v) v_y) = f_u + x y f_(u u) -(x)/(y f_(u v))$； \
          $(partial)/((partial y)((1)/(y f_v)))= -(1)/(y^2 f_v)+(1)/(y(f_(v u) u_y + f_(v v) v_y))= -(1)/(y^2 f_v)+(x)/(y f_(v u))-(x)/(y^3 f_(v v))$； \
          $(partial)/((partial y)(2x g'(w)))= 2x g''(w) w_y = -4 x y g''(w)$。 \
          又因 $f_(u v)=f_(v u)$，中间两项抵消，故 \
          $z_(x y)''=f_u-(1)/(y^2 f_v)+x y f_(u u)-(x)/(y^3 f_(v v))-4 x y g''(w)$。 \
          即 \
          $(partial^2 z)/(partial x partial y)= f_1' -(f_2')/(y^2)+ x y f_(11)'' -(x)/((y^3) f_(22)'')- 4 x y g'' $。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求函数 $f(x, y) = ee^(2 x)(x + y^2 + 2 y)$ 的极值
    ],
    solution: [
      先求驻点： \
          $f_x=ee^(2x)(2x+2y^2+4y+1)$， \
          $f_y=ee^(2x)(2y+2)$。 \
          令 $f_x=f_y=0$，由 $f_y=0$ 得 $y=-1$； \
          代入 $f_x=0$ 得 \
          $2x+2-4+1=0$，故 $x=(1)/(2)$。 \
          唯一驻点为 $((1)/(2),-1)$。 \
          二阶导数： \
          $f_(x x)''=ee^(2x)(4x+4y^2+8y+4)$， \
          $f_(x y)''=4ee^(2x)(y+1)$， \
          $f_(y y)''=2ee^(2x)$。 \
          在 $((1)/(2),-1)$ 处有 \
          $A=f_(x x)''=2ee>0, B=f_(x y)''=0, C=f_(y y)''=2ee$。 \
          判别式 \
          $Delta=A C-B^2=4ee^2>0$，且 $A>0$，故该点为极小值点。 \
          极小值 \
          $f((1)/(2),-1)=ee^(1)((1)/(2)+1-2)=-(ee)/(2)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      已知幂级数 $sum_(n=0)^( oo )(n+1)(n+2)(x-1)^(n)$ , 求其收敛域及和函数.
    ],
    solution: [
      设 \
          $S(x)=sum_(n=0)^oo (n+1)(n+2)(x-1)^n$。 \
          由系数 $a_n=(n+1)(n+2)$， \
          $lim_(n->oo) abs((a_(n+1))/(a_n)) =(lim_(n->oo) ((n+2)(n+3)))/((n+1)(n+2))=1$， \
          故收敛半径 $R=1$，即先有 $|x-1|<1$。 \
          端点检验： \
          $x=0$ 时级数为 $sum (-1)^n(n+1)(n+2)$，通项不趋于 0，发散； \
          $x=2$ 时级数为 $sum (n+1)(n+2)$，通项不趋于 0，发散。 \
          因而收敛域为 $(0,2)$。 \
          求和函数：令 $t=x-1$（$|t|<1$），则 \
          $S(t)=sum_(n=0)^oo (n+1)(n+2)t^n$。 \
          由几何级数 \
          $sum_(n=0)^oo t^n=(1)/(1-t)$，逐项求导两次可得 \
          $sum_(n=0)^oo (n+1)(n+2)t^n=(2)/((1-t)^3)$。 \
          代回 $t=x-1$， \
          $S(x)=(2)/((2-x)^3), x in (0,2)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算
          $iint_( Sigma ) x^3 dif y dif z + [((1)/(z)) f((y)/(z)) + y^3] dif z dif x + [((1)/(y)) f((y)/(z)) + z^3] dif x dif y$，
          其中 $f$ 具有一阶连续导数，$Sigma$ 为锥面 $x = sqrt(y^2 + z^2)$ 和
          球面 $x^2 + y^2 + z^2 = 1$ 所围立体表面的外侧。
    ],
    solution: [
      记向量场 \
          $bold(F)=(P,Q,R)$，其中 \
          $P=x^3, Q=(1)/(z f((y)/(z)))+y^3, R=(1)/(y f((y)/(z)))+z^3$。 \
          设由锥面与球面围成的闭区域为 $Omega$，所求即外侧通量 \
          $iint_Sigma bold(F) dot bold(n) dif S$。 \
          用高斯公式： \
          $iint_Sigma bold(F) dot bold(n) dif S=iiint_Omega div bold(F) dif v$。 \
          计算散度： \
          $P_x=3x^2$， \
          $Q_y=3y^2+(f'((y)/(z)))/(z^2)$， \
          $R_z=3z^2-(f'((y)/(z)))/(z^2)$。 \
          故 \
          $div bold(F)=3(x^2+y^2+z^2)=3r^2$。 \
          区域 $Omega$ 为单位球内且满足 $x>=sqrt(y^2+z^2)$ 的部分。 \
          取以 $x$ 轴为极轴的球坐标： \
          $0<=r<=1, 0<=phi<=(pi)/(4), 0<=theta<=2pi$， \
          $dif v=r^2 sin phi dif r dif phi dif theta$。 \
          则 \
          $I=3 int_0^(2pi) int_0^((pi)/(4)) int_0^1 r^2 dot r^2 sin phi dif r dif phi dif theta$ \
          $=3 [int_0^1 r^4 dif r][int_0^((pi)/(4)) sin phi dif phi][int_0^(2pi) dif theta]$ \
          $=(3 dot 1)/(5 dot (1-(sqrt(2))/(2)) dot 2pi)=(3)/(5 (2-sqrt(2))pi)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $int_L (2 x y^3 - y^2 cos x) dif x + (1 - 2 y sin x + 3 x^2 y^2) dif y$ ，其中 $L$ 为抛物线 $2 x = pi y^2$ 上从点 $(0,0)$ 到点 $((pi)/(2), 1)$ 的一段弧。
    ],
    solution: [
      设 \
          $P=2 x y^3-y^2 cos x, Q=1-2 y sin x+3 x^2 y^2$。 \
          先检验恰当性： \
          $P_y=6 x y^2-2 y cos x, Q_x=6 x y^2-2 y cos x$，故 $P_y=Q_x$。 \
          在全平面上积分与路径无关。 \
          端点为 \
          $O(0,0), A((pi)/(2),1)$。 \
          取折线路径 $O->B->A$，其中 $B((pi)/(2),0)$。 \
          第一段 $O->B$：$y=0, dif y=0$， \
          积分为 0。 \
          第二段 $B->A$：$x=(pi)/(2), dif x=0$， \
          积分化为 \
          $int_0^1 [1-2y sin pi/2+3((pi)/(2))^2 y^2] dif y$ \
          $=int_0^1 (1-2y+(3pi^2)/(4 y^2)) dif y =1-1+(pi^2)/(4)=(pi^2)/(4)$。 \
          故原积分为 \
          $(pi^2)/(4)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $f(x, y) = |x - y|g(x, y)$ ，其中函数 $g(x, y)$ 在点(0,0)的某邻域内连续，试问： $g(0,0)$ 为何值时， $f(x, y)$ 在点(0,0)处的两个偏导数均存在？ $g(0,0)$ 为何值时， $f(x, y)$ 在点(0,0)处可微分？
    ],
    solution: [
      因 $f(0,0)=|0-0|g(0,0)=0$。 \
          对 $x$ 的偏导： \
          $f_x(0,0)=(lim_(h->0) (f(h,0)-f(0,0)))/(h)=lim_(h->0) ((abs(h))/(h)) g(h,0)$。 \
          当 $h->0^+$ 时极限为 $g(0,0)$，当 $h->0^-$ 时为 $-g(0,0)$。 \
          两侧相等当且仅当 $g(0,0)=0$，此时 $f_x(0,0)=0$。 \
          同理 \
          $f_y(0,0)=lim_(k->0) ((abs(k))/(k)) g(0,k)$ \
          也当且仅当 $g(0,0)=0$ 存在，且值为 0。 \
          故“两个偏导都存在”当且仅当 $g(0,0)=0$。 \
          再看可微性。若 $g(0,0)=0$，由连续性得 \
          $g(x,y)->0$。 \
          记 $rho=sqrt(x^2+y^2)$，有 \
          $abs(f(x,y))=abs(x-y) abs(g(x,y)) <= (abs(x)+abs(y)) abs(g(x,y)) <= sqrt(2) rho abs(g(x,y))=o(rho)$。 \
          且此时线性主部为 \
          $f_x(0,0)x+f_y(0,0)y=0$，所以 $f$ 在 $(0,0)$ 可微。 \
          反之可微必有偏导存在，从而也必须 $g(0,0)=0$。 \
          因此： \
          两个偏导存在当且仅当 $g(0,0)=0$； \
          在 $(0,0)$ 可微当且仅当 $g(0,0)=0$。
    ],
  ),
)

#book-section(section-title, problems)
