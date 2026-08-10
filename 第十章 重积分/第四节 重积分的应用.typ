// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section, blank

#let section-title = [第四节 重积分的应用]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      球面 $x^2 + y^2 + z^2 = a^2$ 含在 $x^2 + y^2 = a x$ ($a > 0$) 内部的面积为
    ],
    options: (
      [$4 int_0^(pi/2) dif theta int_0^(a cos theta) a/(sqrt(a^2 - r^2)) r dif r$],
      [$8 int_0^(pi/2) dif theta int_0^(a cos theta) a/(sqrt(a^2 - r^2)) r dif r$],
      [$16 int_0^(pi/2) dif theta int_0^(a cos theta) a/(sqrt(a^2 - r^2)) r dif r$],
      [$4 int_(-pi/2)^(pi/2) dif theta int_0^(a cos theta) a/(sqrt(a^2 - r^2)) r dif r$],
    ),
    answer: [B],
    solution: [
      利用对称性，球面在圆柱面内的部分在 $z > 0$ 和 $z < 0$ 两侧对称，且积分区域 $D$ 关于极轴对称。故总面积为第一卦限部分面积的 8 倍。在第一卦限，$theta$ 从 0 到 $pi/2$，$r$ 从 0 到 $a cos theta$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      半径分别为 $R$ 和 $r$ ($0 < r < R$) 的两个圆所围成的均匀圆环状薄片（设面密度为 $rho$）关于其中心的转动惯量 $I_O =$
    ],
    options: (
      [$pi rho (R^4 - r^4)$],
      [$1/2 pi rho (R^4 - r^4)$],
      [$1/4 pi rho (R^4 - r^4)$],
      [$1/8 pi rho (R^4 - r^4)$],
    ),
    answer: [B],
    solution: [
      $I_O = iint_D rho (x^2 + y^2) dif sigma = int_0^(2 pi) dif theta int_r^R rho dot rho^2 dot rho dif rho = 2 pi rho [ 1/4 rho^4 ]_r^R = 1/2 pi rho (R^4 - r^4)$。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设均匀平面薄片所占闭区域为 $D = {(x, y) | x^2/a^2 + y^2/b^2 <= 1, y >= 0}$，则其面积为 #blank()，其质心坐标为 #blank()
    ],
    answers: (
      [$pi a b / 2$],
      [$(0, (4 b) / (3 pi))$],
    ),
    solution: [
      $pi a b / 2, (0, (4 b) / (3 pi))$
    ],
  ),
  (
    kind: "blank",
    stem: [
      设平面闭区域 $D$ 的形心坐标为 $(2, 3)$，其面积为 2，则 $iint_D x dif sigma =$ #blank()， $iint_D y dif sigma =$ #blank()
    ],
    answers: (
      [$4$],
      [$6$],
    ),
  ),
  (
    kind: "blank",
    stem: [
      半圆形薄片 $x^2 + y^2 <= R^2$ ($y >= 0$) 的面密度 $rho = 1$，则其关于 $y$ 轴的转动惯量 $I_y =$
    ],
    answer: [$pi R^4 / 8$],
    solution: [
      $I_y = iint_D x^2 dif sigma = int_0^pi cos^2 theta dif theta int_0^R r^3 dif r = pi/2 dot R^4/4 = pi R^4 / 8$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      求两个正交圆柱面 $x^2 + y^2 = R^2$ 及 $x^2 + z^2 = R^2$ 所围立体的体积与表面积
    ],
    solution: [
      $V = (16 R^3)/3, S = 16 R^2$

      $ V = 8 int_0^R (R^2 - x^2) dif x = (16 R^3)/3 $
          $ S = 16 R int_0^R (R^2 - x^2)^(-1/2) sqrt(R^2 - x^2) dif x = 16 R^2 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      在均匀半圆形薄片的直径上，要接上一个一边与直径等长的矩形薄片，为了使整个均匀薄片的质心恰好在圆心上，问：接上去的均匀矩形薄片另外一边的长度应为多少？
    ],
    solution: [
      $sqrt(2/3) R$ ( $R$ 为半圆半径).

      设半圆 $D_1: x^2 + y^2 <= R^2, y >= 0$，面密度 $rho$。
          其质心坐标 $bar(y)_1 = (4 R) / (3 pi)$，质量 $M_1 = 1/2 pi R^2 rho$。
          矩形 $D_2: -R <= x <= R, -l <= y <= 0$，质量 $M_2 = 2 R l rho$。
          其质心坐标 $bar(y)_2 = -l/2$。
          整个薄片的质心在圆心：$M_1 bar(y)_1 + M_2 bar(y)_2 = 0$。
          $(1/2 pi R^2 rho) dot ((4 R) / (3 pi)) + (2 R l rho) dot (-l/2) = 0$
          $2/3 R^3 - R l^2 = 0 => l^2 = 2/3 R^2 => l = sqrt(2/3) R$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求由曲面 $z^2 = x^2 + y^2$ 与平面 $z = 1$ 所围成的立体的质心，设其密度为 $rho = 1$ .
    ],
    solution: [
      $(0, 0, 3/4)$

      $ bar(x) = 0, bar(y) = 0 $
          $ V = pi/3 $
          $ M_(x y) = int_0^1 z dot pi z^2 dif z = pi/4 => bar(z) = (pi/4)/(pi/3) = 3/4 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      设均匀薄片（密度 $rho = 1$）所占的闭区域 $D$ 是 $x O y$ 面内由抛物线 $y^2 = 9/2 x$ 与直线 $x = 2$ 所围成的，求此均匀薄片关于 $x$ 轴和 $y$ 轴的转动惯量 $I_x, I_y$
    ],
    solution: [
      $I_x = 72/5, I_y = 96/7$

      区域 $D: 0 <= x <= 2, -sqrt(9/2 x) <= y <= sqrt(9/2 x)$。
          $I_x = iint_D y^2 dif sigma = int_0^2 dif x int_(-sqrt(9/2 x))^(sqrt(9/2 x)) y^2 dif y$
          $= int_0^2 2/3 (9/2 x)^(3/2) dif x = 2/3 (9/2)^(3/2) int_0^2 x^(3/2) dif x$
          $= 2/3 dot (27 sqrt(2) / 4) dot [ 2/5 x^(5/2) ]_0^2 = 9/2 sqrt(2) dot 2/5 dot 4 sqrt(2) = 72/5$。
          $I_y = iint_D x^2 dif sigma = int_0^2 x^2 dot 2sqrt(9/2 x) dif x$
          $= 2 dot (3/sqrt(2)) int_0^2 x^(5/2) dif x = 3 sqrt(2) [ 2/7 x^(7/2) ]_0^2$
          $= 3 sqrt(2) dot 2/7 dot 8 sqrt(2) = 96/7$。
    ],
  ),
)

#book-section(section-title, problems)
