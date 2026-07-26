// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第七节 斯托克斯公式 环流量与旋度]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      设有曲线 $Gamma : cases(x^2 + y^2 + z^2 = a^2, x + y + z = 0)$ 从 $z$ 轴正向看去为逆时针方向，则 $oint_Gamma y dif x + z dif y + x dif z =$。
    ],
    options: (
      [$sqrt(2) pi a^2$],
      [$-sqrt(2) pi a^2$],
      [$-sqrt(3) pi a^2$],
      [$sqrt(3) pi a^2$],
    ),
    answer: [C],
    solution: [
      $ rot bold(F) = (-1, -1, -1) $。取 $ bold(n) = (1, 1, 1)/sqrt(3) $
          $ I = iint_S rot bold(F) dot bold(n) dif S = -sqrt(3) pi a^2 $。选 C。
    ],
  ),
  (
    kind: "choice",
    stem: [
      $oint_L (z - y) dif x + (x - z) dif y + (y - x) dif z =$，其中 $L$ 为以三点 $A(a, 0, 0), B(0, a, 0), C(0, 0, a)$ 为顶点的三角形边界，沿 $A B C A$ 的方向。
    ],
    options: (
      [$3 a^2$],
      [$-3 a^2$],
      [$sqrt(3) a^2$],
      [$-sqrt(3) a^2$],
    ),
    answer: [B],
    solution: [
      $ rot bold(F) = (2, 2, 2) $。取 $ bold(n) = -(1, 1, 1)/sqrt(3) $
          $ I = iint_S rot bold(F) dot bold(n) dif S = -(2sqrt(3) dot sqrt(3))/2 a^2 = -3a^2 $。选 B。
    ],
  ),
  (
    kind: "choice",
    stem: [
      若 $L$ 为平面 $x cos alpha + y cos beta + z cos gamma = rho$ 上的闭曲线，它所包围区域的面积为 $S$，则 $oint_L (cos alpha dif x + cos beta dif y + cos gamma dif z) =$。
    ],
    options: (
      [0],
      [S],
      [$2 S$],
      [$sqrt(2) S$],
    ),
    answer: [A],
    solution: [
      $ bold(F) = grad (x cos alpha + y cos beta + z cos gamma) => oint_L bold(F) dot dif bold(r) = 0 $。选 A。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      向量场 $bold(A) = (x + y + z, y x, z)$ 的旋度 $rot bold(A) =$ 。
    ],
    answer: [$(0, 1, y - 1)$],
    solution: [
      $ rot bold(A) = (R_y-Q_z, P_z-R_x, Q_x-P_y) = (0, 1, y-1) $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $f(x, y, z)$ 具有二阶连续偏导数，则 $rot(grad f) =$ 。
    ],
    answer: [$bold(0)$],
    solution: [
      $ rot(grad f) = bold(0) $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $u = ln sqrt(x^2 + y^2 + z^2)$，则 $rot(grad u) |_((1, 0, 1)) =$ 。
    ],
    answer: [$bold(0)$],
    solution: [
      $ rot(grad u) = bold(0) $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $L$ 为柱面 $x^2 + y^2 = 1$ 与平面 $y + z = 0$ 的交线，从 $z$ 轴正向看去为逆时针方向，则 $oint_L z dif x + y dif z =$ 。
    ],
    answer: [$pi$],
    solution: [
      在 $L$ 上 $ z = -y, dif z = -dif y => I = oint_L (-y dif x - y dif y) = -oint_L y dif x = pi $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $L$ 为柱面 $x^2 + y^2 = 1$ 与平面 $z = x + y$ 的交线，从 $z$ 轴正向看去为逆时针方向，则 $oint_L x z dif x + x dif y +(y^2)/(2 dif z)=$ 。
    ],
    answer: [$pi$],
    solution: [
      $ rot bold(F) = (y, -x, 1) $。取上侧 $ bold(n) dif S = (-1, -1, 1) dif sigma $
          $ I = iint_D (1+x-y) dif sigma = pi $
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      利用斯托克斯公式计算积分 $oint_Gamma y dif x + z dif y + x dif z$，其中 $Gamma$ 为圆 $x^2 + y^2 + z^2 = a^2, x + y + z = 0$，从 $x$ 轴正向看去为逆时针方向。
    ],
    solution: [
      $ rot bold(F) = (-1, -1, -1) $。取 $ bold(n) = (1, 1, 1)/sqrt(3) $
          $ I = iint_S rot bold(F) dot bold(n) dif S = -sqrt(3) pi a^2 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      求向量场 $bold(A) = (2z - 3y) bold(i) + (3x - z) bold(j) + (y - 2x) bold(k)$ 的旋度。
    ],
    solution: [
      $ rot bold(A) = (R_y-Q_z, P_z-R_x, Q_x-P_y) = (2, 4, 6) $。
    ],
  ),
)

#book-section(section-title, problems)
