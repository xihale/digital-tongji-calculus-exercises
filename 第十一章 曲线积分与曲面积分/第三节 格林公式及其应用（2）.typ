// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第三节 格林公式及其应用（2）]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      设函数 $f(x)$ 连续可微且 $f(0) = -2$， $int_L (y sin 2x - y f(x) tan x) dif x + f(x) dif y$ 与路径无关，则 $f(x) =$。
    ],
    options: (
      [$-2/(3 cos^2 x)-4/(3 cos x)$],
      [$-2 cos^2 x$],
      [$-2 cos x$],
      [$-2/(3 cos x)-4/(3 cos x)$],
    ),
    answer: [B],
    solution: [
      $ f' + f tan x = sin 2x $。积分因子 $sec x$。
          $ (f sec x)' = 2 sin x => f sec x = -2 cos x + C $
          $ f(0)=-2 => C=0 $。$ f(x) = -2 cos^2 x $
    ],
  ),
  (
    kind: "choice",
    stem: [
      $(int_L (2x(x^2 + y^2)^alpha))/(y dif x)-(x^2(x^2 + y^2)^alpha)/(y^2 dif y)$ 在不与 $x$ 轴相交的区域上与路径无关，则 $alpha =$。
    ],
    options: (
      [$1/2$],
      [$-1/2$],
      [任意值],
      [0],
    ),
    answer: [D],
    solution: [
      $P_y = Q_x => alpha = 0$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      若 $int_L (x^2 - 3y) dif x + (a x - sin^2 y) dif y$ 与路径无关，则 $a =$。
    ],
    options: (
      [$-1/3$],
      [$-3$],
      [$1/3$],
      [3],
    ),
    answer: [B],
    solution: [
      $P_y = -3, Q_x = a => a = -3$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      下列式子中不是某一函数 $u(x,y)$ 的全微分的是
    ],
    options: (
      [$(x + 2 y) dif x + (2 x + y) dif y$],
      [$2 x y dif x + x^2 dif y$],
      [$ee^(y) dif x + (x ee^(y) - 2 y) dif y$],
      [$(x^2 + y^2) dif x + x y dif y$],
    ),
    answer: [D],
    solution: [
      对 D: $P_y = 2y, Q_x = y \neq P_y$，不满足全微分条件。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设有函数 $u(x, y)$，已知 $u(0, 0) = 1$，且全微分 $dif u = (2x cos y - y^lambda sin x) dif x + (2y cos x - x^lambda sin y) dif y$，则 $lambda =$ ，$u(x, y) =$ 。
    ],
    answers: (
      [$2$],
      [$x^2 cos y + y^2 cos x + 1$],
    ),
    solution: [
      $ M_y = N_x => lambda = 2 $
          $ u = x^2 cos y + y^2 cos x + C $, $ u(0,0)=1 => C=1 $
    ],
  ),
  (
    kind: "blank",
    stem: [
      为使得 $int_(A B) f(x, y)(y dif x + x dif y)$ 与路径无关，则可微函数 $f(x, y)$ 应满足 。
    ],
    answer: [$x pd f / pd x = y pd f / pd y$],
    solution: [
      $M = f y, N = f x$。$M_y = N_x => f + y f_y = f + x f_x => x f_x = y f_y$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      证明：曲线积分 $int_((1, 2))^((3, 4)) (6x y^2 - y^3) dif x + (6x^2 y - 3x y^2) dif y$ 在整个 $x O y$ 面内与路径无关，并计算积分值。
    ],
    solution: [
      $ P_y = Q_x = 12 x y - 3 y^2 =>$ 路径无关。
          $ U = 3 x^2 y^2 - x y^3 $。$ I = U(3,4) - U(1,2) = 236 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      验证：$(3x^2 y + 8x y^2) dif x + (x^3 + 8x^2 y + 12y ee^y) dif y$ 在整个 $x O y$ 面内是某一函数 $u(x, y)$ 的全微分，并求出这样的一个 $u(x, y)$。
    ],
    solution: [
      $ P_y = Q_x = 3 x^2 + 16 x y =>$ 全微分。
          $ u = x^3y + 4x^2y^2 + 12(y-1)ee^y + C $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $int_L ee^x cos y dif y + ee^x sin y dif x$，其中 $L$ 为点 $O(0, 0)$ 沿摆线 $x = a(t - sin t), y = a(1 - cos t)$ 到点 $A(a((pi)/(2)- 1), a)$ ($a > 0$) 的一段弧。
    ],
    solution: [
      $ M_y = N_x = ee^x cos y =>$ 路径无关。
          $ U = ee^x sin y $。$ I = U(A) - U(O) = ee^(a(pi/2-1)) sin a $
    ],
  ),
  (
    kind: "compute",
    stem: [
      （附加题）设 $Q(x, y)$ 在 $x O y$ 面上有一阶连续偏导数，$int_L 2x y dif x + Q(x, y) dif y$ 与路径无关，并且对于任意的 $t$，有 $int_((0, 0))^((t, 1)) 2x y dif x + Q(x, y) dif y = int_((0, 0))^((1, t)) 2x y dif x + Q(x, y) dif y$，求 $Q(x, y)$。
    ],
    solution: [
      $ N_x = 2x => Q = x^2 + g(y), U = x^2y + h(y) $
          $ t^2 + h(1) = t + h(t) => h(t) = t^2 - t + C $
          $ g(t) = h'(t) = 2t - 1 => Q = x^2 + 2y - 1 $
    ],
  ),
)

#book-section(section-title, problems)
