// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第五节 隐函数的求导公式]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      已知 $x + y - z = ee^x, x ee^x = tan t, y = cos t$，则 $(dif z / dif t) |_(t=0) =$。
    ],
    options: (
      [$(1)/(2)$],
      [$-(1)/(2)$],
      [1],
      [0],
    ),
    answer: [D],
    solution: [
      $z = x + y - ee^x$。 $dif z / dif t=((1 - ee^x) (dif x))/(dif t)+(dif y)/(dif t)$。 \
      当 $t=0$ 时，$x ee^x = tan 0 = 0 => x=0$。此时 $1-ee^0 = 0$。 \
      又 $(dif y)/(dif t)= -sin t$，当 $t=0$ 时为 0。 \
      故 $(dif z / dif t) |_(t=0) = 0 dot x'(0) + 0 = 0$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $y = y(x, z)$ 由方程 $x y z = ee^(x + y)$ 所确定，则 $(partial y)/(partial x)=$。 \
    ],
    options: (
      [$(y(x - 1))/(x(1 - y))$],
      [$(y)/(x(1 - y))$],
      [$(y z)/(1 - y)$],
      [$(y(1 - x z))/(x(1 - y))$],
    ),
    answer: [A],
    solution: [
      记 $F = x y z - ee^(x+y) = 0$。则 $y_x = -(F_x)/(F_y)$。 \
      $F_x = y z - ee^(x+y) = y z - x y z = y z(1 - x)$。 \
      $F_y = x z - ee^(x+y) = x z - x y z = x z(1 - y)$。 \
      故 $y_x = -(y z(1-x))/(x z(1-y))=(y(x-1))/(x(1-y))$。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设函数 $y = y(x)$ 由方程 $1 + x^2 y = ee^y$ 所确定，则 $dif y / dif x=$ 。
    ],
    answer: [$(2 x y )/(ee^y - x^2)$],
    solution: [
      对方程 \
      $1+x^2 y=ee^y$ \
      两边对 $x$ 求导： \
      $2x y+x^2 y'=ee^y y'$。 \
      把 $y'$ 的项移到一边： \
      $(ee^y-x^2)y'=2x y$。 \
      故 \
      $y'=(2x y)/(ee^y-x^2)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $z = z(x, y)$ 由方程 $x y^2 z = x + y + z$ 所确定，则 $pd z / pd y=$ 。
    ],
    answer: [$(2 x y z - 1)/(1 - x y^2)$],
    solution: [
      将方程写为 \
      $F(x,y,z)=x y^2 z-x-y-z=0$。 \
      隐函数公式给出 \
      $z_y=-(F_y)/(F_z)$。 \
      计算偏导： \
      $F_y=2x y z-1$， \
      $F_z=x y^2-1$。 \
      故 \
      $z_y=-(2x y z-1)/(x y^2-1)=(2x y z-1)/(1-x y^2)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      由方程 $x y z + sqrt(x^2 + y^2 + z^2) = sqrt(2)$ 所确定的函数 $z = z(x, y)$ 在点 $(1, 0, -1)$ 处的全微分 $dif z =$ 。
    ],
    answer: [$dif x - sqrt(2) dif y$],
    solution: [
      令 \
      $F(x,y,z)=x y z+sqrt(x^2+y^2+z^2)-sqrt(2)=0$。 \
      则 \
      $z_x=-(F_x)/(F_z), z_y=-(F_y)/(F_z)$， \
      且 \
      $dif z=z_x dif x+z_y dif y$。 \
      分别求偏导： \
      $F_x=y z+(x)/(sqrt(x^2+y^2+z^2))$， \
      $F_y=x z+(y)/(sqrt(x^2+y^2+z^2))$， \
      $F_z=x y+(z)/(sqrt(x^2+y^2+z^2))$。 \
      在点 $(1,0,-1)$ 处有 $sqrt(x^2+y^2+z^2)=sqrt(2)$， \
      故 \
      $F_x=-1+(1)/(sqrt(2))$， \
      $F_y=-1$， \
      $F_z=-(1)/(sqrt(2))$。 \
      所以 \
      $z_x=-(F_x)/(F_z)=1-sqrt(2)$， \
      $z_y=-(F_y)/(F_z)=-sqrt(2)$， \
      即 \
      $dif z=(1-sqrt(2)) dif x-sqrt(2) dif y$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      设 $ln sqrt(x^2 + y^2) =(y)/(x)$，求 $dif y / dif x$。
    ],
    solution: [
      先把方程写成 \
      $ln sqrt(x^2+y^2)-(y)/(x)=0$。 \
      对 $x$ 作隐式求导： \
      $(x)/(x^2+y^2)+(y y')/(x^2+y^2)=(x y'-y)/(x^2)$。 \
      乘以 $x^2(x^2+y^2)$ 并整理： \
      $x^3+x^2 y y'=(x y'-y)(x^2+y^2)$ \
      $=x^3 y'+x y^2 y'-x^2 y-y^3$。 \
      把含 $y'$ 项移到一侧： \
      $(x^3+x^2 y+y^3)=y'(x^3+x y^2-x^2 y)$。 \
      故 \
      $y'=(x^3+x^2 y+y^3)/(x^3+x y^2-x^2 y)$ \
      $=(x^3+x^2 y+y^3)/(x(x^2-x y+y^2))$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设 $((x)/(z)) = ln ((z)/(y))$ , 求 $pd z / pd x,pd z / pd y$ .
    ],
    solution: [
      $pd z / pd x=(z)/(x+z)$，$pd z / pd y=(z^2)/(y(x+z))$。

      记 \
      $F(x,y,z)=(x)/(z)- ln((z)/(y))=0$。 \
      隐函数求导公式给出 \
      $z_x=-(F_x)/(F_z), z_y=-(F_y)/(F_z)$。 \
      先算偏导： \
      $F_x=(1)/(z)$， \
      $F_y=(1)/(y)$， \
      $F_z=-(x)/(z^2)-(1)/(z)=-(x+z)/(z^2)$。 \
      所以 \
      $pd z / pd x= -((1)/(z))/(-(x+z)/(z^2))=(z)/(x+z)$， \
      $pd z / pd y= -(1/y)/(-(x+z)/(z^2))=(z^2)/(y(x+z))$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设 $cases(z = x^2 + y^2, x^2 + 2 y^2 + 3 z^2 = 20)$ 求 $dif y / dif x,dif z / dif x$ .
    ],
    solution: [
      $dif y / dif x=-(x(6z+1))/(2y(3z+1))$，$dif z / dif x=(x)/(3z+1)$。

      由第一式 $z=x^2+y^2$ 对 $x$ 求导： \
      $z' = 2x + 2y y'$。 \
      由第二式 $x^2+2y^2+3z^2=20$ 求导： \
      $2x+4y y'+6z z'=0$。 \
      代入 $z'=2x+2y y'$： \
      $2x+4y y'+6z(2x+2y y')=0$， \
      即 $2x(1+6z)+4y(1+3z)y'=0$。 \
      解得 \
      $dif y / dif x= y' = -(x(6z+1))/(2y(3z+1))$。 \
      再代回 $z'=2x+2y y'$： \
      $dif z / dif x= z' =(x)/(3z+1)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设 $cases(u = f(u x, v + y), v = g(u - x, v^2y),)$ 其中 $f, g$ 具有一阶连续偏导数，求 $pd u / pd x,(partial v)/(partial x)$ .
    ],
    solution: [
      $pd u / pd x=(u f_1' (1 - 2 y v g_2') - f_2' g_1')/(Delta)$，$(partial v)/(partial x)=(g_1' (x f_1' + u f_1' - 1))/(Delta)$。

      对方程组关于 $x$ 求导，设 $u_x=(partial u)/(partial x), v_x=(partial v)/(partial x)$： \
      $u_x = f_1'(u + x u_x) + f_2' v_x$， \
      $v_x = g_1'(u_x - 1) + g_2'(2y v v_x)$。 \
      整理为线性方程组 \
      $cases((1 - x f_1')u_x - f_2' v_x = u f_1', -g_1' u_x + (1 - 2 y v g_2')v_x = -g_1')$。 \
      用克拉默法则解之，得 \
      分母 \
      $Delta=(1 - x f_1')(1 - 2 y v g_2') - f_2' g_1'$， \
      从而 \
      $pd u / pd x=(u f_1' (1 - 2 y v g_2') - f_2' g_1')/(Delta)$， \
      $(partial v)/(partial x)=(g_1' (x f_1' + u f_1' - 1))/(Delta)$。
    ],
  ),
  (
    kind: "proof",
    kind-title: [四、证明题],
    stem: [
      设 $2 sin (x + 2 y - 3 z) = x + 2 y - 3 z$ ，证明： $pd z / pd x+pd z / pd y= 1 .$
    ],
    solution: [
      设 $u=x+2y-3z(x,y)$，原式为 $2sin u=u$。 \
      对 $x$ 求偏导： \
      $2cos u dot u_x = u_x$，即 $(2cos u-1)(1-3z_x)=0$。 \
      对 $y$ 求偏导： \
      $2cos u dot u_y = u_y$，即 $(2cos u-1)(2-3z_y)=0$。 \
      若 $2cos u-1=0$，则 $cos u=(1)/(2)$，而由 $2sin u=u$ 在实数域只可能 $u=0$，对应 $cos u=1$，矛盾。 \
      故 $2cos u-1 != 0$，于是 \
      $z_x=(1)/(3), z_y=(2)/(3)$。 \
      所以 \
      $pd z / pd x+pd z / pd y= 1$。
    ],
  ),
  (
    kind: "proof",
    stem: [
      设函数 $Phi (u, v)$ 具有一阶连续偏导数，证明：由方程 $Phi (c x - a z, c y - b z) = 0$ 所确定的函数 $z = f(x, y)$ 满足 $a (pd z / pd x) + b (pd z / pd y) = c .$
    ],
    solution: [
      令 \
      $u = c x - a z, v = c y - b z$，则 $Phi(u, v)=0$。 \
      对 $x$ 求偏导： \
      $Phi_u (c - a z_x) + Phi_v (-b z_x) = 0$， \
      即 $c Phi_u = (a Phi_u + b Phi_v) z_x$。 \
      对 $y$ 求偏导： \
      $Phi_u (-a z_y) + Phi_v (c - b z_y) = 0$， \
      即 $c Phi_v = (a Phi_u + b Phi_v) z_y$。 \
      分别乘以 $a,b$ 后相加： \
      $a c Phi_u + b c Phi_v = (a Phi_u + b Phi_v)(a z_x + b z_y)$。 \
      只要 $a Phi_u + b Phi_v != 0$（隐函数可解条件），即可约去，得 \
      $a z_x + b z_y = c$，即 \
      $a (pd z / pd x) + b (pd z / pd y) = c$。
    ],
  ),
)

#book-section(section-title, problems)
