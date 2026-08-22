// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": blank, book-section

#let section-title = [第一节 常数项级数的概念与性质]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      级数 $sum_(n=1)^oo ((-1)^(n+1))/(3^n)$ 的和等于
    ],
    options: (
      [$-(1)/(4)$],
      [$(1)/(4)$],
      [$(1)/(2)$],
      [$-(1)/(2)$],
    ),
    answer: [B],
    solution: [
      此为首项 $a = frac(1, 3, style: "horizontal")$，公比 $q = -frac(1, 3, style: "horizontal")$ 的等比级数。和 \
      $S = (a)/(1 - q) = (1/3)/(1 - (-(1)/(3))) = (1/3)/((4)/(3)) = frac(1, 4)$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      下列级数中收敛的是
    ],
    options: (
      [$sum_(n=1)^oo ((4^n + 8^n))/(8^n)$],
      [$sum_(n=1)^oo ((8^n - 4^n))/(8^n)$],
      [$sum_(n=1)^oo ((2^n + 4^n))/(8^n)$],
      [$sum_(n=1)^oo ((2^n dot 4^n))/(8^n)$],
    ),
    answer: [C],
    solution: [
      分析各选项通项是否趋于 0：A. $1 + frac(1, 2^n, style: "horizontal") arrow 1 != 0$；B. $1 - frac(1, 2^n, style: "horizontal") arrow 1 != 0$；C. $frac(1, 4^n, style: "horizontal") + frac(1, 2^n, style: "horizontal") arrow 0$，且为两个收敛等比级数之和，故收敛；D. $1^n = 1 != 0$。故选 C。
    ],
  ),
  (
    kind: "choice",
    stem: [
      若 $lim_(n arrow oo) u_n = 0$，则级数 $sum_(n=1)^oo u_n$
    ],
    options: (
      [一定收敛],
      [一定发散],
      [可能收敛，也可能发散],
      [部分和 $s_n = u_1 + u_2 + dots + u_n = 0$],
    ),
    answer: [C],
    solution: [
      通项趋于 0 是级数收敛的必要不充分条件。例如调和级数 $sum frac(1, n, style: "horizontal")$ 发散，而级数 $sum frac(1, n^2, style: "horizontal")$ 收敛。
    ],
  ),
  (
    kind: "choice",
    stem: [
      下列级数中发散的是
    ],
    options: (
      [$sum_(n=1)^oo ln(1 +(1)/(n))$],
      [$sum_(n=1)^oo (1)/(3^n)$],
      [$sum_(n=1)^oo 1 / (n (n + 2))$],
      [$sum_(n=1)^oo ((3^n + (-1)^n))/(4^n)$],
    ),
    answer: [A],
    solution: [
      A. \
      $s_n = sum_(k=1)^n (ln(k+1) - ln k) = ln(n+1) arrow oo$，发散。B、D 为几何级数，C 为 $p$ 级数（或裂项相消），均收敛。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      级数 $(2)/(1)-(3)/(2)+(4)/(3)-(5)/(4)+(6)/(5)- dots$ 的一般项是
    ],
    answer: [$(-1)^(n+1) (n + 1) / n$],
    solution: [
      观察到第 $n$ 项分母为 $n$，分子为 $n+1$。 \
      符号按 $+,-,+,-,dots$ 交替，故符号因子为 $(-1)^(n+1)$。 \
      因而一般项 \
      $u_n=(-1)^(n+1) (n + 1) / n$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设级数 $sum_(n=1)^oo 1 / ((2n - 1) (2n + 1))$，则 $s_n =$ #blank()，$lim_(n arrow oo) s_n =$ #blank()
    ],
    answers: (
      [$(1)/(2) (1 - (1)/(2n+1))$],
      [$(1)/(2)$],
    ),
    solution: [
      先作部分分式分解： \
      $(1)/((2n-1)(2n+1)) = (1)/(2) [(1)/(2n-1) - (1)/(2n+1)]$。 \
      因而 \
      $s_n = (1)/(2) sum_(k=1)^n [(1)/(2k-1) - (1)/(2k+1)]$ \
      $= (1)/(2) (1 - (1)/(2n+1))$。 \
      令 $n arrow oo$，得 \
      $S=lim_(n arrow oo) s_n=(1)/(2)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设级数 $sum_(n=1)^oo u_n$ 的部分和为 $s_n =(2^n - 1) / 2^n$，则级数的一般项 $u_n =$ #blank()，余项 $r_n = sum_(k=n+1)^oo u_k =$ #blank()
    ],
    answers: (
      [$(1)/(2^n)$],
      [$(1)/(2^n)$],
    ),
    solution: [
      由 \
      $s_n=1-(1)/(2^n)$， \
      有 \
      $u_n=s_n-s_(n-1)=(1-(1)/(2^n))-(1-(1)/(2^(n-1)))=(1)/(2^n)$。 \
      级数和为 \
      $S=lim_(n arrow oo) s_n=1$， \
      故余项 \
      $r_n=S-s_n=1-(1-(1)/(2^n))=(1)/(2^n)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      已知数列 $(b_n)$，有 $lim_(n arrow oo) b_n = oo$，且 $b_n != 0$ ($n = 1, 2, dots$)，则级数 $sum_(n=1)^oo ((1)/(b_n)-(1)/(b_(n+1)))$ 的和为
    ],
    answer: [$(1)/(b_1)$],
    solution: [
      部分和 \
      $s_n=sum_(k=1)^n ((1)/(b_k)-(1)/(b_(k+1)))=(1)/(b_1)-(1)/(b_(n+1))$。 \
      由 $b_n arrow oo$ 得 $frac(1, b_(n+1), style: "horizontal") arrow 0$， \
      故 \
      $S=lim_(n arrow oo) s_n=(1)/(b_1)$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      根据级数收敛与发散的定义判定下列级数的敛散性： \
      (1) $(1)/(1 dot 3)+(1)/(3 dot 5)+ dots +(1)/((2n-1)(2n+1))+ dots$； \
      (2) $sin(pi/6) + sin(2 pi/6) + dots + sin(n pi/6) + dots$； \
      (3) $sum_(n=1)^oo ln(1 +(1)/(n))$
    ],
    solution: [
      (1) 记 \
      $u_n = (1)/((2n-1)(2n+1)) = (1)/(2) [(1)/(2n-1) - (1)/(2n+1)]$。 \
      部分和 \
      $s_N = (1)/(2) sum_(n=1)^N [(1)/(2n-1) - (1)/(2n+1)] = (1)/(2) [1 - (1)/(2N+1)]$， \
      故 $s_N -> frac(1, 2, style: "horizontal")$，级数收敛。 \
      (2) 通项 $u_n = sin(n pi/6)$。 \
      取子列 $n=3+12k$，有 $u_n=sin(pi/2+2k pi)=1$， \
      通项不趋于 0，故级数发散。 \
      (3) 记 $u_n=ln(1+(1)/(n))=ln((n+1)/(n))$。 \
      部分和 \
      $s_N=sum_(n=1)^N ln((n+1)/(n))=ln(N+1)$， \
      $s_N->oo$，故发散。
    ],
  ),
  (
    kind: "compute",
    stem: [
      判定下列级数的敛散性： \
      (1) $-(8)/(9)+ ((8)/(9))^2 - ((8)/(9))^3 + dots + (-1)^n ((8)/(9))^n + dots$； \
      (2) $(1)/(3)+(1)/(6)+(1)/(9)+ dots +(1)/(3n)+ dots$； \
      (3) $(1)/(3)+(1)/(sqrt(3))+(1)/(root(3, 3))+ dots +(1)/(root(n, 3))+ dots$
    ],
    solution: [
      (1) 级数为 \
      $sum_(n=1)^oo (-1)^n (8/9)^n$，是公比 $q = -frac(8, 9, style: "horizontal")$ 的等比级数， \
      $|q| < 1$，故收敛。 \
      (2) 级数为 \
      $sum_(n=1)^oo (1)/(3n) = (1)/(3) sum_(n=1)^oo (1)/(n)$， \
      与调和级数同敛散，故发散。 \
      (3) 通项 $u_n = 1/root(n, 3) = 3^(-1/n)$。 \
      因 $3^(1/n) -> 1$，故 $u_n -> 1 != 0$。 \
      通项不趋于 0，级数发散。
    ],
  ),
)

#book-section(section-title, problems)
