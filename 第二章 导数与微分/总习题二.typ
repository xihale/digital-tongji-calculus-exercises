// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [总习题二]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [
      设函数 $f(x) = (x - a) phi(x)$，其中函数 $phi(x)$ 在点 $x = a$ 处连续，则必有
    ],
    options: (
      [$f'(x) = phi(x)$],
      [$f'(x) = phi(x) + (x - a) phi'(x)$],
      [$f'(a) = phi(a)$],
      [$f'(a) = phi'(a)$],
    ),
    answer: [C],
    solution: [
      由定义
      $f'(a) = lim_(x -> a) (f(x) - f(a))/(x - a)
      = lim_(x -> a) phi(x) = phi(a)$（$phi$ 在 $a$ 连续）。
      注意 $phi$ 未必可导，故 A、B、D 均不保证成立。
    ],
  ),
  (
    kind: "choice",
    stem: [
      若函数 $y = f(x)$ 有 $f'(x_0) = 1/2$，则当 $Delta x -> 0$ 时该函数在点 $x = x_0$ 处的微分
      $dif y$ 是 $Delta x$ 的
    ],
    options: (
      [同阶无穷小，但不是等价无穷小],
      [等价无穷小],
      [低阶无穷小],
      [高阶无穷小],
    ),
    answer: [A],
    solution: [
      $dif y = f'(x_0) Delta x = (1/2) Delta x$，
      故 $lim_(Delta x -> 0) (dif y)/(Delta x) = 1/2 != 0,\, oo$，为同阶；
      又极限不为 $1$，故非等价无穷小。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [设函数 $s = e^(-t) cos 3 t + sin 1$，则 $(dif s)/(dif t) =$],
    answer: [$-e^(-t)(cos 3 t + 3 sin 3 t)$],
    solution: [
      $(dif s)/(dif t) = -e^(-t) cos 3 t - 3 e^(-t) sin 3 t
      = -e^(-t)(cos 3 t + 3 sin 3 t)$。
    ],
  ),
  (
    kind: "blank",
    stem: [设函数 $y = 2^(ln tan x)$，则 $dif y =$],
    answer: [$2^(ln tan x) ln 2 · (sec^2 x)/(tan x) dif x$],
    solution: [
      $y' = 2^(ln tan x) ln 2 · (sec^2 x)/(tan x)$，
      故 $dif y = 2^(ln tan x) ln 2 · (sec^2 x)/(tan x) dif x$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $y = x/(1 - 2 sin x) - ln(4 - x)$，则 $y'|_(x = pi) =$
    ],
    answer: [$1 + 1/(4 - pi)$],
    solution: [
      $y' = (1 - 2 sin x + 2 x cos x)/(1 - 2 sin x)^2 + 1/(4 - x)$。
      在 $x = pi$ 处得 $y'(pi) = 1 + 1/(4 - pi)$。
    ],
  ),
  (
    kind: "blank",
    stem: [曲线 $y = 2 x^3 - 5 x^2 + 4 x - 5$ 上点 $(2, -1)$ 处的法线方程是],
    answer: [$x + 8 y + 6 = 0$],
    solution: [
      $y' = 6 x^2 - 10 x + 4$，$y'(2) = 8$，法线斜率 $-1/8$。
      法线 $y + 1 = -1/8 (x - 2)$，即 $x + 8 y + 6 = 0$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $f(x)$ 是可导函数，$Delta x$ 是自变量在点 $x$ 处的增量，则有
      $lim_(Delta x -> 0) (f^2(x + Delta x) - f^2(x))/(Delta x) =$
    ],
    answer: [$2 f(x) f'(x)$],
    solution: [
      该极限即 $(f^2)'(x) = 2 f(x) f'(x)$。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [
      讨论函数
      $f(x) = cases(
        x sin 1/x & x != 0,
        0 & x = 0,
      )$
      在点 $x = 0$ 处的连续性与可导性。
    ],
    solution: [
      连续性：$lim_(x -> 0) x sin 1/x = 0 = f(0)$，故连续。
      可导性：$f'(0) = lim_(h -> 0) sin 1/h$ 不存在，故不可导。
    ],
  ),
  (
    kind: "compute",
    stem: [求函数 $y = arctan((1 + x)/(1 - x))$ 的导数。],
    solution: [
      $y' = 1/(1 + ((1+x)/(1-x))^2) · 2/(1-x)^2
      = 2/((1-x)^2 + (1+x)^2) = 2/(2 + 2 x^2) = 1/(1 + x^2)$。
    ],
  ),
  (
    kind: "compute",
    stem: [求函数 $y = cos^2 x ln x$ 的二阶导数。],
    solution: [
      $y' = -sin 2 x ln x + cos^2 x / x$，
      $y'' = -2 cos 2 x ln x - (sin 2 x)/x
      - (sin 2 x)/x - cos^2 x / x^2$
      $= -2 cos 2 x ln x - (2 sin 2 x)/x - cos^2 x / x^2$。
    ],
  ),
  (
    kind: "compute",
    stem: [设函数 $y = y(x)$ 由方程 $e^y + x y = e$ 所确定，求 $y''(0)$。],
    solution: [
      当 $x = 0$ 时 $e^y = e$，得 $y(0) = 1$。
      求导得 $y' = -y/(e^y + x)$，故 $y'(0) = -1/e$。
      再导并代入 $x = 0,\, y = 1,\, y' = -1/e$，得 $y''(0) = -1/e^2$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求由参数方程 $x = ln sqrt(1 + t^2)$，$y = arctan t$ 所确定的函数的一阶导数
      $(dif y)/(dif x)$ 及二阶导数 $(dif^2 y)/(dif x^2)$。
    ],
    solution: [
      $(dif x)/(dif t) = t/(1 + t^2)$，$(dif y)/(dif t) = 1/(1 + t^2)$，
      故 $(dif y)/(dif x) = 1/t$，
      $(dif^2 y)/(dif x^2) = -1/t^2 · (1 + t^2)/t = -(1 + t^2)/t^3$。
    ],
  ),
)

#book-section(section-title, problems)
