// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第三节 三重积分(1)]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      设空间闭区域 $Omega$ 由曲面 $z = x y$ 与平面 $y = x, x = 1$ 及 $z = 0$ 所围成，则 $iiint_Omega x y^2 z^3 dif v =$。
    ],
    options: (
      [$1/361$],
      [$1/362$],
      [$1/363$],
      [$1/364$],
    ),
    answer: [D],
  ),
  (
    kind: "choice",
    stem: [
      设空间闭区域 $Omega$ 由曲面 $z = x y$ 及平面 $x + y - 1 = 0, z = 0$ 所围成，将 $iiint_Omega f(x, y, z) dif v$ 化成三次积分为。
    ],
    options: (
      [$int_0^1 dif y int_0^y dif x int_0^(x y) f(x, y, z) dif z$],
      [$int_0^1 dif x int_0^1 dif y int_0^(x y) f(x, y, z) dif z$],
      [$int_0^1 dif y int_0^(1 - y) dif x int_0^(x y) f(x, y, z) dif z$],
      [$int_0^1 dif x int_0^x dif y int_0^(x y) f(x, y, z) dif z$],
    ),
    answer: [C],
  ),
  (
    kind: "choice",
    stem: [
      设空间闭区域 $Omega$ 由曲面 $y = sqrt(x)$ 及平面 $y = 0, z = 0, x + z = pi/2$ 所围成，下列将 $iiint_Omega f(x, y, z) dif v$ 化成三次积分中不正确的是。
    ],
    options: (
      [$int_0^(pi/2) dif x int_0^(sqrt(x)) dif y int_0^(pi/2 - x) f(x, y, z) dif z$],
      [$int_0^(pi/2) dif y int_0^(sqrt(y)) dif x int_0^(pi/2 - x) f(x, y, z) dif z$],
      [$int_0^(pi/2) dif x int_0^(pi/2 - x) dif z int_0^(sqrt(x)) f(x, y, z) dif y$],
      [$int_0^(pi/2) dif z int_0^(pi/2 - z) dif x int_0^(sqrt(x)) f(x, y, z) dif y$],
    ),
    answer: [B],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设有一物体占有区域 $Omega = {(x, y, z) | 1 <= x <= 2, 0 <= y <= 1, 0 <= z <= 1}$，其密度函数为 $rho = x + y + z$，则该物体的质量为
    ],
    answer: [$5/2$],
    solution: [
      $5/2$
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      计算 $iiint_Omega x z dif v$，其中空间闭区域 $Omega$ 由平面 $z = 0, z = y, y = 1$ 及曲面 $y = x^2$ 所围成。
    ],
    solution: [
      0

      区域 $Omega$ 关于 $x = 0$ 对称，被积函数 $x z$ 对 $x$ 是奇函数，故积分值为 0。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iiint_Omega z dif v$，其中空间闭区域 $Omega$ 由平面 $z = h$ 及曲面 $z = h/R sqrt(x^2 + y^2)$ ($R > 0, h > 0$) 所围成。
    ],
    solution: [
      $pi h^2 R^2 / 4$

      曲面 $z = h/R sqrt(x^2+y^2)$ 是圆锥面。
          利用柱面坐标：$x^2+y^2 = rho^2, dif v = rho dif rho dif theta dif z$。
          区域 $Omega$ 可投影到 $x O y$ 面得到圆域 $D: rho <= R$。对于 $D$ 内点， $h/R rho <= z <= h$。
          $I = int_0^(2pi) dif theta int_0^R rho dif rho int_(h/R rho)^h z dif z$
          $= 2pi int_0^R rho [ 1/2 z^2 ]_(h/R rho)^h dif rho$
          $= pi int_0^R rho (h^2 - h^2/R^2 rho^2) dif rho$
          $= pi h^2 [ 1/2 rho^2 - 1/4 rho^4/R^2 ]_0^R = pi h^2 (1/2 R^2 - 1/4 R^2) = pi h^2 R^2/4$。
    ],
  ),
)

#book-section(section-title, problems)
