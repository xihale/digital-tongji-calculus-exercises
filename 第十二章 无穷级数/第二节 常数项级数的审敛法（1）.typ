// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section, blank

#let section-title = [第二节 常数项级数的审敛法（1）]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      已知 $sum_(n=1)^oo u_n$ 为正项级数，下列命题中错误的是。
    ],
    options: (
      [若 $lim_(n arrow oo) (u_(n+1))/(u_n)= rho < 1$，则 $sum_(n=1)^oo u_n$ 收敛],
      [若 $lim_(n arrow oo) (u_(n+1))/(u_n)= rho > 1$，则 $sum_(n=1)^oo u_n$ 发散],
      [若 $(u_(n+1))/(u_n)< 1$，则 $sum_(n=1)^oo u_n$ 收敛],
      [若 $(u_(n+1))/(u_n)> 1$，则 $sum_(n=1)^oo u_n$ 发散],
    ),
    answer: [C],
    solution: [
      $(u_(n+1))/(u_n) < 1$ 不能保证级数收敛，例如调和级数 $u_n = frac(1, n, style: "horizontal")$ 满足此条件但发散。比值判别法要求比值的极限小于 1。
    ],
  ),
  (
    kind: "choice",
    stem: [
      判定级数 $(sum_(n=1)^oo 1)/(n^(1 +(1)/(n)))$ 的敛散性，下列说法正确的是。
    ],
    options: (
      [因为 $1 +(1)/(n)> 0$，所以此级数收敛],
      [因为 $lim_(n arrow oo) 1/(n^(1 +(1)/(n)))= 0$，所以此级数收敛],
      [因为 $(1)/(n^(1 +(1)/(n)))>(1)/(n)$，所以此级数发散],
      [以上说法均不对],
    ),
    answer: [D],
    solution: [
      由于 \
      $lim_(n arrow oo) ((1)/(n^(1+(1)/(n))))/((1)/(n)) = lim_(n arrow oo) 1/(n^((1)/(n))) = 1$， \
      由极限比较审敛法可知原级数与调和级数 $sum frac(1, n, style: "horizontal")$ 同敛散，故原级数发散。选项 A、B 是错误结论，C 不成立（实际上当 $n$ 较大时 $< frac(1, n, style: "horizontal")$），故选 D。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      级数 $(sum_(n=1)^oo sqrt(2n+1))/(n^alpha)$ 收敛的充要条件是 $alpha$ 满足条件
    ],
    answer: [$alpha >(3)/(2)$],
    solution: [
      有 \
          $(sqrt(2n+1))/(n^((1)/(2)) arrow sqrt(2))$（$n arrow oo$）， \
          故可与 $(1)/(n^(alpha-(1)/(2)))$ 作极限比较。 \
          与 $p$ 级数比较，收敛当且仅当 \
          $alpha - frac(1, 2, style: "horizontal") > 1$，即 \
          $alpha > frac(3, 2, style: "horizontal")$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      当 $p$ 满足条件 #blank() 时，级数 $(sum_(n=1)^oo 1)/(n^p)$ 收敛
    ],
    answer: [$p > 1$],
    solution: [
      $sum frac(1, n^p, style: "horizontal")$ 是标准 $p$ 级数。 \
          其审敛结论为： \
          当 $p>1$ 收敛，$p<=1$ 发散。 \
          故所求条件为 $p>1$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      若 $sum_(n=1)^oo u_n$ 为正项级数，且其部分和数列为 $(s_n)$，则级数 $sum_(n=1)^oo u_n$ 收敛的充要条件是
    ],
    answer: [部分和数列有界],
    solution: [
      正项级数满足 $u_n>=0$，故部分和数列 $(s_n)$ 单调不减。 \
          单调数列收敛当且仅当有界， \
          因而 \
          $sum u_n$ 收敛当且仅当 $(s_n)$ 有界。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      用比较审敛法或极限形式的比较审敛法判定下列级数的敛散性： \
          (1) $1 +(1)/(3)+(1)/(5)+ dots +(1)/(2n-1)+ dots$； \
          (2) $(1)/(2 dot 5)+(1)/(3 dot 6)+ dots +(1)/((n+1)(n+4))+ dots$； \
          (3) $sin pi / 2 + sin(pi/2^2) + dots + sin(pi/2^n) + dots$； \
          (4) $(sum_(n=1)^oo 1)/(1 + a^n)$ ($a > 0$)。
    ],
    solution: [
      (1) $u_n=(1)/(2n-1)$。 \
          对 $n>=1$ 有 \
          $u_n > frac(1, 2n, style: "horizontal")$，而 $sum frac(1, 2n, style: "horizontal")$ 发散， \
          故原级数发散。 \
          (2) $u_n=(1)/((n+1)(n+4))$。 \
          对 $n>=1$， \
          $u_n <= (1)/((n+1)^2)$，而 $sum frac(1, (n+1)^2, style: "horizontal")$ 收敛， \
          故原级数收敛。 \
          (3) $u_n=sin(pi/2^n)$。 \
          由 $0<sin x<x$（$x>0$）得 \
          $0<u_n<(pi)/(2^n)$。 \
          而 $sum frac(pi, 2^n, style: "horizontal")$ 收敛，故原级数收敛。 \
          (4) $u_n=(1)/(1+a^n)$。 \
          若 $0 < a <= 1$，则 $a^n <= 1$，故 $u_n >= frac(1, 2, style: "horizontal")$，通项不趋于 0，发散； \
          若 $a > 1$，则 $u_n <= frac(1, a^n, style: "horizontal")$，与收敛等比级数比较，故收敛。
    ],
  ),
  (
    kind: "compute",
    stem: [
      用比值审敛法判定下列级数的敛散性： \
          (1) $(sum_(n=1)^oo (2^n dot n!))/(n^n)$； \
          (2) $sum_(n=1)^oo n tan(pi/2^(n+1))$。
    ],
    solution: [
      (1) 设 $u_n=(2^n n!)/(n^n)$， \
          $(u_(n+1))/(u_n) = (2 ((n)/(n+1))^n arrow 2)/(ee) < 1$， \
          由比值审敛法，级数收敛。 \
          (2) 设 $v_n=n tan(pi/2^(n+1))$。 \
          且 \
          $lim_(x arrow 0) (tan x)/(x)= 1$，故 \
          $lim_(n arrow oo) (n tan(pi/2^(n+1)))/((n pi)/(2^(n+1))) = 1$。 \
          再看 $w_n = frac(n, 2^n, style: "horizontal")$，有 \
          $(w_(n+1))/(w_n) = (n+1)/((2n) arrow frac(1, 2, style: "horizontal")) < 1$，故 $sum w_n$ 收敛. \
          由极限比较，$sum v_n$ 亦收敛。
    ],
  ),
  (
    kind: "compute",
    stem: [
      用根值审敛法判定下列级数的敛散性： \
          (1) $sum_(n=1)^oo ((n)/(2n+1))^n$； \
          (2) $sum_(n=1)^oo ((b)/(a_n))^n$，其中 $lim_(n arrow oo) a_n = a$，$a_n, b, a$ 均为正数。
    ],
    solution: [
      (1) 设 $u_n=((n)/(2n+1))^n$， \
          则 \
          $root(n, u_n) = (n)/((2n+1) arrow frac(1, 2, style: "horizontal")) < 1$。 \
          由根值审敛法，级数收敛。 \
          (2) 设 $u_n=((b)/(a_n))^n$，则 \
          $root(n, u_n) = (b)/(a_n arrow b)/(a)$。 \
          因此： \
          若 $(b)/(a) < 1$（即 $b < a$）则收敛； \
          若 $(b)/(a) > 1$（即 $b > a$）则发散； \
          若 $(b)/(a) = 1$（即 $b = a$）根值法不能判定。
    ],
  ),
)

#book-section(section-title, problems)
