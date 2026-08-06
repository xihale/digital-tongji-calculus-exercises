// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第一节 多元函数的基本概念]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      $(lim_((x,y) arrow (0,0)) (x^2 y))/(x^4 + y^2)=$
    ],
    options: (
      [$0$],
      [不存在],
      [$(1)/(2)$],
      [存在但不等于 $0$ 或 $(1)/(2)$],
    ),
    answer: [B],
    solution: [
      沿直线 $y = k x^2$ 趋于原点，$I =(lim_(x arrow 0) (x^2 dot k x^2))/(x^4 + k^2 x^4)=(k)/(1 + k^2)$。其值随 $k$ 的变化而变化，故极限不存在。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $f(x, y) = cases(x sin 1/y + y sin 1/x & "if" x y != 0, 0 & "if" x y = 0)$ 则 $lim_((x, y) arrow (0, 0)) f(x, y) =$。
    ],
    options: (
      [不存在],
      [1],
      [0],
      [2],
    ),
    answer: [C],
    solution: [
      对 $(x,y)!=(0,0)$ 有 \
      $f(x,y)=x sin 1/y+y sin 1/x$。 \
      利用 $|sin t|<=1$： \
      $|x sin 1/y|<=|x|, |y sin 1/x|<=|y|$。 \
      因而 \
      $|f(x,y)|<=|x|+|y|$。 \
      又当 $(x,y)->(0,0)$ 时，右端 $|x|+|y|->0$， \
      且显然 $-|x|-|y|<=f(x,y)<=|x|+|y|$。 \
      由夹逼定理得 \
      $lim_((x,y)->(0,0)) f(x,y)=0$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $f(x, y) = cases((x y)/(sqrt(x^2 + y^2)) & "if" x^2 + y^2 != 0, 0 & "if" x^2 + y^2 = 0)$ 则 $f(x, y)$ 。 \
    ],
    options: (
      [处处连续],
      [处处有极限，但不连续],
      [仅在点 $(0,0)$ 处连续],
      [除点 $(0,0)$ 外处处连续],
    ),
    answer: [A],
    solution: [
      在除 $(0, 0)$ 外的点明显连续。在 $(0, 0)$ 点利用极坐标：$f =(r^2 cos theta sin theta)/(r)= r cos theta sin theta arrow 0$ ($r arrow 0$)。极限等于函数值，故在原点也连续。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      函数 $z = sqrt(ln(x + y))$ 的定义域为 。
    ],
    answer: [${(x, y) | x + y >= 1}$],
    solution: [
      需 $ln(x+y) >= 0 => x+y >= 1$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $f(x, y) = x^2 + y^2 + x y ln y/x$，则 $f(k x, k y) =$ 。
    ],
    answer: [$k^2 f(x, y)$],
    solution: [
      代入伸缩变量： \
      $f(k x,k y)=(k x)^2+(k y)^2+(k x)(k y)ln (k y)/(k x)$。 \
      因为 $ln (k y)/(k x)=ln y/x$，故 \
      $f(k x,k y)=k^2[x^2+y^2+x y ln y/x]=k^2 f(x,y)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      $lim_((x,y) arrow (0,1)) (ln (y + ee^(x^2))) (sqrt(x^2 + y^2)) =$ 。
    ],
    answer: [$ln 2$],
    solution: [
      先看第一个因子： \
      当 $(x,y)->(0,1)$ 时 \
      $x^2->0, ee^(x^2)->1, y+ee^(x^2)->2>0$， \
      所以 \
      $ln(y+ee^(x^2))->ln 2$。 \
      再看第二个因子： \
      $sqrt(x^2+y^2)->sqrt(0^2+1^2)=1$。 \
      两个因子都收敛且极限有限， \
      故乘积极限等于极限乘积： \
      $lim (ln(y+ee^(x^2)) sqrt(x^2+y^2))=(ln 2) dot 1=ln 2$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $f(x, y) = cases((tan(x^2 + y^2))/(x^2 + y^2) & (x, y) != (0, 0), A & (x, y) = (0, 0))$ 要使得 $f(x, y)$ 在点 $(0,0)$处连续，则 $A =$ 。
    ],
    answer: [$1$],
    solution: [
      令 $r^2=x^2+y^2$，则 \
      $(lim_((x,y) arrow (0,0)) (tan(x^2+y^2)))/(x^2+y^2)=(lim_(r arrow 0) tan(r^2))/(r^2)=1$。 \
      连续要求函数值等于该极限，所以 $A=1$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      函数 $f(x, y) = (x^2 - y^2)^(-1) cos y/x$ 的间断点为 。
    ],
    answer: [${(x,y) | y = plus.minus x}$],
    solution: [
      间断点为使分母为 0 的点：$x^2 - y^2 = 0 => y = plus.minus x$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      求下列函数的定义域，并画出定义域的图形：
        (1) $z = sqrt(1 - x^2 - y^2)$；
        (2) $z = ln (x + y)$；
        (3) $z =(1)/(ln (x + y))$；
        (4) $z = ln (x y - 1)$。
    ],
    solution: [
      (1) $x^2 + y^2 <= 1$（单位圆盘内部及边界）； \
      (2) $x + y > 0$（直线 $y = -x$ 右上方半平面）； \
      (3) $x + y > 0$ 且 $x + y != 1$； \
      (4) $x y > 1$（双曲线 $x y = 1$ 之间的区域）。

      (1) $x^2 + y^2 <= 1$（单位圆盘内部及边界）； \
      (2) $x + y > 0$（直线 $y = -x$ 右上方半平面）； \
      (3) $x + y > 0$ 且 $x + y != 1$； \
      (4) $x y > 1$（双曲线 $x y = 1$ 之间的区域）。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求下列极限： \
      (1) $lim_((x,y) arrow (0,0))((2 - sqrt(x y + 4))/(x y))$ ; \

      (2) $lim_((x,y) arrow (0,0)) (x y)( sqrt(2 - ee^(x y)) - 1);$ \

      (3) $lim_((x,y) arrow (2,0))((tan x y )/(y))$ ; \

      (4) $lim_((x,y) arrow (0,0))((1 - cos (x^2 + y^2))/((x^2 + y^2) ee^(x^2 y^2))).$
    ],
    solution: [
      (1) $-((1)/(4))$ ; \
      (2) 0; \
      (3) 2; \
      (4) 0。

      (1) 乘共轭： \
        $((2-sqrt(4+x y))/(x y)) dot ((2+sqrt(4+x y))/(2+sqrt(4+x y)))=-(1)/((2+sqrt(4+x y)) arrow)-(1)/(4)$。 \
        (2) 令 $t=x y arrow 0$，考察 \
        $t(sqrt(2-ee^t)-1)$。 \
        由连续性可见 $sqrt(2-ee^t)-1 -> 0$，故整个乘积趋于 $0$。 \
        (3) 令 $u=x y$，则 \
        $(tan(x y))/(y)=(x dot tan u)/(u)$。 \
        当 $(x,y) arrow (2,0)$ 时 $x arrow 2, u arrow 0$， \
        故极限为 $2$。 \
        (4) 设 $r^2=x^2+y^2$，原式为 \
        $(1-cos r^2)/(r^2 ee^(x^2 y^2))$。 \
        用 $1-(cos s approx s^2)/(2)$（$s=r^2$）得分子为 $O(r^4)$，分母为 $O(r^2)$，故极限为 0。
    ],
  ),
)

#book-section(section-title, problems)
