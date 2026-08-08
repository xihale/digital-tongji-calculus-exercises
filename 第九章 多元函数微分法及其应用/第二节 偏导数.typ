// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第二节 偏导数]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      设函数 $u = arctan y/x$，则 $(pd u)/(pd x)=$ 。
    ],
    options: (
      [$(x)/(x^2 + y^2)$],
      [$-(y)/(x^2 + y^2)$],
      [$(y)/(x^2 + y^2)$],
      [$-(x)/(x^2 + y^2)$],
    ),
    answer: [B],
    solution: [
      $(pd u)/(pd x)= ((1)/(1 + ((y)/(x))^2)) dot (-(y)/(x^2))$
      $= ((x^2)/(x^2 + y^2)) dot (-(y)/(x^2)) = -(y)/(x^2 + y^2)$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $f(x, y) = sqrt((y)/(x))$，则 $f_x'(2, 1) =$。
    ],
    options: (
      [$-(sqrt(2))/(8)$],
      [$(1)/(4)$],
      [$-(1)/(2)$],
      [$(1)/(2)$],
    ),
    answer: [A],
    solution: [
      $f_x' =(1)/((2 sqrt((y)/(x))) dot (-(y)/(x^2)))= -(1)/(2 sqrt((y)/(x)) dot y)/(x^2)$。代入 $(2, 1)$ 得 $f_x'(2,1) = -(1)/(2 sqrt(1) dot 1)/(4)= -(sqrt(2))/(8)$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $z = y^x$，则 $((pd z)/(pd x)+(pd z)/(pd y)) |_(x=2, y=1) =$ 。
    ],
    options: (
      [2],
      [$1 + ln 2$],
      [0],
      [1],
    ),
    answer: [A],
    solution: [
      $z_x = y^x ln y$, $z_y = x y^(x-1)$。在 $(2, 1)$ 处，$z_x = 1^2 ln 1 = 0$, $z_y = 2 dot 1^1 = 2$。故 $0 + 2 = 2$。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设函数 $z = sin(3x - y) + y$，则 $(pd z)/(pd x) |_(x=2, y=1) =$
    ],
    answer: [$3 cos 5$],
    solution: [
      $z_x=3cos(3x-y)$。 \
      代入 $(2,1)$ 得 \
      $z_x(2,1)=3 cos(6-1)=3 cos 5$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $u = x y +(y)/(x^3)$，则 $(pd^2 u)/(pd x^2) =$
    ],
    answer: [$(12y)/(x^5)$],
    solution: [
      $u_x = y -(3y)/(x^4)$， \
      故 \
      $u_(x x)=(partial)/((partial x)(-3y x^(-4)))=(12y)/(x^5)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $u = x ln(x y)$，则 $(pd^2 u)/(pd x pd y) =$
    ],
    answer: [$(1)/(y)$],
    solution: [
      先对 $x$ 求导：$u_x=ln(x y)+1$。 \
      再对 $y$ 求导：$u_(x y)=(partial)/((partial y)(ln(x y)+1))=(1)/(y)$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      求下列函数的偏导数： \
      (1) $z = sqrt(ln(x y))$； \
      (2) $z = (1 + x y )^y$； \
      (3) $u = x^((y)/(z))$； \
      (4) $u = (x - y)^z$。
    ],
    solution: [
      (1) $(pd z)/(pd x)=(1)/(2x sqrt(ln(x y))),(pd z)/(pd y)=(1)/(2y sqrt(ln(x y)))$； \
      (2) $(pd z)/(pd x)= y^2 (1 + x y )^(y - 1),(pd z)/(pd y)= (1 + x y )^y [ln(1 + x y ) +(x y)/(1 + x y )]$； \
      (3) $(pd u)/(pd x)= ((y)/(z)) x^(((y)/(z)) - 1),(pd u)/(pd y)= ((1)/(z)) x^((y)/(z)) ln x,(pd u)/(pd z)= (-(y)/(z^2)) x^((y)/(z)) ln x$； \
      (4) $(pd u)/(pd x)= z(x - y)^(z - 1),(pd u)/(pd y)= -z(x - y)^(z - 1),(pd u)/(pd z)= (x - y)^z ln(x - y)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求下列函数的二阶偏导数 $(pd^2 z)/(pd x^2),(pd^2 z)/(pd y^2),(pd^2 z)/(pd x pd y)$： \
      (1) $z = arctan y/x$； \
      (2) $z = y^x$。
    ],
    solution: [
      (1) $(pd^2 z)/(pd x^2)=(2 x y )/((x^2 + y^2)^2),(pd^2 z)/(pd y^2)= -(2 x y )/((x^2 + y^2)^2),(pd^2 z)/(pd x pd y)=(y^2 - x^2)/((x^2 + y^2)^2)$； \
      (2) $(pd^2 z)/(pd x^2)= y^x ln^2 y,(pd^2 z)/(pd y^2)= x(x - 1)y^(x - 2),(pd^2 z)/(pd x pd y)= y^(x - 1)(1 + x ln y)$。
    ],
  ),
  (
    kind: "proof",
    kind-title: [四、证明题],
    stem: [
      设函数 $z = ee^(-((1)/(x)+(1)/(y)))$，求证：$x^2 (pd z)/(pd x) + y^2 (pd z)/(pd y) = z$。
    ],
    solution: [
      设 $phi(x, y)=-((1)/(x)+(1)/(y))$，则 $z=ee^(phi)$。 \
      由链式法则 \
      $z_x=ee^(phi) phi_x=z dot ((1)/(x^2))=(z)/(x^2)$， \
      $z_y=ee^(phi) phi_y=z dot ((1)/(y^2))=(z)/(y^2)$。 \
      因而 \
      $x^2 z_x + y^2 z_y =(x^2 dot z)/(x^2)+(y^2 dot z)/(y^2)= z+z = 2z$。 \
      $x^2 (pd z)/(pd x) + y^2 (pd z)/(pd y) = 2z$。
    ],
  ),
)

#book-section(section-title, problems)
