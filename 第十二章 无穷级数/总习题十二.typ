// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": blank, book-section

#let section-title = [总习题十二]

#let problems = (
  (
    kind: "judge",
    kind-title: [一、判断题],
    stem: [
      若级数 $sum_(n=1)^oo u_n$ 收敛，则 $lim_(n arrow oo) u_n = 0$
    ],
    answer: [√],
    solution: [
      级数收敛的必要条件是通项趋于 0。
    ],
  ),
  (
    kind: "judge",
    stem: [
      若级数 $sum_(n=1)^oo u_n$ 收敛，$sum_(n=1)^oo v_n$ 发散，则级数 $sum_(n=1)^oo (u_n + v_n)$ 发散
    ],
    answer: [√],
    solution: [
      若 $sum(u_n+v_n)$ 收敛，则 $sum v_n = sum(u_n+v_n) - sum u_n$ 也收敛，矛盾。
    ],
  ),
  (
    kind: "judge",
    stem: [
      级数加括号后不改变其敛散性
    ],
    answer: [×],
    solution: [
      发散级数加括号后可能收敛，例如 $1-1+1-1+dots$ 发散，但 $(1-1)+(1-1)+dots = 0+0+dots = 0$ 收敛。
    ],
  ),
  (
    kind: "judge",
    stem: [
      正项级数收敛的充要条件是前 $n$ 项和构成的数列 $s_n$ 有界
    ],
    answer: [√],
    solution: [
      正项级数部分和数列单调递增，单调递增数列收敛当且仅当有界。
    ],
  ),
  (
    kind: "judge",
    stem: [
      若正项级数 $sum_(n=1)^oo u_n$ 收敛，则级数 $sum_(n=1)^oo sqrt(u_n u_(n+1))$ 也收敛
    ],
    answer: [√],
    solution: [
      由均值不等式 $sqrt(u_n u_(n+1)) <= (u_n + u_(n+1))/(2)$，右端为收敛级数的线性组合，故左端级数收敛。
    ],
  ),
  (
    kind: "judge",
    stem: [
      若 $lim_(n arrow oo) (u_n)/(v_n)= l$ ($0 < l < +oo$)，则级数 $sum_(n=1)^oo u_n$ 和 $sum_(n=1)^oo v_n$ 有相同的敛散性
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
      当级数 $sum_(n=1)^oo (a_n + b_n)$ 收敛时，级数 $sum_(n=1)^oo a_n$ 与 $sum_(n=1)^oo b_n$
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
      在正项级数中，$sum_(n=1)^oo a_n$ 收敛是级数 $sum_(n=1)^oo a_n^2$ 收敛的
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
      设 $sum_(n=1)^oo a_n$ 为任意项级数，若 $|a_n| > |a_(n+1)|$ 且 $lim_(n arrow oo) a_n = 0$，则该级数
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
      若函数 $y =sum_(n=0)^oo (x^n)/((n!)^2)$，则 $x y'' + y' =$
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
      $y' =sum_(n=1)^oo (n x^(n-1))/((n!)^2)=sum_(n=0)^oo (x^n)/(n!(n+1)!)$， \
      $y'' =sum_(n=2)^oo (n(n-1) x^(n-2))/((n!)^2)=sum_(n=0)^oo (x^n)/(n!(n+2)!)$。 \
      因而 \
      $x y'' + y' = sum_(n=0)^oo (x^(n+1))/(n!(n+2)!)+sum_(n=0)^oo (x^n)/(n!(n+1)!)$。 \
      把第一项换指标并合并，可得每阶系数恰为 $(1)/((n!)^2)$，故 \
      $x y'' + y' =sum_(n=0)^oo (x^n)/((n!)^2)= y$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      若级数 $sum_(n=0)^oo a_n (x - 1)^n$ 在点 $x = -1$ 处收敛，则该级数在点 $x = 2$ 处
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
      级数 $(1)/(2)-(1)/(4)+(1)/(8)- dots +((-1)^(n-1))/(2^n)+ dots$ 的和为
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
      幂级数 $sum_(n=0)^oo (x^n)/(n!)$ 的收敛区间为
    ],
    answer: [$(-oo, +oo)$],
    solution: [
      由比值法： \
      $u_n=(x^n)/(n!)$， \
      $abs((u_(n+1))/(u_n))=(abs(x))/(n+1) arrow 0< 1$（任意实数 $x$）。 \
      故级数对一切 $x in RR$ 收敛， \
      收敛区间为 $(-oo,+oo)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      级数 $sum_(n=0)^oo (1)/(1 + a^n)$ ($a > 0$) 当 $a$ 满足条件 #blank() 时收敛
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
      幂级数 $sum_(n=1)^oo ((-1)^n x^(3n-1))/(n dot 8^n)$ 的收敛域为
    ],
    answer: [$(-2, 2]$],
    solution: [
      写成 \
      $(1)/(x) sum_(n=1)^oo ((-1)^n)/(n) ((x^3)/(8))^n$。 \
      由对数级数可知需满足 $abs((x^3)/(8))<1$，即 $|x|<2$。 \
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
      幂级数 $sum_(n=0)^oo (x^n)/(3^n + (-2)^n + 3 dot 2^n)$ 的收敛半径 $R =$
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
      设 $f(x)$ 是周期为 $2 pi$ 的周期函数，且 $f(x) = cases(0 & -pi <= x < 0, x + 2 & 0 <= x < pi)$。则 $f(x)$ 的傅里叶级数在点 $x = 0$ 处收敛于
    ],
    answer: [$1$],
    solution: [
      傅里叶级数在间断点收敛到左右极限平均值。 \
      在 $x=0$ 处： \
      $f(0^-)=0, f(0^+)=2$。 \
      因而 \
      $S(0)=(1)/(2)(0+2)=1$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [四、计算题],
    stem: [
      求幂级数 $sum_(n=1)^oo ((n^2 + 1) x^(2n))/(n)$ ($|x| < 1$) 在收敛区间内的和函数，并求 $sum_(n=1)^oo ((n^2 + 1))/(n dot 2^n)$ 的和
    ],
    solution: [
      拆项： \
      $sum_(n=1)^oo ((n^2+1) x^(2n))/(n)=sum n x^(2n)+sum (x^(2n))/(n)$。 \
      其中 \
      $sum n t^n=(t)/((1-t)^2)$，取 $t=x^2$ 得 \
      $sum n x^(2n)=(x^2)/((1-x^2)^2)$； \
      又 \
      $sum (x^(2n))/(n)=-ln(1-x^2)$。 \
      故 \
      $S(x)=(x^2)/((1-x^2)^2)-ln(1-x^2)$。 \
      再取 $x^2=(1)/(2)$（即 $x=(1)/(sqrt(2))$）得到 \
      $sum_(n=1)^oo ((n^2+1))/(n dot 2^n)=S((1)/(sqrt(2)))=2+ln 2$。
    ],
  ),
)

#book-section(section-title, problems)
