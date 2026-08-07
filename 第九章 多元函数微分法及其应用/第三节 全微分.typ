// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section, blank

#let section-title = [第三节 全微分]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处两个偏导数 $f_x'(x_0, y_0), f_y'(x_0, y_0)$ 存在是 $f(x, y)$ 在该点处全微分存在的.
    ],
    options: (
      [充分条件],
      [充要条件],
      [必要条件],
      [无关条件],
    ),
    answer: [C],
    solution: [
      先用定义结论： \
      若 $f(x,y)$ 在 $(x_0,y_0)$ 可微， \
      则必存在线性主部 \
      $f_x(x_0,y_0)Delta x+f_y(x_0,y_0)Delta y$， \
      因而两个偏导必存在。 \
      所以“偏导存在”对“可微”是必要条件。 \
      但它不是充分条件：存在函数在某点偏导都存在却不可微 \
      （经典反例可取分段函数 $(x y)/(sqrt(x^2+y^2))$ 在原点）。 \
      故应选“必要条件”即 C。
    ],
  ),
  (
    kind: "choice",
    stem: [
      函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处两个偏导数 $f_x'(x_0, y_0), f_y'(x_0, y_0)$ 存在是 $f(x, y)$ 在该点处连续的. \
    ],
    options: (
      [充要条件],
      [必要条件],
      [充分条件],
      [无关条件],
    ),
    answer: [D],
    solution: [
      先说明“偏导存在不推出连续”： \
      典型反例为 \
      $f(x,y)=cases((x y)/(x^2+y^2),&(x,y)!=(0,0),0,&(x,y)=(0,0))$。 \
      在原点两个偏导都存在，但函数在原点不连续。 \
      再说明“连续不推出偏导存在”： \
      例如 \
      $g(x,y)=sqrt(|x|+|y|)$ 在原点连续， \
      但关于 $x$ 的偏导 \
      $(g(h,0)-g(0,0))/(h)=(sqrt(|h|))/(h)$ \
      极限不存在。 \
      因此“偏导存在”与“连续”之间没有必然蕴含关系，选 D。
    ],
  ),
  (
    kind: "choice",
    stem: [
      函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处满足关系 \
    ],
    options: (
      [可微分 $arrow.double$ 可偏导 $arrow.double$ 连续],
      [可微分 $arrow.double$ 可偏导 $arrow.double$ 连续],
      [可微分 $arrow.double$ 可偏导，且可微分 $arrow.double$ 连续，但可偏导不一定连续],
      [可偏导与连续之间没有必然联系，且可偏导不一定可微分],
    ),
    answer: [C],
    solution: [
      关系链应分两条： \
      可微 $=> $ 连续，且可微 $=> $ 偏导存在。 \
      但“偏导存在”并不能推出连续，更不能推出可微。 \
      因此 A、B 都把关系写成单链并含错误蕴含，不对。 \
      D 说“可偏导与连续之间没有必然联系”这部分可对， \
      但还混入“可偏导不一定可微分”的并列表述，整体并非最标准命题。 \
      C 准确表达了教材常用结论： \
      可微必可偏导且连续，而可偏导不一定连续。 \
      故选 C。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      函数 $z = arctan y/x$ 当 $x = 2, y = 1, Delta x = 0.1, Delta y = -0.2$ 时的全增量 $Delta z approx$ #blank()，全微分 $dif z =$ #blank()
    ],
    answers: (
      [$-0.09967$],
      [$-(1)/(10)$],
    ),
    solution: [
      先算全微分： \
      $z_x = -(y)/(x^2+y^2), z_y =(x)/(x^2+y^2)$。 \
      在 $(2,1)$ 处有 $z_x=-(1)/(5), z_y=(2)/(5)$， \
      所以 \
      $dif z = z_x Delta x + z_y Delta y = (-(1)/(5)) dot 0.1 + ((2)/(5)) dot (-0.2) = -0.1 = -(1)/(10)$。 \
      全增量 \
      $Delta z = arctan((1+Delta y)/(2+Delta x)) - arctan 1/2$ \
      $= arctan 0.8/2.1 - arctan(0.5) approx -0.09967$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $z = ee^(y(x^2 + y^2))$，则 $dif z =$
    ],
    solution: [
      设 \
      $phi(x,y)=y(x^2+y^2)=x^2y+y^3$， \
      则 $z=ee^(phi)$。 \
      由链式法则 \
      $z_x=ee^(phi) phi_x, z_y=ee^(phi) phi_y$。 \
      计算 \
      $phi_x=2x y, phi_y=x^2+3y^2$， \
      故 \
      $z_x=2x y ee^(y(x^2+y^2)), z_y=(x^2+3y^2)ee^(y(x^2+y^2))$。 \
      因而 \
      $dif z=z_x dif x+z_y dif y$ \
      $=2x y ee^(y(x^2+y^2)) dif x+(x^2+3y^2)ee^(y(x^2+y^2)) dif y$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $z = f((y)/(x))$，则 $dif z =$
    ],
    solution: [
      设中间变量 \
      $u=(y)/(x)$，则 $z=f(u)$。 \
      由复合函数微分公式 \
      $dif z=f'(u) dif u$。 \
      又 \
      $u_x=-(y)/(x^2), u_y=(1)/(x)$， \
      所以 \
      $dif u=u_x dif x+u_y dif y =-((y)/(x^2)) dif x+1/x dif y$。 \
      代回得 \
      $dif z=f'((y)/(x))[-((y)/(x^2)) dif x+1/x dif y]$ \
      $=-(y)/((x^2) f'((y)/(x)) dif x)+(1)/(x f'((y)/(x)) dif y)$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      设函数 $u = a^(x + y z) - ln x^a$ ($a > 0$)，求 $dif u$。
    ],
    solution: [
      $dif u = (a^(x + y z) ln a -(a)/(x)) dif x + a^(x + y z) z ln a dif y + a^(x + y z) y ln a dif z$。

      $dif u = (a^(x + y z) ln a -(a)/(x)) dif x + a^(x + y z) z ln a dif y + a^(x + y z) y ln a dif z$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求函数 $z = ln(x^2 + y^2 + ee^(x y))$ 的全微分。
    ],
    solution: [
      $dif z =(1)/((x^2 + y^2 + ee^(x y)) [(2x + y ee^(x y)) dif x + (2y + x ee^(x y)) dif y])$。

      设 \
      $g(x,y)=x^2+y^2+ee^(x y)$，则 $z=ln g$。 \
      由链式法则 \
      $dif z=((1)/(g)) dif g$。 \
      而 \
      $g_x=2x+y ee^(x y), g_y=2y+x ee^(x y)$， \
      所以 \
      $dif z=(1)/((x^2+y^2+ee^(x y))[(2x+y ee^(x y))dif x+(2y+x ee^(x y))dif y])$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求函数 $z = ln (1 + x^2 + y^2)$ 当 $x = 1, y = 2$ 时的全微分.
    ],
    solution: [
      $((1)/(3)) dif x + ((2)/(3)) dif y .$

      $z_x=(2x)/(1+x^2+y^2), z_y=(2y)/(1+x^2+y^2)$。 \
      在 $(1,2)$ 处分母为 $1+1+4=6$， \
      得 \
      $z_x(1,2)=(1)/(3), z_y(1,2)=(2)/(3)$。 \
      因而 \
      $dif z=((1)/(3))dif x+((2)/(3))dif y$。
    ],
  ),
  (
    kind: "proof",
    kind-title: [四、证明题],
    stem: [
      设函数 $f(x, y) = cases(x y sin 1/sqrt(x^2 + y^2), & x^2 + y^2 != 0, 0, & x^2 + y^2 = 0,)$ 证明: $f(x, y)$ 在点 (0,0) 处连续且偏导数存在, 但偏导数在点 (0,0) 处不连续, 而 $f(x, y)$ 在点 (0,0) 处可微分.
    ],
    solution: [
      记 $r=sqrt(x^2+y^2)$。当 $(x,y)!=(0,0)$ 时， \
      $|f(x,y)|=|x y sin 1/r| <= |x y| <=(x^2+y^2)/(2)=(r^2)/(2)$， \
      故 $f(x,y)->0=f(0,0)$，所以在 $(0,0)$ 连续。 \
      由偏导定义： \
      $f_x(0,0)=lim_(h->0)(f(h,0)-f(0,0))/h=0$， \
      $f_y(0,0)=lim_(h->0)(f(0,h)-f(0,0))/h=0$，偏导存在。 \
      对 $(x,y)!=(0,0)$ 计算 $f_x$ 会出现含 $(cos 1/r)/(r^3)$ 的项。沿 $y=x$ 代入后有振荡项，不趋于 0， \
      因而 $f_x$（同理 $f_y$）在原点不连续。 \
      可微性检验： \
      $f(0,0)=0, f_x(0,0)=f_y(0,0)=0$，只需看 \
      $(|f(x,y)|)/(sqrt(x^2+y^2))<=((r^2)/(2))/(r)=(r)/(2)-> 0$。 \
      故 $f$ 在 $(0,0)$ 可微。

      记 $r=sqrt(x^2+y^2)$。当 $(x,y)!=(0,0)$ 时， \
      $|f(x,y)|=|x y sin 1/r| <= |x y| <=(x^2+y^2)/(2)=(r^2)/(2)$， \
      故 $f(x,y)->0=f(0,0)$，所以在 $(0,0)$ 连续。 \
      由偏导定义： \
      $f_x(0,0)=lim_(h->0)(f(h,0)-f(0,0))/h=0$， \
      $f_y(0,0)=lim_(h->0)(f(0,h)-f(0,0))/h=0$，偏导存在。 \
      对 $(x,y)!=(0,0)$ 计算 $f_x$ 会出现含 $(cos 1/r)/(r^3)$ 的项。沿 $y=x$ 代入后有振荡项，不趋于 0， \
      因而 $f_x$（同理 $f_y$）在原点不连续。 \
      可微性检验： \
      $f(0,0)=0, f_x(0,0)=f_y(0,0)=0$，只需看 \
      $(|f(x,y)|)/(sqrt(x^2+y^2))<=((r^2)/(2))/(r)=(r)/(2)-> 0$。 \
      故 $f$ 在 $(0,0)$ 可微。
    ],
  ),
)

#book-section(section-title, problems)
