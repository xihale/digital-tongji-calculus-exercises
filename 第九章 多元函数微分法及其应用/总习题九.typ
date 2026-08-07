// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [总习题九]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      设函数 $f(x, y) = cases((x^2 + 2y^2)/((x + y) & (x, y) !)= (0, 0), 0 & (x, y) = (0, 0))$ 则 $f_y'(0, 0) =$。 \
    ],
    options: (
      [0],
      [1],
      [2],
      [-1],
    ),
    answer: [C],
    solution: [
      $f_y'(0,0)=lim_(h arrow 0) (f(0,h)-f(0,0))/h$。 \
      当 $h!=0$ 时， \
      $f(0,h)=(2h^2)/(h)=2h$，且 $f(0,0)=0$。 \
      所以 \
      $f_y'(0,0)=lim_(h arrow 0) (2h)/h=2$，选 C。
    ],
  ),
  (
    kind: "choice",
    stem: [
      若函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处的两个偏导数 $f_x'(x_0, y_0), f_y'(x_0, y_0)$ 存在，则.
    ],
    options: (
      [$f(x,y)$ 在点 $(x_0,y_0)$ 处可微分],
      [$f(x,y)$ 在点 $(x_0,y_0)$ 处连续],
      [$f(x,y)$ 在点 $(x_0,y_0)$ 处存在任意方向的方向导数],
      [$f(x,y)$ 在点 $(x_0,y_0)$ 处关于 $x$ 与 $y$ 皆连续],
    ),
    answer: [D],
    solution: [
      由偏导定义： \
      $f_x(x_0,y_0)$ 存在 \
      $<=> lim_(h->0) [f(x_0+h,y_0)-f(x_0,y_0)]/h$ 存在。 \
      这说明沿直线 $y=y_0$ 的一元函数在 $x_0$ 可导， \
      因而沿 $x$ 方向连续。 \
      同理 \
      $f_y(x_0,y_0)$ 存在 \
      $=> $ 沿直线 $x=x_0$ 的一元函数在 $y_0$ 可导， \
      因而沿 $y$ 方向连续。 \
      但这并不能推出二维意义下整体连续或可微， \
      所以 A、B、C 都不必然成立。 \
      题干能保证的正是 D。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $z = f(x, y)$ 在点 $(x_0, y_0)$ 处可微分，$Delta z$ 是 $f$ 在点 $(x_0, y_0)$ 处的全增量，则在点 $(x_0, y_0)$ 处有。
    ],
    options: (
      [$Delta z = dif z$],
      [$Delta z = f_x'(x_0, y_0) Delta x + f_y'(x_0, y_0) Delta y$],
      [$Delta z = f_x'(x_0, y_0) dif x + f_y'(x_0, y_0) dif y$],
      [$Delta z = dif z + o(rho)$，其中 $rho = sqrt((Delta x)^2 + (Delta y)^2)$],
    ),
    answer: [D],
    solution: [
      按可微定义： \
      $Delta z=f_x'(x_0,y_0)Delta x+f_y'(x_0,y_0)Delta y+o(rho)$， \
      其中 $rho=sqrt((Delta x)^2+(Delta y)^2)$。 \
      前两项正是 $dif z$，所以 \
      $Delta z=dif z+o(rho)$，选 D。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设方程 $y = F(x^2 + y^2) + F(x + y)$ 能确定隐函数 $y = f(x)$ ($F$ 可微), 且 $f(0) = 2$ , $F'(2) =(1)/(2), F'(4) = 1$ , 则 $f'(0) =$ 。
    ],
    options: (
      [$1$],
      [$-(1)/(7)$],
      [$(1)/(2)$],
      [$-(1)/(2)$],
    ),
    answer: [B],
    solution: [
      对方程求导： \
      $y' = F'(x^2+y^2)(2x+2 y y') + F'(x+y)(1+y')$。 \
      在 $x=0, y=2$ 处代入 $F'(4)=1, F'(2)=(1)/(2)$： \
      $y' = 4y' + (1+y')/(2)$，解得 $y'=-(1)/(7)$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      曲面 $x y z = 1$ 上平行于平面 $x + y + z + 3 = 0$ 的切平面方程是.
    ],
    options: (
      [$x + y + z - 3 = 0$],
      [$x + y + z - 2 = 0$],
      [$x + y + z - 1 = 0$],
      [$x + y + z = 0$],
    ),
    answer: [A],
    solution: [
      设 $F(x,y,z)=x y z-1$，则切平面法向量为 \
      $grad F=(y z,x z,x y)$。 \
      与平面 $x+y+z+3=0$ 平行要求法向量平行 $(1,1,1)$，故 \
      $y z=x z=x y$，从而 $x=y=z$（且均不为 0）。 \
      再由 $x y z=1$ 得 $(1,1,1)$。 \
      切平面方程为 \
      $(x-1)+(y-1)+(z-1)=0$，即 $x+y+z-3=0$，选 A。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      $lim_((x,y) arrow (0,0)) (1 + sin x y )^((1)/(x y)) =$
    ],
    answer: [$ee$],
    solution: [
      令 $u=x y$，当 $(x,y)->(0,0)$ 时有 $u->0$。 \
      原式化为 \
      $(1+sin u)^((1)/(u))$。 \
      取对数： \
      $ln L=lim_(u->0) (ln(1+sin u))/(u)$ \
      $=lim_(u->0) ((ln(1+sin u))/(sin u)) dot ((sin u)/(u))$。 \
      由基本极限 \
      $(ln(1+t))/(t)->1$（$t->0$）与 $(sin u)/(u)->1$，得 \
      $ln L=1$。 \
      故 \
      $L=ee$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $z = x^(y + 1) (x > 0, x != 1)$ ，则 $dif z =$
    ],
    answer: [$(y + 1)x^(y) dif x + x^(y + 1) ln x dif y .$],
    solution: [
      设 \
      $z=x^(y+1)=exp((y+1)ln x)$（$x>0$）。 \
      先求偏导： \
      $z_x=(y+1)x^y$， \
      $z_y=x^(y+1)ln x$。 \
      全微分公式： \
      $dif z=z_x dif x+z_y dif y$。 \
      故 \
      $dif z=(y+1)x^y dif x+x^(y+1)ln x dif y$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $u = ln sqrt(x^2 + y^2 + z^2)$，则它在点 $M_0(1, -1, 1)$ 处的方向导数的最大值为
    ],
    answer: [$(sqrt(3))/(3)$],
    solution: [
      对 \
      $u=ln sqrt(x^2+y^2+z^2)=(1)/(2 ln(x^2+y^2+z^2))$， \
      有 \
      $grad u=(x,y,z)/(x^2+y^2+z^2)$。 \
      在点 $M_0(1,-1,1)$ 处： \
      $grad u(M_0)=(1,-1,1)/(3)$。 \
      方向导数最大值等于梯度模长： \
      $|grad u(M_0)|=(sqrt(1^2+(-1)^2+1^2))/(3)=(sqrt(3))/(3)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      曲线 $x = cos t, y = sin t, z = tan t/2$ 在点(0,1,1)处的切线方程为
    ],
    solution: [
      点 $(0,1,1)$ 对应参数由 \
      $x=cos t=0, y=sin t=1$ 得 \
      $t=(pi)/(2)$，且 $z=tan pi/4=1$ 一致。 \
      切向量 \
      $r'(t)=(-sin t,cos t,(1)/(2 sec^2 t/2))$， \
      在 $t=(pi)/(2)$ 处为 \
      $bold(v)=(-1,0,1)$。 \
      故切线方程为 $(x)/(-1)=(y-1)/(0)=(z-1)/(1)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      函数 $z = x y $ 在闭区域 $D = {(x, y) | x >= 0, y >= 0, x + y <= 1}$ 上的最大值为
    ],
    answer: [$(1)/(4)$],
    solution: [
      $(1)/(4)$

      在三角形闭域 $D$ 上，最大值可能出现在内部驻点或边界。 \
      对 $f(x,y)=x y$，内部条件 \
      $f_x=y=0, f_y=x=0$ 仅给 $(0,0)$，值为 0。 \
      边界上： \
      $x=0$ 或 $y=0$ 时 $f=0$； \
      在 $x+y=1$ 上设 $y=1-x$，得 \
      $f=x(1-x)$，其最大值在 $x=(1)/(2)$ 处取得，值为 $(1)/(4)$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      设函数 $w = f(x + y + z, x y z)$ ，其中 $f$ 具有二阶连续偏导数，求 $(partial w)/(partial x),(partial^2 w)/(partial x partial z)$ .
    ],
    solution: [
      $(partial w)/(partial x)= f_1' + y z f_2'$，
      $(partial^2 w)/(partial x partial z)= y f_2' + f_(11)'' + (y x + y z)f_(12)'' + x y^2 z f_(22)''$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $z = z(x, y)$ 由方程 $F(z^2 - x^2, z^2 - y^2) = 0$ 所确定，其中 $F$ 具有一阶连续偏导数，试求 $1/x (pd z)/(pd x) + 1/y (pd z)/(pd y)$ .
    ],
    solution: [
      设 \
      $u=z^2-x^2, v=z^2-y^2$，原方程为 $F(u,v)=0$。 \
      对 $x$、$y$ 分别求偏导： \
      $F_1(2z z_x-2x)+F_2(2z z_x)=0$ \
      $=> z_x=(x F_1)/(z(F_1+F_2))$； \
      $F_1(2z z_y)+F_2(2z z_y-2y)=0$ \
      $=> z_y=(y F_2)/(z(F_1+F_2))$。 \
      因而 \
      $1/x z_x+1/y z_y =(F_1)/(z(F_1+F_2))+(F_2)/(z(F_1+F_2))=(1)/(z)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求螺旋线 $x = a cos theta , y = a sin theta , z = b theta$ 在点 $(a,0,0)$ 处的切线及法平面方程
    ],
    solution: [
      点 $(a,0,0)$ 对应参数 $theta=0$。 \
      曲线导向量 \
      $r'(theta)=(-a sin theta, a cos theta, b)$， \
      在 $theta=0$ 时为 \
      $bold(v)=(0,a,b)$。 \
      切线过点 $(a,0,0)$，方向 $bold(v)$，故 \
      $x=a,(y)/(a)=(z)/(b)$（或参数式 $x=a, y=a t, z=b t$）。 \
      法平面的法向量与切向量同向，故 \
      $0(x-a)+a(y-0)+b(z-0)=0$， \
      即法平面方程 $a y + b z = 0$。

      点 $(a,0,0)$ 对应参数 $theta=0$。 \
      曲线导向量 \
      $r'(theta)=(-a sin theta, a cos theta, b)$， \
      在 $theta=0$ 时为 \
      $bold(v)=(0,a,b)$。 \
      切线过点 $(a,0,0)$，方向 $bold(v)$，故 \
      $x=a,(y)/(a)=(z)/(b)$（或参数式 $x=a, y=a t, z=b t$）。 \
      法平面的法向量与切向量同向，故 \
      $0(x-a)+a(y-0)+b(z-0)=0$， \
      即法平面方程 $a y + b z = 0$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求坐标原点到曲线 $cases(z = x^2 + y^2, x + y + z = 1)$ 的最短和最长距离.
    ],
    solution: [
      由约束 \
      $z=x^2+y^2, x+y+z=1$ 得 \
      $x^2+y^2+x+y=1$。 \
      令 \
      $u=x+y, v=x^2+y^2$，则曲线上有 \
      $u+v=1, z=v$。 \
      到原点距离平方 \
      $d^2=x^2+y^2+z^2=v+v^2=v(v+1)$。 \
      又由 \
      $2v-u^2=(x-y)^2>=0$ 且 $u=1-v$，得 \
      $2v-(1-v)^2>=0$ \
      $=> v^2-4v+1<=0$。 \
      故 \
      $v in [2-sqrt(3),2+sqrt(3)]$。 \
      在该区间上函数 $v+v^2$ 单调递增， \
      所以 \
      $d_min^2=(2-sqrt(3))+(2-sqrt(3))^2=9-5sqrt(3)$， \
      $d_max^2=(2+sqrt(3))+(2+sqrt(3))^2=9+5sqrt(3)$。 \
      因而 \
      $d_min=sqrt(9-5sqrt(3))$， \
      $d_max=sqrt(9+5sqrt(3))$。
    ],
  ),
  (
    kind: "proof",
    kind-title: [四、证明题],
    stem: [
      设函数 $f(x, y) = cases((x^2 y^2)((x^2 + y^2)^((3)/(2))), & x^2 + y^2 != 0, 0, & x^2 + y^2 = 0,)$ 证明: $f(x, y)$ 在点 (0,0) 处连续且偏导数存在, 但不可微分.
    ],
    solution: [
      按题面分段函数，先有 $f(0,0)=0$。 \
      对 $(x,y)!=(0,0)$， \
      $|f(x,y)| = |x^2 y^2| (x^2+y^2)^((3)/(2)) <= (x^2+y^2)^2 (x^2+y^2)^((3)/(2)) = (x^2+y^2)^((7)/(2))$， \
      故 $f(x,y)->0$，所以在原点连续。 \
      由定义 \
      $f_x(0,0)=lim_(h->0)(f(h,0)-f(0,0))/h=0$， \
      $f_y(0,0)=lim_(h->0)(f(0,h)-f(0,0))/h=0$，偏导存在。 \
      但不可微：若可微，则 \
      $(f(x,y)-f(0,0)-f_x(0,0) x-f_y(0,0) y)/(sqrt(x^2+y^2))=(x^2 y^2 (x^2+y^2)^((3)/(2)))/(sqrt(x^2+y^2))$ \
      $= x^2 y^2 (x^2+y^2)$。 \
      取 $y=x$，上式 $= x^4 (2x^2) = 2x^6 -> 0$。 \
      但取 $y=x$，$f(x,x)=x^4 (2x^2)^((3)/(2))=2sqrt(2) x^7$， \
      $(f(x,x))/(sqrt(2)|x|)=(2sqrt(2) x^7)/(sqrt(2)|x|)= 2x^6 -> 0$。 \
      实际上 $(f(x,y))/(r) = x^2 y^2 r^3 / r = x^2 y^2 r^2 <= r^6$，趋于 0，故 $f$ 在原点可微。 \
      重新审题：$f(x,y)=(x^2 y^2)/((x^2+y^2)^((3)/(2)))$。取 $y=x$ 时 $f(x,x)=(x^4)/((2x^2)^((3)/(2)))=(x)/(2sqrt(2))$。 \
      $(f(x,x)-0)/(sqrt(x^2+x^2))=(x/(2sqrt(2)))/(sqrt(2)|x|)=(1)/(4) != 0$。 \
      故 $f$ 在原点不可微。

      按题面分段函数，先有 $f(0,0)=0$。 \
      对 $(x,y)!=(0,0)$， \
      $|f(x,y)| = |x^2 y^2| (x^2+y^2)^((3)/(2)) <= (x^2+y^2)^2 (x^2+y^2)^((3)/(2)) = (x^2+y^2)^((7)/(2))$， \
      故 $f(x,y)->0$，所以在原点连续。 \
      由定义 \
      $f_x(0,0)=lim_(h->0)(f(h,0)-f(0,0))/h=0$， \
      $f_y(0,0)=lim_(h->0)(f(0,h)-f(0,0))/h=0$，偏导存在。 \
      但不可微：若可微，则 \
      $(f(x,y)-0-0 dot x-0 dot y)/(sqrt(x^2+y^2))$ 应趋于 0。 \
      取 $y=x$，$f(x,x)=(x^4)/((2x^2)^((3)/(2)))=(x)/(2sqrt(2))$， \
      $(f(x,x))/(sqrt(2)|x|)=(1)/(4) != 0$。 \
      故 $f$ 在 $(0,0)$ 不可微。
    ],
  ),
)

#book-section(section-title, problems)
