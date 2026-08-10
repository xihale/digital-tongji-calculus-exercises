// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第一节 导数的概念]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [
      设函数 $f(x) = x(x - 1)(x + 2)(x - 3) dots (x + 100)$，则 $f'(1) =$
    ],
    options: ([$101!$], [$-101!/100$], [$-100!$], [$100!/99$]),
    answer: [B],
    solution: [
      因 $f(1) = 0$，可写 $f(x) = (x - 1) g(x)$，其中
      $g(x) = x(x + 2)(x - 3) dots (x + 100)$，且 $g(1) != 0$。
      故 $f'(1) = g(1)$。计算得 $g(1) = -101!/100$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数
      $f(x) = cases(
        (1 - e^(-x^2))/x & x != 0,
        0 & x = 0,
      )$，
      则 $f'(0) =$
    ],
    options: ([$0$], [$1/2$], [$1$], [$-1$]),
    answer: [C],
    solution: [
      由定义
      $f'(0) = lim_(h -> 0) (f(h) - f(0))/h = lim_(h -> 0) (1 - e^(-h^2))/h^2$。
      由 $e^(-h^2) = 1 - h^2 + o(h^2)$，得 $1 - e^(-h^2) = h^2 + o(h^2)$，
      故 $f'(0) = 1$。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [
      设 $f'(x_0)$ 存在，则
      $lim_(Delta x -> 0) (f(x_0 - Delta x) - f(x_0))/(Delta x)$ 与
      $lim_(h -> 0) (f(x_0 + h) - f(x_0 - h))/h$ 分别为
    ],
    answers: (
      [$-f'(x_0)$],
      [$2 f'(x_0)$],
    ),
    solution: [
      前者
      $= lim_(Delta x -> 0) -(f(x_0 - Delta x) - f(x_0))/(-Delta x) = -f'(x_0)$；
      后者
      $= lim_(h -> 0) [(f(x_0 + h) - f(x_0))/h + (f(x_0 - h) - f(x_0))/(-h)]
      = 2 f'(x_0)$。
    ],
  ),
  (
    kind: "blank",
    stem: [函数 $y = x^2 root(3, x^2)/sqrt(x^5)$ 的导数等于],
    answer: [$1/6 x^(-5/6)$],
    solution: [
      化简 $y = x^2 · x^(2/3) · x^(-5/2) = x^(1/6)$，故 $y' = (1/6) x^(-5/6)$。
    ],
  ),
  (
    kind: "blank",
    stem: [曲线 $y = e^x$ 上点 $(0, 1)$ 处的切线方程为],
    answer: [$y = x + 1$],
    solution: [
      $y' = e^x$，在 $x = 0$ 处 $y' = 1$，切线 $y - 1 = x$，即 $y = x + 1$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      已知某物体的运动规律为 $s = t^3$（单位：m），则该物体在 $t = 2$（单位：s）时的速度为
    ],
    answer: [$12$ m/s],
    solution: [
      $v = s' = 3 t^2$，当 $t = 2$ 时 $v = 12$ m/s。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [设函数 $f(x) = 10 x^2$，试按导数的定义求 $f'(-1)$],
    solution: [
      $f'(-1) = lim_(h -> 0) (f(-1 + h) - f(-1))/h
      = lim_(h -> 0) (10(-1 + h)^2 - 10)/h
      = lim_(h -> 0) (-20 + 10 h) = -20$。
    ],
  ),
  (
    kind: "compute",
    stem: [求曲线 $y = cos x$ 上点 $(pi/3, 1/2)$ 处的切线方程和法线方程],
    solution: [
      $y' = -sin x$，在 $x = pi/3$ 处 $y' = -sqrt(3)/2$。
      切线：$y - 1/2 = -sqrt(3)/2 (x - pi/3)$，
      即 $y = -sqrt(3)/2 x + pi sqrt(3)/6 + 1/2$。
      法线斜率 $2/sqrt(3) = 2 sqrt(3)/3$，
      法线：$y - 1/2 = (2 sqrt(3)/3)(x - pi/3)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      在抛物线 $y = x^2$ 上取横坐标分别为 $x_1 = 1$ 及 $x_2 = 3$ 的两点，过这两点作此抛物线的割线。
      问：该抛物线上哪一点处的切线平行于这条割线？
    ],
    solution: [
      两点为 $(1, 1)$、$(3, 9)$，割线斜率 $k = 4$。
      由 $y' = 2 x = 4$ 得 $x = 2$，故在点 $(2, 4)$ 处切线平行于该割线。
    ],
  ),
  (
    kind: "compute",
    stem: [
      已知函数
      $f(x) = cases(
        sin x & x < 0,
        x & x >= 0,
      )$，
      求 $f'(x)$
    ],
    solution: [
      当 $x < 0$ 时 $f'(x) = cos x$；当 $x > 0$ 时 $f'(x) = 1$。
      在 $x = 0$ 处：$f'_-(0) = lim_(x -> 0^-) cos x = 1$，$f'_+(0) = 1$，故 $f'(0) = 1$。
      综上 $f'(x) = cases(cos x & x < 0, 1 & x >= 0)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      讨论函数
      $y = cases(
        x^2 sin 1/x & x != 0,
        0 & x = 0,
      )$
      在点 $x = 0$ 处的连续性与可导性
    ],
    solution: [
      连续性：因 $|sin 1/x| <= 1$，有 $lim_(x -> 0) x^2 sin 1/x = 0 = f(0)$，故连续。
      可导性：$f'(0) = lim_(h -> 0) h sin 1/h = 0$（夹逼），故可导且 $f'(0) = 0$。
    ],
  ),
)

#book-section(section-title, problems)
