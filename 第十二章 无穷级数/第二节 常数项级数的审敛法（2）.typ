// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第二节 常数项级数的审敛法（2）]

#let problems = (
  (
    kind: "judge",
    kind-title: [一、判断题],
    stem: [
      若正项级数 $sum_(n=1)^oo u_n$ 收敛，则级数 $sum_(n=1)^oo u_n^2$ 也收敛
    ],
  ),
  (
    kind: "judge",
    stem: [
      若正项级数 $sum_(n=1)^oo u_n$ 发散，则 $lim_(n arrow oo) (u_(n+1))/(u_n)= rho > 1$
    ],
  ),
  (
    kind: "choice",
    kind-title: [二、选择题],
    stem: [
      下列级数中，条件收敛的是
    ],
    options: (
      [$(sum_(n=1)^oo (-1)^n n)/(n+1)$],
      [$(sum_(n=1)^oo (-1)^n sqrt(2))/(n^2)$],
      [$(sum_(n=1)^oo (-1)^n 2)/(sqrt(n))$],
      [$(sum_(n=1)^oo (-1)^n 1)/(n^((4)/(3)))$],
    ),
    answer: [C],
    solution: [
      A. 通项不趋于 0，发散；B. 绝对值级数收敛，故绝对收敛；C. $(sum 2)/(sqrt(n))$ 发散，但原交错级数满足莱布尼茨判别法，故条件收敛；D. 绝对值级数为 $p$ 级数（$p=(4)/(3)>1$），绝对收敛。
    ],
  ),
  (
    kind: "choice",
    stem: [
      下列级数中，收敛的是
    ],
    options: (
      [$(sum_(n=1)^oo 1)/(n root(n, n))$],
      [$(sum_(n=1)^oo (n+1))/(n(n+2))$],
      [$(sum_(n=1)^oo 3^n)/(n dot 2^n)$],
      [$(sum_(n=2)^oo 4)/((n-1)(n+3))$],
    ),
    answer: [D],
    solution: [
      A、B 均与 $(sum 1)/(n)$ 同阶，发散；C 为比值大于 1 的正项级数，发散；D 选项通项与 $(1)/(n^2)$ 同阶，收敛。
    ],
  ),
  (
    kind: "blank",
    kind-title: [三、填空题],
    stem: [
      级数 $sum_(n=1)^oo u_n$ 条件收敛的含义是
    ],
    answer: [$sum u_n$ 收敛而 $sum |u_n|$ 发散],
    solution: [
      条件收敛的定义是：原级数收敛， \
          但其绝对值级数不收敛。 \
          即 \
          $sum_(n=1)^oo u_n$ 收敛，而 \
          $sum_(n=1)^oo |u_n|$ 发散。
    ],
  ),
  (
    kind: "blank",
    stem: [
      级数 $sum_(n=1)^oo u_n$ 绝对收敛的含义是
    ],
    answer: [$sum |u_n|$ 收敛],
    solution: [
      绝对收敛按定义指 \
          $sum_(n=1)^oo |u_n|$ 收敛。 \
          且由定理可知绝对收敛必推出原级数收敛， \
          故可写成 \
          $sum u_n$ 收敛且 $sum |u_n|$ 收敛。
    ],
  ),
  (
    kind: "compute",
    kind-title: [四、计算题],
    stem: [
      判定下列级数的敛散性： \
          (1) $(1^4)/(1!)+(2^4)/(2!)+ dots +(n^4)/(n!)+ dots$； \
          (2) $(sum_(n=1)^oo (n+1))/(n(n+2))$； \
          (3) $sum_(n=1)^oo 2^n sin(pi/3^n)$； \
          (4) $sqrt(2) + sqrt((3)/(2)) + dots + sqrt((n+1)/(n)) + dots$
    ],
    solution: [
      (1) 设 $u_n=(n^4)/(n!)$。 \
          $(u_(n+1))/(u_n)=((n+1)^3)/(n^4 arrow 0)<1$，故收敛。 \
          (2) 设 $u_n=(n+1)/(n(n+2))=(1)/(2((1)/(n)+(1)/(n+2)))$。 \
          与调和级数同阶，故发散。 \
          (3) 设 $u_n=2^n sin(pi/3^n)$。 \
          由 $lim_(x arrow 0) (sin x)/(x)= 1$， \
          $lim_(n arrow oo) (2^n sin(pi/3^n))/(2^n ((pi)/(3^n)))= 1$， \
          即与 $pi ((2)/(3))^n$ 同阶， \
          与收敛等比级数极限比较，故收敛。 \
          (4) 通项 $u_n=sqrt((n+1)/(n))=sqrt(1+(1)/(n)) arrow 1 != 0$， \
          通项不趋于 0，故发散。
    ],
  ),
  (
    kind: "compute",
    stem: [
      判定下列级数的敛散性，如果收敛，是绝对收敛还是条件收敛： \
          (1) $1 -(1)/(sqrt(2))+(1)/(sqrt(3))-(1)/(sqrt(4))+ dots +((-1)^(n-1))/(sqrt(n))+ dots$； \
          (2) $(sum_(n=1)^oo (-1)^(n-1) n)/(3^(n-1))$
    ],
    solution: [
      (1) 级数为 $(sum (-1)^(n-1))/(sqrt(n))$。 \
          其正项 $(1)/(sqrt(n))$ 单调趋 0，故按莱布尼茨判别原级数收敛； \
          但绝对值级数 $(sum 1)/(sqrt(n))$ 为 $p$ 级数（$p=(1)/(2)<=1$）发散， \
          所以是条件收敛。 \
          (2) 绝对值级数 \
          $(sum n)/(3^(n-1))$。 \
          设 $u_n=(n)/(3^(n-1))$， \
          $(u_(n+1))/(u_n)=(n+1)/((3n) arrow 1)/(3)<1$， \
          故绝对值级数收敛，从而原级数绝对收敛。
    ],
  ),
)

#book-section(section-title, problems)
