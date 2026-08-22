// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第三节 幂级数]

#let problems = (
  (
    kind: "judge",
    kind-title: [一、判断题],
    stem: [
      若幂级数 $sum_(n=1)^oo a_n (x - 1)^n$ 在点 $x = -1$ 处收敛，则在点 $x = 2$ 处必收敛
    ],
    answer: [√],
    solution: [
      收敛中心为 $x_0 = 1$，收敛半径 $R >= |(-1) - 1| = 2$。点 $x = 2$ 到中心距离为 $|2 - 1| = 1 < 2 <= R$，故在收敛圆内部，必绝对收敛。
    ],
  ),
  (
    kind: "judge",
    stem: [
      已知幂级数 $sum_(n=1)^oo a_n x^n$ 的收敛半径为 $R$，则幂级数 $sum_(n=1)^oo a_n (1)/(2^n) x^(2n+1)$ 的收敛半径为 $sqrt(R)$
    ],
    answer: [×],
    solution: [
      令 $t = x^2$，则级数化为 $x sum_(n=1)^oo (a_n)/(2^n) t^n$，其系数 $c_n = (a_n)/(2^n)$ 满足 $lim abs(c_n)/abs(c_(n+1)) = 2 lim abs(a_n)/abs(a_(n+1)) = 2R$。故 $|t| < 2R$，即 $|x| < sqrt(2R)$，收敛半径为 $sqrt(2R)$ 而非 $sqrt(R)$，命题错误。
    ],
  ),
  (
    kind: "judge",
    stem: [
      幂级数 $sum_(n=1)^oo a_n x^n$ 和 $sum_(n=1)^oo b_n x^n$ 的收敛半径分别为 $R_a, R_b$，则幂级数 $sum_(n=1)^oo (a_n + b_n) x^n$ 的收敛半径为 $R = min(R_a, R_b)$
    ],
    answer: [×],
    solution: [
      $R >= min(R_a, R_b)$，但可以严格大于。例如 $a_n = 1, b_n = -1$，各自 $R = 1$，但 $a_n + b_n = 0$，$R = +oo$。
    ],
  ),
  (
    kind: "choice",
    kind-title: [二、选择题],
    stem: [
      设幂级数 $sum_(n=0)^oo ((a^n - b^n))/(a^n + b^n) x^n$ ($0 < a < b$)，则幂级数的收敛半径 $R$ 为
    ],
    options: (
      [$b$],
      [$(1)/(a)$],
      [$(1)/(b)$],
      [与 $a, b$ 无关],
    ),
    answer: [D],
    solution: [
      计算系数比值的极限： \
          $lim_(n arrow oo) abs(c_n)/abs(c_(n+1))$ \
          $= lim_(n arrow oo) abs((a^n - b^n)/(a^n + b^n)) / abs((a^(n+1) - b^(n+1))/(a^(n+1) + b^(n+1)))$ \
          $= lim_(n arrow oo) abs((-1)/((-1))) = 1$。 \
          收敛半径 $R = 1$，与 $a, b$ 无关。
    ],
  ),
  (
    kind: "choice",
    stem: [
      当常数 $p > 0$ 时，幂级数 $sum_(n=1)^oo (((-1)^(n-1))/(n^p)) x^n$ 在其收敛区间的右端点处
    ],
    options: (
      [条件收敛],
      [绝对收敛],
      [发散],
      [$p <= 1$ 时条件收敛，$p > 1$ 时绝对收敛],
    ),
    answer: [D],
    solution: [
      收敛半径 $R=1$。右端点 $x=1$ 时级数为 $sum ((-1)^(n-1))/(n^p)$。这是一个交错级数，且 $|u_n| =(1)/(n^p)$ 单调趋于 0，故收敛。若 $p > 1$，绝对值级数收敛，为绝对收敛；若 $p <= 1$，绝对值级数发散，为条件收敛。
    ],
  ),
  (
    kind: "blank",
    kind-title: [三、填空题],
    stem: [
      若幂级数 $sum_(n=0)^oo c_n x^n$ 在点 $x = -4$ 处收敛，在点 $x = 6$ 处发散，则当 $x = 1$ 时，$sum_(n=0)^oo c_n x^n$ 的敛散情况是
    ],
    answer: [绝对收敛],
    solution: [
      已知在 $x=-4$ 处收敛，故收敛半径满足 $R>=4$； \
          在 $x=6$ 处发散，故 $R<=6$。 \
          因而至少可确定 $R>=4$。 \
          对 $x=1$ 有 $|1|<4<=R$，处于收敛圆内部， \
          幂级数在内部必绝对收敛。
    ],
  ),
  (
    kind: "blank",
    stem: [
      若 $lim_(n arrow oo) abs(c_n)/abs(c_(n+1)) = 2$，则幂级数 $sum_(n=0)^oo c_n x^(2n)$ 的收敛半径为
    ],
    answer: [$sqrt(2)$],
    solution: [
      令 $t=x^2$，则原级数可看作 \
          $sum_(n=0)^oo c_n t^n$。 \
          已知 \
          $lim_(n arrow oo) abs(c_n)/abs(c_(n+1))=2$，故关于 $t$ 的收敛半径为 $R_t=2$。 \
          即 \
          $|t|<2 arrow |x|^2<2 arrow |x|<sqrt(2)$。 \
          因而关于 $x$ 的收敛半径 \
          $R=sqrt(2)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      当 $|x| < 1$ 时，幂级数 $sum_(n=1)^oo (x^n)/(n)$ 的和函数为
    ],
    answer: [$-ln(1 - x)$],
    solution: [
      由几何级数 \
          $sum_(n=0)^oo x^n=(1)/(1-x)$（$|x|<1$）， \
          两边积分： \
          $int_0^x sum_(n=0)^oo t^n dif t= int_0^x (1)/(1-t) dif t$。 \
          得 \
          $sum_(n=0)^oo (x^(n+1))/(n+1)=-ln(1-x)$， \
          即 \
          $sum_(n=1)^oo (x^n)/(n)=-ln(1-x)$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [四、计算题],
    stem: [
      求下列幂级数的收敛区间： \
          (1) $1 - x +(x^2)/(2^2)- dots +((-1)^n x^n)/(n^2)+ dots$； \
          (2) $sum_(n=1)^oo ((-1)^n x^(2n+1))/(2n+1)$； \
          (3) $sum_(n=1)^oo ((x-5)^n)/(sqrt(n))$
    ],
    solution: [
      (1) 级数 $sum ((-1)^n x^n)/(n^2)$。 \
          由 $lim root(n,(1)/(n^2))=1$ 得收敛半径 $R=1$。 \
          端点： \
          $x=1$ 时为 $sum ((-1)^n)/(n^2)$（绝对收敛）； \
          $x=-1$ 时为 $sum (1)/(n^2)$（收敛）。 \
          故区间为 $[-1,1]$。 \
          (2) 级数 $sum ((-1)^n x^(2n+1))/(2n+1)$。 \
          写成 $x sum ((-x^2)^n)/(2n+1)$，故 $|x|<1$ 内收敛。 \
          端点： \
          $x=1$ 时为 $sum ((-1)^n)/(2n+1)$ 收敛； \
          $x=-1$ 时仅差一个符号亦收敛。 \
          故区间为 $[-1,1]$。 \
          (3) 级数 $sum ((x-5)^n)/(sqrt(n))$。 \
          由 $lim root(n,(1)/(sqrt(n)))=1$，收敛半径 $R=1$，先得 $|x-5|<1$。 \
          端点： \
          $x=4$ 时为 $sum ((-1)^n)/(sqrt(n))$（条件收敛）； \
          $x=6$ 时为 $sum (1)/(sqrt(n))$（发散）。 \
          故区间为 $[4,6)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      利用逐项求导或逐项积分，求下列幂级数的和函数： \
          (1) $sum_(n=1)^oo n x^(n-1)$； \
          (2) $sum_(n=0)^oo (x^(4n+1))/(4n+1)$； \
          (3) $sum_(n=1)^oo (n+2) x^(n+3)$
    ],
    solution: [
      (1) 由 \
          $sum_(n=0)^oo x^n=(1)/(1-x)$（$|x|<1$）逐项求导得 \
          $sum_(n=1)^oo n x^(n-1)=(1)/((1-x)^2)$。 \
          (2) 注意 \
          $sum_(n=0)^oo (x^(4n+1))/(4n+1)= int_0^x (1)/(1-t^4) dif t$。 \
          分解 \
          $(1)/(1-t^4)=(1)/(2) (1)/(1-t^2)+(1)/(2) (1)/(1+t^2)$， \
          积分得 \
          $S(x)=(1)/(4) ln((1+x)/(1-x))+(1)/(2) arctan x$（$|x|<1$）。 \
          (3) 设 \
          $T(x)=sum_(n=1)^oo (n+2)x^n$ \
          $=sum n x^n+2 sum x^n =(x)/((1-x)^2)+(2x)/(1-x)$。 \
          故原级数 \
          $sum_(n=1)^oo (n+2)x^(n+3)=x^3 T(x)$ \
          $=(x^4(3-2x))/((1-x)^2)$（$|x|<1$）。
    ],
  ),
)

#book-section(section-title, problems)
