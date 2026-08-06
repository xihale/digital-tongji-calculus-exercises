// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section, blank

#let section-title = [第四节 函数展开成幂级数]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      函数 $f(x) =(1)/(3 - x)$ 展开成 $(x - 1)$ 的幂级数为。
    ],
    options: (
      [$(sum_(n=0)^oo (x-1)^n)/(2^n)$],
      [$(sum_(n=0)^oo (-1)^n (x - 1)^n)/(2^n)$],
      [$(sum_(n=0)^oo (x - 1)^n)/(2^(n+1))$],
      [$(sum_(n=0)^oo (x - 1)^n)/(2)$],
    ),
    answer: [C],
    solution: [
      $f(x) =(1)/(2 - (x - 1))=(1)/(2 dot 1)/(1 -(x - 1)/(2))=(1)/(2 sum_(n=0)^oo ((x-1)/(2))^n)=(sum_(n=0)^oo (x-1)^n)/(2^(n+1))$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      函数 $f(x) =(1)/(a + b x)$ 展开成 $(x - x_0)$ ($a + b x_0 != 0, a b != 0$) 的幂级数为。
    ],
    options: (
      [$(sum_(n=0)^oo b^n)/((a + b x_0)^(n+1) (x - x_0)^n)$],
      [$sum_(n=0)^oo ((b)/(a + b x_0))^n (x - x_0)^n$],
      [$sum_(n=0)^oo (-1)^n ((b)/(a + b x_0))^n (x - x_0)^n$],
      [$(sum_(n=0)^oo (-b)^n)/((a + b x_0)^(n+1) (x - x_0)^n)$],
    ),
    answer: [D],
    solution: [
      $f(x) =(1)/((a + b x_0) + b(x - x_0))$ \
          $=(1)/((a + b x_0) dot 1)/(1 +(b)/((a + b x_0)(x - x_0)))$ \
          $=(1)/((a + b x_0) sum_(n=0)^oo (-(b)/(a + b x_0))^n (x - x_0)^n)$ \
          $=(sum_(n=0)^oo (-b)^n)/((a + b x_0)^(n+1) (x - x_0)^n)$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      函数 $f(x) = ee^(-x^2)$ 展开成 $x$ 的幂级数为。
    ],
    options: (
      [$(sum_(n=0)^oo x^(2n))/(n!)$],
      [$(sum_(n=0)^oo (-1)^n x^(2n))/(n!)$],
      [$(sum_(n=0)^oo x^n)/(n!)$],
      [$(sum_(n=0)^oo (-1)^n x^n)/(n!)$],
    ),
    answer: [B],
    solution: [
      利用 $ee^u =(sum_(n=0)^oo u^n)/(n!)$，令 $u = -x^2$，得 $ee^(-x^2) =(sum_(n=0)^oo (-x^2)^n)/(n!)=(sum_(n=0)^oo (-1)^n x^(2n))/(n!)$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      $f^(n)(0)$ 存在（$n=1, 2, dots$）是函数 $f(x)$ 可展开成 $x$ 的幂级数的。
    ],
    options: (
      [充要条件],
      [充分条件],
      [必要条件],
      [无关条件],
    ),
    answer: [C],
    solution: [
      如果 $f(x)$ 可展开成幂级数，则其在 0 点必无限可导，且系数为 $(f^(n)(0))/(n!)$。但反之不成立（例如余项不趋于 0 的情况），故只是必要条件。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      若函数 $f(x) =(1)/((1 - 2x)(1 - 3x))$ 展开成 $x$ 的幂级数，其收敛半径 $R =$
    ],
    answer: [$(1)/(3)$],
    solution: [
      幂级数的收敛半径由最近奇点决定。 \
          函数 \
          $f(x)=(1)/((1-2x)(1-3x))$ \
          的奇点在 $x=(1)/(2),(1)/(3)$。 \
          距离展开中心 $0$ 最近的是 $(|1)/(3|)$， \
          故收敛半径 \
          $R=(1)/(3)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      函数 $f(x) = ln(2 + x)$ 关于 $x$ 的幂级数展开式为 #blank()，其收敛域为 #blank()
    ],
    answers: (
      [$ln 2 +(sum_(n=1)^oo (-1)^(n-1))/((n dot 2^n) x^n)$],
      [$(-2, 2]$],
    ),
    solution: [
      写成 \
          $ln(2+x)=ln 2+ln(1+(x)/(2))$。 \
          用展开式 \
          $ln(1+t)=(sum_(n=1)^oo (-1)^(n-1)t^n)/(n)$（$-1<t<=1$）， \
          令 $t=(x)/(2)$，得 \
          $ln(2+x)=ln 2+(sum_(n=1)^oo (-1)^(n-1))/((n dot 2^n) x^n)$。 \
          由 $-1<(x)/(2)<=1$ 得收敛域 \
          $(-2,2]$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $f(x) = sum_(n=0)^oo a_n x^n$，则 $g(x) =(f(x))/(1 - x)$ 的麦克劳林级数展开式为
    ],
    answer: [$sum_(n=0)^oo (sum_(k=0)^n a_k) x^n$],
    solution: [
      由 \
          $(1)/(1-x)=sum_(m=0)^oo x^m$， \
          有 \
          $g(x)=(f(x))/(1-x)= (sum_(n=0)^oo a_n x^n)(sum_(m=0)^oo x^m)$。 \
          作 Cauchy 乘积： \
          $g(x)=sum_(n=0)^oo (sum_(k=0)^n a_k)x^n$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      若 $(1)/(3 + x)= sum_(n=0)^oo a_n (x - 1)^n$ ($|x - 1| < 4$)，则 $a_n =$
    ],
    answer: [$((-1)^n)/(4^(n+1))$],
    solution: [
      令 $t=x-1$，则 \
          $(1)/(3+x)=(1)/(4+t)=(1)/(4 dot 1)/(1+(t)/(4))$。 \
          用几何级数 \
          $(1)/(1+u)=sum_(n=0)^oo (-1)^n u^n$（$|u|<1$）， \
          取 $u=(t)/(4)$，得 \
          $(1)/(3+x)=(sum_(n=0)^oo (-1)^n)/(4^(n+1) t^n)$。 \
          故 \
          $a_n=((-1)^n)/(4^(n+1))$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      若函数 $ln(4 - 9x^2)$ 展开成 $x$ 的幂级数，其收敛半径 $R =$
    ],
    answer: [$(2)/(3)$],
    solution: [
      写成 \
          $ln(4-9x^2)=ln 4+ln(1-((3x)/(2))^2)$。 \
          对 $ln(1-u)$ 的幂级数要求 $|u|<1$， \
          故需 \
          $|((3x)/(2))^2|<1 arrow |x|<(2)/(3)$。 \
          所以收敛半径 \
          $R=(2)/(3)$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      将函数 $f(x) = (1 + x) ln(1 + x)$ 展开成 $x$ 的幂级数，并求展开式成立的区间。
    ],
    solution: [
      由 \
          $ln(1+x)=(sum_(n=1)^oo (-1)^(n-1)x^n)/(n)$（$-1<x<=1$）， \
          得 \
          $(1+x)ln(1+x)=ln(1+x)+x ln(1+x)$。 \
          合并同次幂后 \
          $f(x)=x+(sum_(n=2)^oo (-1)^n)/((n(n-1)) x^n)$。 \
          收敛区间与对数级数一致，为 \
          $x in (-1,1]$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      将函数 $f(x) = cos x$ 展开成 $(x +(pi)/(3))$ 的幂级数。
    ],
    solution: [
      令 $u=x+(pi)/(3)$，则 \
          $cos x=cos(u-pi/3)=cos u cos pi/3+sin u sin pi/3$ \
          $=(1)/(2 cos u)+(sqrt(3))/(2 sin u)$。 \
          再代入 \
          $cos u=(sum_(n=0)^oo (-1)^n u^(2n))/((2n)!)$， \
          $sin u=(sum_(n=0)^oo (-1)^n u^(2n+1))/((2n+1)!)$， \
          得 \
          $cos x =(1)/(2 sum_(n=0)^oo (-1)^n [(1)/((2n)! (x +(pi)/(3))^(2n))+(sqrt(3))/((2n+1)! (x +(pi)/(3))^(2n+1))])$。 \
          该展开在全实轴成立。
    ],
  ),
  (
    kind: "compute",
    stem: [
      将函数 $f(x) =(1)/(x^2 + 3x + 2)$ 展开成 $(x + 4)$ 的幂级数。
    ],
    solution: [
      设 $t=x+4$，则 \
          $x^2+3x+2=(x+1)(x+2)=(t-3)(t-2)$。 \
          先分解 \
          $(1)/((t-3)(t-2))=(1)/(t-3)-(1)/(t-2)$。 \
          再分别写成几何级数： \
          $(1)/(t-3)=-(1)/(3 sum_(n=0)^oo ((t)/(3))^n)$（$|t|<3$）， \
          $(1)/(t-2)=-(1)/(2 sum_(n=0)^oo ((t)/(2))^n)$（$|t|<2$）。 \
          合并得 \
          $(1)/(x^2+3x+2)=sum_(n=0)^oo ((1)/(2^(n+1))-(1)/(3^(n+1)))(x+4)^n$。 \
          公共收敛条件为 $|x+4|<2$，即 $x in (-6,-2)$。
    ],
  ),
)

#book-section(section-title, problems)
