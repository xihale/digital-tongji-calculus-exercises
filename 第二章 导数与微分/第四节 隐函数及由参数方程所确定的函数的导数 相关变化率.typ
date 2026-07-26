// 数据层：只放内容。公式一律行内。
// 参数方程写 x=…, y=…，不用 cases 独行。
#import "../lib/render.typ": book-section

#let section-title = [第四节 隐函数及由参数方程所确定的函数的导数 · 相关变化率]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [设函数 $y = (1 + x)^(1/x)$，则 $y'(1) =$],
    options: ([2], [8], [$1/2 - ln 2$], [$1 - ln 4$]),
    answer: [D],
    solution: [
      对 $y = (1 + x)^(1/x)$ 取对数得 $ln y = (1/x) ln(1 + x)$。两边对 $x$ 求导：
      $y'/y = -ln(1+x)/x^2 + 1/(x(1+x))$，故 $y' = y[-ln(1+x)/x^2 + 1/(x(1+x))]$。
      当 $x = 1$ 时 $y = 2$，得 $y'(1) = 2(-ln 2 + 1/2) = 1 - ln 4$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      已知曲线 $L$ 的参数方程为 $x = 2(t - sin t)$，$y = 2(1 - cos t)$，
      则 $L$ 上点 $t = pi/2$ 处的切线方程是
    ],
    options: (
      [$x + y = pi$],
      [$x - y = pi - 4$],
      [$x - y = pi$],
      [$x + y = pi - 4$],
    ),
    answer: [B],
    solution: [
      由 $(dif x)/(dif t) = 2(1 - cos t)$、$(dif y)/(dif t) = 2 sin t$，得
      $(dif y)/(dif x) = (sin t)/(1 - cos t)$。
      当 $t = pi/2$ 时：$x = pi - 2$，$y = 2$，斜率 $= 1$。
      切线 $y - 2 = x - (pi - 2)$，即 $x - y = pi - 4$。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [设函数 $y = y(x)$ 由方程 $x sin y + y e^x = 0$ 所确定，则 $y'(0) =$],
    answer: [$0$],
    solution: [
      对方程两边求 $x$ 的导：$sin y + x cos y · y' + y' e^x + y e^x = 0$。
      代入 $x = 0$，得 $y'(0) = 0$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $y = y(x)$ 由参数方程 $x = a cos^3 phi$，$y = a sin^3 phi$ 所确定，
      则 $(dif y)/(dif x) =$
    ],
    answer: [$-tan phi$],
    solution: [
      $(dif x)/(dif phi) = -3 a cos^2 phi sin phi$，
      $(dif y)/(dif phi) = 3 a sin^2 phi cos phi$，
      故 $(dif y)/(dif x) = -tan phi$。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [求由方程 $x y = e^(x + y)$ 所确定的隐函数的导数 $(dif y)/(dif x)$。],
    solution: [
      两边对 $x$ 求导：$y + x y' = e^(x+y)(1 + y')$，
      整理得 $(x - e^(x+y)) y' = e^(x+y) - y$，
      故 $y' = (e^(x+y) - y)/(x - e^(x+y))$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求曲线 $x^(2/3) + y^(2/3) = a^(2/3)$ 上点
      $(sqrt(2)/4 a,\, sqrt(2)/4 a)$ 处的切线方程和法线方程。
    ],
    solution: [
      两边对 $x$ 求导：$(2/3) x^(-1/3) + (2/3) y^(-1/3) y' = 0$，
      得 $y' = -(x/y)^(1/3)$。在给定点处 $y' = -1$。
      切线 $x + y = sqrt(2)/2 a$；法线 $y = x$。
    ],
  ),
  (
    kind: "compute",
    stem: [求由方程 $y = tan(x + y)$ 所确定的隐函数的二阶导数 $(dif^2 y)/(dif x^2)$。],
    solution: [
      对 $y = tan(x + y)$ 求导：$y' = sec^2(x+y)(1 + y')$，
      解得 $y' = - (sec^2(x+y))/(tan^2(x+y))$。
      再求导并代入 $y'$，化简得 $(dif^2 y)/(dif x^2) = (2 sec^6(x+y))/(tan^5(x+y))$。
    ],
  ),
  (
    kind: "compute",
    stem: [用对数求导法求函数 $y = (x/(1 + x))^x$ 的导数。],
    solution: [
      取对数：$ln y = x(ln x - ln(1+x))$。
      两边对 $x$ 求导：$y'/y = ln(x/(1+x)) + 1/(1+x)$，
      故 $y' = (x/(1+x))^x [ln(x/(1+x)) + 1/(1+x)]$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求由参数方程 $x = a t^2$，$y = b t^3$ 所确定的函数的导数 $(dif y)/(dif x)$。
    ],
    solution: [
      $(dif x)/(dif t) = 2 a t$，$(dif y)/(dif t) = 3 b t^2$，
      故 $(dif y)/(dif x) = (3 b t)/(2 a)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      已知一曲线的参数方程为 $x = sin t$，$y = cos 2t$，
      求该曲线在点 $t = pi/4$ 处的切线方程和法线方程。
    ],
    solution: [
      $(dif x)/(dif t) = cos t$，$(dif y)/(dif t) = -2 sin 2t$。
      当 $t = pi/4$ 时：$x = sqrt(2)/2$，$y = 0$，
      $lr((dif y)/(dif x) mid(|))_(t=pi/4) = -2 sqrt(2)$。
      切线 $y = -2 sqrt(2) x + 2$；法线 $y = (sqrt(2)/4) x - 1/4$。
    ],
  ),
  (
    kind: "compute",
    stem: [求由下列参数方程所确定的函数的二阶导数 $(dif^2 y)/(dif x^2)$：],
    parts: (
      [$x = 3 e^(-t)$，$y = 2 e^t$；],
      [$x = f'(t)$，$y = t f'(t) - f(t)$，设 $f''(t)$ 存在且不为零。],
    ),
    solution-parts: (
      [$(dif y)/(dif x) = -2/3 e^(2 t)$，$(dif^2 y)/(dif x^2) = 4/9 e^(3 t)$。],
      [$(dif y)/(dif x) = t$，$(dif^2 y)/(dif x^2) = 1/f''(t)$。],
    ),
  ),
  (
    kind: "compute",
    stem: [
      以 $4$ #h(0.15em) m³/min 的速率向深 $8$ m、上顶直径 $8$ m 的正圆锥形容器中注水，
      当水深为 $5$ m 时，水面上升的速率为多少？
    ],
    solution: [
      水深 $h$ 时水面半径 $r = h/2$，体积 $V = (pi h^3)/12$。
      由 $(dif V)/(dif t) = (pi h^2)/4 · (dif h)/(dif t)$，
      代入 $h = 5$、$(dif V)/(dif t) = 4$，得 $(dif h)/(dif t) = 16/(25 pi)$ #h(0.15em) m/min。
    ],
  ),
)

#book-section(section-title, problems)
