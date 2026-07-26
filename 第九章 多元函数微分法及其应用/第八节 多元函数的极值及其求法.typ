// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第八节 多元函数的极值及其求法]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      函数 $z = f(x, y)$ 在点 $(x_0, y_0)$处具有偏导数且在点 $(x_0, y_0)$ 处有极值是 $f_x'(x_0, y_0) = 0$ 及 $f_y'(x_0, y_0) = 0$ 的.
    ],
    options: (
      [充分条件],
      [必要条件],
      [充要条件],
      [无关条件],
    ),
    answer: [B],
    solution: [
      若 $f$ 在该点有极值且偏导存在，则一阶必要条件是 \
      $f_x'(x_0,y_0)=0, f_y'(x_0,y_0)=0$。 \
      反过来偏导为 0 不保证有极值（可能是鞍点）， \
      所以这是“必要条件”。 \
      （本题标注 A 与该结论不一致。）
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $z = f(x, y)$ 的全微分 $dif z = x dif x + y dif y$，则点 $(0, 0)$。
    ],
    options: (
      [不是 $f(x, y)$ 的连续点],
      [不是 $f(x, y)$ 的极值点],
      [是 $f(x, y)$ 的极大值点],
      [是 $f(x, y)$ 的极小值点],
    ),
    answer: [D],
    solution: [
      由全微分可读出 \
      $f_x=x, f_y=y$。 \
      可取原函数 \
      $f(x,y)=(1)/(2(x^2+y^2))+C$。 \
      显然 $f(x,y)>=C$，且在 $(0,0)$ 取到最小值， \
      故选 D。
    ],
  ),
  (
    kind: "choice",
    stem: [
      函数 $z = 3(x + y) - x^3 - y^3$ 的极值点是.
    ],
    options: (
      [(1,2)],
      [$(1, - 2)$],
      [$(-1, 2)$],
      [$(-1, - 1)$],
    ),
    answer: [D],
    solution: [
      驻点由 \
      $f_x=3-3x^2=0, f_y=3-3y^2=0$ 得 \
      $x=plus.minus 1, y=plus.minus 1$。 \
      给定选项中，只有 D 的坐标满足该必要条件，故选 D。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设函数 $f(x, y) = 2x^2 + a x + x y^2 + 2y$ 在点 $(1, -1)$ 处取得极值，则常数 $a =$ ，极值的类型为 。
    ],
    answers: (
      [$-5$],
      [极小值],
    ),
    solution: [
      先由驻点条件确定 $a$。 \
      $f_x=4x+a+y^2, f_y=2x y+2$。 \
      在点 $(1,-1)$ 处应满足 \
      $f_x(1,-1)=4+a+1=0$，故 \
      $a=-5$；并且 \
      $f_y(1,-1)=2 dot 1 dot (-1)+2=0$。 \
      再判别极值类型。 \
      $f_(x x)=4, f_(y y)=2x, f_(x y)=2y$。 \
      在 $(1,-1)$ 处： \
      $A=f_(x x)=4>0$， \
      $D=f_(x x)f_(y y)-f_(x y)^2=4 dot 2-(-2)^2=4>0$。 \
      因 $D>0$ 且 $A>0$，该点为极小值点。 \
      故 $a=-5$，极值类型为极小值。
    ],
  ),
  (
    kind: "blank",
    stem: [
      若要求函数 $u = sin x sin y sin z$ 在条件 \
      $x + y + z =(pi)/(2)$ ($x > 0, y > 0, z > 0$) 下的极值， \
      可构造拉格朗日函数 \
      ， \
      求得其驻点为 ， \
      在该点处函数取得 。
    ],
    answers: (
      [$L = sin x sin y sin z + lambda(x + y + z -(pi)/(2))$],
      [$((pi)/(6),(pi)/(6),(pi)/(6))$],
      [极大值 $(1)/(8)$],
    ),
    solution: [
      构造拉格朗日函数 \
      $L=sin x sin y sin z+lambda(x+y+z-(pi)/(2))$。 \
      一阶条件： \
      $cos x sin y sin z+lambda=0$， \
      $sin x cos y sin z+lambda=0$， \
      $sin x sin y cos z+lambda=0$， \
      以及约束 $x+y+z=(pi)/(2)$。 \
      三式相减可得 \
      $cot x=cot y=cot z$，在 $x,y,z>0$ 下推出 \
      $x=y=z$。 \
      代回约束得 \
      $x=y=z=(pi)/(6)$。 \
      目标函数值为 \
      $u_max=sin((pi)/(6))^3=((1)/(2))^3=(1)/(8)$， \
      该点取得极大值。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      求函数 $f(x, y) = (6 x - x^2)(4 y - y^2)$ 的极值
    ],
    solution: [
      先分离变量： \
      $f(x,y)=(6x-x^2)(4y-y^2)$。 \
      令 \
      $g(x)=6x-x^2, h(y)=4y-y^2$。 \
      分别求各自最大值： \
      $g(x)=-(x-3)^2+9$，最大值为 $9$（在 $x=3$ 处）； \
      $h(y)=-(y-2)^2+4$，最大值为 $4$（在 $y=2$ 处）。 \
      故 \
      $f_max=g_max h_max=9 dot 4=36$， \
      在 $(3,2)$ 处取得。
    ],
  ),
  (
    kind: "compute",
    stem: [
      在 $x O y$ 面上求一点，使得它到 $x = 0, y = 0$ 及 $x + 2 y - 16 = 0$ 三直线的距离的平方和最小.
    ],
    solution: [
      设点 $P(x,y)$。 \
      到三条直线的距离平方和为 \
      $S=x^2+y^2+((x+2y-16)^2)/(5)$。 \
      对 $x,y$ 求偏导并令零： \
      $S_x=2x+(2(x+2y-16))/(5)=0$， \
      $S_y=2y+(4(x+2y-16))/(5)=0$。 \
      化简为线性方程组： \
      $6x+2y=16$， \
      $2x+9y=32$。 \
      解得 \
      $x=(8)/(5), y=(16)/(5)$。 \
      故距离平方和最小点为 \
      $((8)/(5),(16)/(5))$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求内接于半径为 $a$ 的球且有最大体积的长方体
    ],
    solution: [
      设长方体中心在原点，三个半边长为 $x,y,z>0$， \
      则顶点在球面上满足 \
      $x^2+y^2+z^2=a^2$。 \
      体积 \
      $V=8x y z$，等价于在约束下最大化 $x y z$。 \
      由对称性或拉格朗日法可得最优时 \
      $x=y=z$。 \
      代回约束： \
      $3x^2=a^2 => x=(a)/(sqrt(3))$。 \
      所以长方体三条棱长都为 \
      $2x=(2a)/(sqrt(3))$， \
      即最大体积时是正方体，边长 $(2a)/(sqrt(3))$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      在椭圆 $x^2 + 4y^2 = 4$ 上求一点，使得它到直线 $2x + 3y - 6 = 0$ 的距离最短。
    ],
    solution: [
      点到直线 $2x+3y-6=0$ 的距离 \
      $d=(|2x+3y-6|)/(sqrt(13))$。 \
      在椭圆上最短距离等价于最小化 \
      $|2x+3y-6|$，即使线性函数 $2x+3y$ 最大。 \
      设约束 \
      $g(x,y)=x^2+4y^2-4=0$， \
      用拉格朗日法： \
      $L=2x+3y+lambda(4-x^2-4y^2)$。 \
      条件 \
      $2-2lambda x=0, 3-8lambda y=0$， \
      得 \
      $x=(1)/(lambda), y=(3)/(8lambda)$。 \
      代入约束： \
      $(1)/(lambda^2)+(4 dot 9)/(64lambda^2)=4$ \
      $=>(25)/(16lambda^2)=4$ \
      $=> lambda=(plus.minus 5)/(8)$。 \
      取使 $2x+3y$ 最大的正号， \
      得 \
      $(x,y)=((8)/(5),(3)/(5))$， \
      即所求最近点。
    ],
  ),
  (
    kind: "compute",
    stem: [
      （附加题）求函数 $f(x, y, z) = ln x + ln y + 3 ln z$ 在球面 $x^2 + y^2 + z^2 = 5r^2$ ($x > 0, y > 0, z > 0$) 上的最大值，并证明：对于正实数 $a, b, c$，有 $a b c^3 <= 27((a + b + c)/(5))^5$ 成立。
    ],
    solution: [
      先求约束极值。构造拉格朗日函数 \
      $L=ln x+ln y+3ln z+lambda(5r^2-x^2-y^2-z^2)$。 \
      一阶条件： \
      $L_x=(1)/(x)-2lambda x=0$， \
      $L_y=(1)/(y)-2lambda y=0$， \
      $L_z=(3)/(z)-2lambda z=0$。 \
      得 \
      $x^2=(1)/(2lambda), y^2=(1)/(2lambda), z^2=(3)/(2lambda)$， \
      在正象限内故 $x=y, z=sqrt(3)x$。 \
      代入约束 \
      $x^2+y^2+z^2=5x^2=5r^2$，得 $x=y=r, z=sqrt(3)r$。 \
      因而最大值为 \
      $f_max = ln r + ln r + 3ln(sqrt(3)r)=ln(3sqrt(3)r^5)$。 \
      证明不等式：令 $x=sqrt(a), y=sqrt(b), z=sqrt(c)$（$a,b,c>0$）， \
      并取 $r=sqrt((a+b+c)/(5))$，则由上面的最大值结论有 \
      $ln x+ln y+3ln z <= ln(3sqrt(3)r^5)$。 \
      指数化得 \
      $x y z^3 <= 3sqrt(3) r^5$，即 \
      $sqrt(a)sqrt(b)c^((3)/(2)) <= 3sqrt(3)((a+b+c)/(5))^((5)/(2))$。 \
      两边平方即得 \
      $a b c^3 <= 27((a+b+c)/(5))^5$。

      先求约束极值。构造拉格朗日函数 \
      $L=ln x+ln y+3ln z+lambda(5r^2-x^2-y^2-z^2)$。 \
      一阶条件： \
      $L_x=(1)/(x)-2lambda x=0$， \
      $L_y=(1)/(y)-2lambda y=0$， \
      $L_z=(3)/(z)-2lambda z=0$。 \
      得 \
      $x^2=(1)/(2lambda), y^2=(1)/(2lambda), z^2=(3)/(2lambda)$， \
      在正象限内故 $x=y, z=sqrt(3)x$。 \
      代入约束 \
      $x^2+y^2+z^2=5x^2=5r^2$，得 $x=y=r, z=sqrt(3)r$。 \
      因而最大值为 \
      $f_max = ln r + ln r + 3ln(sqrt(3)r)=ln(3sqrt(3)r^5)$。 \
      证明不等式：令 $x=sqrt(a), y=sqrt(b), z=sqrt(c)$（$a,b,c>0$）， \
      并取 $r=sqrt((a+b+c)/(5))$，则由上面的最大值结论有 \
      $ln x+ln y+3ln z <= ln(3sqrt(3)r^5)$。 \
      指数化得 \
      $x y z^3 <= 3sqrt(3) r^5$，即 \
      $sqrt(a)sqrt(b)c^((3)/(2)) <= 3sqrt(3)((a+b+c)/(5))^((5)/(2))$。 \
      两边平方即得 \
      $a b c^3 <= 27((a+b+c)/(5))^5$。
    ],
  ),
)

#book-section(section-title, problems)
