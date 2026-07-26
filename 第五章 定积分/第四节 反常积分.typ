// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第四节 反常积分]

#let problems = (
  // ===== 一、判断题 =====
  (
    kind: "judge",
    stem: [已知 $sin x$ 是奇函数，则 $integral_(-oo)^(+oo) sin x dif x = 0$],
    answer: [×],
    solution: [
      反常积分 $integral_(-oo)^(+oo) sin x dif x$ 按定义要求上下限独立趋于无穷，
      该积分发散，不能断言等于 $0$。
      （对称极限给出的是主值积分，与反常积分收敛是不同概念。）
    ],
  ),
  (
    kind: "judge",
    stem: [
      $integral_(-oo)^(+oo) sin x dif x
      = lim_(b -> +oo) integral_(-b)^b sin x dif x
      = lim_(b -> +oo)(-cos b + cos b) = 0$
    ],
    answer: [√],
    solution: [
      这是 Cauchy 主值。对称取极限时
      $integral_(-b)^b sin x dif x = 0$，故主值存在且为 $0$。
      （注意：主值存在并不蕴含反常积分收敛。）
    ],
  ),
  (
    kind: "judge",
    stem: [
      $integral_(-2)^3 (dif x)/x = ln|x| |_(-2)^3 = ln 3 - ln 2$
    ],
    answer: [×],
    solution: [
      $x = 0$ 是积分区间内的奇点，属于反常积分，不能直接用牛顿–莱布尼茨公式。
      应分两端极限：$lim_(epsilon -> 0^-) integral_(-2)^epsilon + lim_(delta -> 0^+) integral_delta^3$，
      两项均发散，故积分发散。
    ],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [判定下列反常积分的敛散性；若收敛，求其值：],
    parts: (
      [$integral_1^(+oo) (dif x)/(x^4)$；],
      [$integral_(-oo)^(+oo) (dif x)/(x^2 + 2x + 2)$；],
      [$integral_(2/pi)^(+oo) (1)/(x^2) sin(1/x) dif x$；],
      [$integral_0^1 x/(sqrt(1 - x^2)) dif x$；],
      [$integral_1^e (dif x)/(x sqrt(1 - ln^2 x))$。],
    ),
    solution-parts: (
      [
        $lim_(b -> +oo) [-1/(3 x^3)]_1^b = 1/3$，收敛，值为 $1/3$。
      ],
      [
        $x^2 + 2x + 2 = (x + 1)^2 + 1$，令 $u = x + 1$，
        得 $[arctan u]_(-oo)^(+oo) = pi$，收敛，值为 $pi$。
      ],
      [
        令 $u = 1/x$，$x: 2/pi -> +oo$ 对应 $u: pi/2 -> 0^+$，
        原式 $= integral_0^(pi/2) sin u dif u = 1$，收敛。
      ],
      [
        $x = 1$ 为奇点。令 $u = 1 - x^2$，
        $lim_(b -> 1^-) [-sqrt(1 - x^2)]_0^b = 1$，收敛，值为 $1$。
      ],
      [
        令 $u = ln x$，$x: 1 -> e$ 对应 $u: 0 -> 1$，
        原式 $= integral_0^1 (dif u)/sqrt(1 - u^2) = arcsin 1 = pi/2$，收敛。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [
      当 $k$ 为何值时，反常积分 $integral_2^(+oo) (dif x)/(x ln^k x)$ 收敛？
      当 $k$ 为何值时发散？又当 $k$ 为何值时该反常积分取得最小值？
    ],
    solution: [
      令 $u = ln x$，$x: 2 -> +oo$ 对应 $u: ln 2 -> +oo$，
      原式 $= integral_(ln 2)^(+oo) u^(-k) dif u$。
      故：$k > 1$ 时收敛；$k <= 1$ 时发散。
      收敛时值为 $(ln 2)^(1 - k)/(k - 1)$。
      令 $f(k) = (ln 2)^(1 - k)/(k - 1)$（$k > 1$），
      由 $f'(k) = 0$ 得 $k - 1 = -1/(ln(ln 2)) = 1/(ln(1/(ln 2)))$，
      即 $k = 1 + 1/(ln(1/(ln 2)))$ 时 $f$ 取最小值。
    ],
  ),

  // ===== 三、证明题 =====
  (
    kind: "proof",
    stem: [
      （附加题）证明：若 $f$ 在 $(-oo, +oo)$ 上连续，且
      $integral_(-oo)^(+oo) f(x) dif x$ 收敛，则对任意 $x in RR$，
      $(dif)/(dif x) integral_(-oo)^x f(t) dif t = f(x)$，
      $(dif)/(dif x) integral_x^(+oo) f(t) dif t = -f(x)$。
    ],
    solution: [
      因积分收敛，可写 $F(x) = integral_(-oo)^x f(t) dif t
      = integral_(-oo)^0 f + integral_0^x f$。
      前一项为常数，后一项由微积分基本定理得 $F'(x) = f(x)$。
      又 $integral_x^(+oo) f = integral_(-oo)^(+oo) f - integral_(-oo)^x f$，
      求导即得 $-f(x)$。
    ],
  ),
)

#book-section(section-title, problems)
