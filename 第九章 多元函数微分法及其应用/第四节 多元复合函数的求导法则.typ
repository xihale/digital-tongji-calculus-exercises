// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第四节 多元复合函数的求导法则]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      设函数 $u = (x - y)^z$，而 $z = x^2 + y^2$，则 $u_x' + u_y' =$。 \
    ],
    options: (
      [$2[z(x - y)^(z - 1) + (x + y)(x - y)^z ln(x - y)]$],
      [$2z(x - y)^z$],
      [$2(x - y)^z (x + y) ln(x - y)$],
      [$2(x - y)^(z + 1) ln(x - y)$],
    ),
    answer: [C],
    solution: [
      $u_x' =(pd u)/(pd x)+(partial u)/((partial z) dot (partial z))/(partial x)= z(x-y)^(z-1) + (x-y)^z ln(x-y) dot 2x$。 \
      $u_y' =(pd u)/(pd y)+(partial u)/((partial z) dot (partial z))/(partial y)= -z(x-y)^(z-1) + (x-y)^z ln(x-y) dot 2y$。 \
      故 $u_x' + u_y' = 2(x+y)(x-y)^z ln(x-y)$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $z = 3^(x y)$，而 $x = f(y)$ 且 $f$ 可导，则 $(dif z)/(dif y)=$。 \
    ],
    options: (
      [$3^(x y) (y + x f'(y)) ln 3$],
      [$3^(x y) (x + y f'(y)) ln 3$],
      [$(3^(x y))/(ln 3 (x + y f'(y)))$],
      [$z_x f'(y) + z_y$],
    ),
    answer: [B],
    solution: [
      $(dif z)/(dif y)=(partial z)/((partial x)) (dif x)/(dif y)+(pd z)/(pd y)$
      $= (3^(x y) y ln 3) f'(y) + 3^(x y) x ln 3 = 3^(x y) (x + y f'(y)) ln 3$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $u = f(x + y, x z)$，其中 $f$ 具有二阶连续偏导数，则 $(partial^2 u)/(partial x partial z)=$。
    ],
    options: (
      [$f_2' + x f_(11)'' + z f_(12)'' + x f_(12)''$],
      [$x f_(12)'' + x f_2' + x z f_(22)''$],
      [$x f_(21)'' + x z f_(22)''$],
      [$f_2' + x f_(21)'' + x z f_(22)''$],
    ),
    answer: [D],
    solution: [
      $(pd u)/(pd z)= f_2' dot x$。 \
      $(partial^2 u)/(partial x partial z)=(partial)/((partial x) (x f_2'))= f_2' + x ((partial f_2')/(partial x)) = f_2' + x (f_(21)'' dot 1 + f_(22)'' dot z) = f_2' + x f_(21)'' + x z f_(22)''$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      若函数 $f(x, 2 x) = x^2 + 3 x$ , $f_1'(x, 2 x) = 6 x + 1$ ，则 $f_2'(x, 2 x) =$ 。 \
    ],
    options: (
      [$x +(3)/(2)$],
      [$x -(3)/(2)$],
      [$2 x + 1$],
      [$-2 x + 1$],
    ),
    answer: [D],
    solution: [
      对 $f(x, 2x) = x^2 + 3x$ 两边关于 $x$ 求导：$f_1'(x, 2x) dot 1 + f_2'(x, 2x) dot 2 = 2x + 3$。 \
      代入已知项：$(6x + 1) + 2 f_2' = 2x + 3 => 2 f_2' = -4x + 2 => f_2' = -2x + 1$。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设函数 $z = x^2 + sin y, x = cos t, y = t^3$ ，则 $(dif z)/(dif t)=$
    ],
    answer: [$- sin 2 t + 3 t^2 cos t^3$],
    solution: [
      先把复合关系代入： \
      $z(t)=x^2+sin y=cos^2 t+sin(t^3)$。 \
      对 $t$ 求导： \
      $(dif z)/(dif t)=2 cos t(-sin t)+cos(t^3) dot 3t^2$。 \
      利用 $2 sin t cos t=sin 2t$，化简得 \
      $(dif z)/(dif t)=-sin 2t+3t^2 cos t^3$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $z = f(x + y, x - y)$，其中 $f$ 可微，则 $dif z =$
    ],
    solution: [
      设 \
      $u=x+y, v=x-y$，则 $z=f(u,v)$。 \
      全微分公式 \
      $dif z=f_1' dif u+f_2' dif v$。 \
      又 \
      $dif u=dif x+dif y, dif v=dif x-dif y$。 \
      代入并合并同类项： \
      $dif z=f_1'(dif x+dif y)+f_2'(dif x-dif y)$ \
      $=(f_1'+f_2') dif x+(f_1'-f_2') dif y$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $z = f(x,(x)/(y))$，其中 $f$ 具有二阶连续偏导数，则 $(pd^2 z)/(pd x pd y)=$
    ],
    answer: [$-(1)/((y^2) f_2')-(x)/((y^2) f_(12)'')-(x)/((y^3) f_(22)'')$],
    solution: [
      设 \
      $u_1=x, u_2=(x)/(y)$，则 $z=f(u_1,u_2)$。 \
      先求 \
      $z_x=f_1' u_(1x)+f_2' u_(2x)=f_1'+1/y f_2'$。 \
      再对 $y$ 求偏导： \
      $(pd^2 z)/(pd x pd y)=(partial f_1')/(partial y)+(partial(1/y f_2'))/(partial y)$。 \
      其中 \
      $(partial f_1')/(partial y)=f_(12)'' u_(2y)=f_(12)''(-(x)/(y^2))$； \
      $(partial(1/y f_2'))/(partial y)=-((1)/(y^2))f_2'+1/y f_(22)'' u_(2y) =-((1)/(y^2))f_2'-((x)/(y^3))f_(22)''$。 \
      合并得 \
      $(pd^2 z)/(pd x pd y)=-(1)/(y^2 f_2')-(x)/(y^2 f_(12)'')-(x)/(y^3 f_(22)'')$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      设函数 $z = u^2 ln v$，而 $u =(x)/(y), v = 3x - 2y$，求 $(pd z)/(pd x),(pd z)/(pd y)$。
    ],
    solution: [
      $(pd z)/(pd x)= ((2x)/(y^2)) ln(3x-2y) +(3x^2)/((3x-2y)y^2)$，
      $(pd z)/(pd y)= -((2x^2)/(y^3)) ln(3x-2y) -(2x^2)/((3x-2y)y^2)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $z = arcsin(x - y)$，而 $x = 3t, y = 4t^3$，求 $(dif z)/(dif t)$。
    ],
    solution: [
      先合成一元函数： \
      $z(t)=arcsin(3t-4t^3)$。 \
      设 $u(t)=3t-4t^3$，则 $u'(t)=3-12t^2$。 \
      由链式法则 \
      $(dif z)/(dif t)=(u'(t))/(sqrt(1-u(t)^2))$ \
      $=(3-12t^2)/(sqrt(1-(3t-4t^3)^2))$。

      先合成一元函数： \
      $z(t)=arcsin(3t-4t^3)$。 \
      设 $u(t)=3t-4t^3$，则 $u'(t)=3-12t^2$。 \
      由链式法则 \
      $(dif z)/(dif t)=(u'(t))/(sqrt(1-u(t)^2))$ \
      $=(3-12t^2)/(sqrt(1-(3t-4t^3)^2))$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $z = arctan(x y)$，而 $y = ee^x$，求 $(dif z)/(dif x)$。
    ],
    solution: [
      把复合关系代入： \
      $z(x)=arctan(x ee^x)$。 \
      设 $u=x ee^x$，则 \
      $z'=(u')/(1+u^2)$。 \
      又 \
      $u'=ee^x+x ee^x=ee^x(1+x)$。 \
      因而 \
      $(dif z)/(dif x)=(ee^x(1+x))/(1+x^2 ee^(2x))$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $u = f((x)/(y),(y)/(z))$ , 其中 $f$ 具有一阶连续偏导数, 求 $(pd u)/(pd x),(pd u)/(pd y),(pd u)/(pd z)$ .
    ],
    solution: [
      $(pd u)/(pd x)= 1/y f_1'$，
      $(pd u)/(pd y)= -((x)/(y^2)) f_1' + ((1)/(z)) f_2'$，
      $(pd u)/(pd z)= -((y)/(z^2)) f_2'$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $z = f(x^2 + y^2)$ ，其中 $f$ 具有二阶连续导数，求 $(pd^2 z)/(pd x^2),(pd^2 z)/(pd y^2),(pd^2 z)/(pd x pd y)$ .
    ],
    solution: [
      $(pd^2 z)/(pd x^2)= 2 f' + 4 x^2 f''$，$(pd^2 z)/(pd y^2)= 2 f' + 4 y^2 f''$，$(pd^2 z)/(pd x pd y)= 4 x y f''$。
    ],
  ),
)

#book-section(section-title, problems)
