// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第十节 闭区间上连续函数的性质]

#let problems = (
  // ===== 一、证明题 =====
  (
    kind: "proof",
    stem: [证明：方程 $x^5 - 3x = 1$ 至少有一个根介于 $1$ 和 $2$ 之间],
    solution: [
      令 $f(x) = x^5 - 3x - 1$，在 $[1, 2]$ 上连续。
      $f(1) = -3 < 0$，$f(2) = 25 > 0$，
      由零点存在定理，存在 $c in (1, 2)$ 使 $f(c) = 0$。
    ],
  ),
  (
    kind: "proof",
    stem: [
      证明：方程 $x = a sin x + b$（$a > 0$，$b > 0$）至少有一个正根，
      并且它不超过 $a + b$
    ],
    solution: [
      令 $f(x) = x - a sin x - b$，在 $[0, a + b]$ 上连续。
      $f(0) = -b < 0$，
      $f(a + b) = a(1 - sin(a + b)) >= 0$。
      若 $f(a + b) = 0$ 则 $a + b$ 即为根；
      若 $f(a + b) > 0$，由零点存在定理存在 $c in (0, a + b)$ 使 $f(c) = 0$。
    ],
  ),
  (
    kind: "proof",
    stem: [
      设 $f(x)$ 在 $[0, 1]$ 上连续，且对任意 $x in [0, 1]$ 有 $0 <= f(x) <= 1$。
      试证：在 $[0, 1]$ 上必存在一点 $c$，使得 $f(c) = c$
    ],
    solution: [
      令 $g(x) = f(x) - x$，则 $g$ 在 $[0, 1]$ 上连续。
      $g(0) = f(0) >= 0$，$g(1) = f(1) - 1 <= 0$。
      若端点为 $0$ 则已得不动点；否则由零点存在定理得 $c in (0, 1)$ 使 $g(c) = 0$。
    ],
  ),
  (
    kind: "proof",
    stem: [
      设 $f(x)$ 在 $[a, b]$ 上连续，
      $a < x_1 < x_2 < dots < x_n < b$（$n >= 3$），
      证明：在 $(x_1, x_n)$ 内至少存在一点 $xi$，使得
      $f(xi) = (f(x_1) + f(x_2) + dots + f(x_n))/n$
    ],
    solution: [
      设 $m = min{f(x_i)}$，$M = max{f(x_i)}$，
      则 $m <= overline(f) <= M$，其中 $overline(f)$ 为算术平均。
      $f$ 在 $[x_1, x_n]$ 上连续，由介值定理存在 $xi in [x_1, x_n]$ 使 $f(xi) = overline(f)$。
      若各 $f(x_i)$ 不全相等，则 $m < overline(f) < M$，故 $xi$ 可取在 $(x_1, x_n)$ 内；
      若全相等，则 $overline(f) = f(x_2)$，取 $xi = x_2 in (x_1, x_n)$ 即可。
    ],
  ),
)

#book-section(section-title, problems)
