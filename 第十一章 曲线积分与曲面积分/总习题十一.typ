// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [总习题十一]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      设 $L$ 为以三点 $O(0,0), A(1,0), B(0,1)$ 为顶点的三角形边界，则 $int_L (x + y) dif s =$
    ],
    options: (
      [$sqrt(2)$],
      [$2 + sqrt(2)$],
      [$1 + sqrt(2)$],
      [$1 + 2 sqrt(2)$],
    ),
    answer: [C],
    solution: [
      $ I_1 = 1/2, I_2 = 1/2, I_3 = sqrt(2) => I = 1 + sqrt(2) $。选 C。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $L$ 为抛物线 $y^2 = x$ 上从点 $A(1, -1)$ 到点 $B(1, 1)$ 的一段弧，$P(x, y)$ 是连续函数，则 $int_L P(x, y) dif x =$
    ],
    options: (
      [$2 int_0^1 P(x, sqrt(x)) dif x$],
      [$2 int_(-1)^0 P(x, -sqrt(x)) dif x$],
      [$int_0^1 P(x, -sqrt(x)) dif x + int_0^1 P(x, sqrt(x)) dif x$],
      [$int_1^0 P(x, -sqrt(x)) dif x + int_0^1 P(x, sqrt(x)) dif x$],
    ),
    answer: [D],
    solution: [
      下支 $ y = -sqrt(x), x: 1 -> 0 $；上支 $ y = sqrt(x), x: 0 -> 1 $。选 D。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $L$ 为圆 $x^2 + y^2 = -2x$ 的正向边界，则 $oint_L (x^3 - y) dif x + (x - y^3) dif y =$
    ],
    options: (
      [$-2 pi$],
      [0],
      [$(3)/(2 pi)$],
      [$2 pi$],
    ),
    answer: [D],
    solution: [
      $ I = iint_D (1 - (-1)) dif sigma = 2 pi $。选 D。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $Sigma$ 为平面 $2x + 2y + z - 2 = 0$ 被三个坐标面所截的在第一卦限的部分，则 $iint_Sigma (2x + 2y + z) dif S =$
    ],
    options: (
      [$(3)/(4)$],
      [$(3)/(2)$],
      [3],
      [6],
    ),
    answer: [C],
    solution: [
      $ I = 2 iint_Sigma dif S = 2 S_Sigma $。$ S_Sigma = (1/2)/(1/3) = 3/2 $。$ I = 3 $。选 C。
    ],
  ),
  (
    kind: "choice",
    stem: [
      已知 $( (x + a y) dif x + y dif y )/((x + y)^2)$ 为某个函数的全微分，则 $a =$
    ],
    options: (
      [-1],
      [0],
      [1],
      [2],
    ),
    answer: [D],
    solution: [
      $ P_y = Q_x => a = 2 $。选 D。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $int_L x y^2 dif x + psi(y) x dif y$ 与路径无关，其中 $psi(y)$ 具有连续导数，且 $psi(0) = 0$ ，则 $int_((0,0))^((1,1)) x y^2 dif x + psi(y) x dif y =$
    ],
    options: (
      [$(3)/(8)$],
      [$(1)/(2)$],
      [$(3)/(4)$],
      [1],
    ),
    answer: [B],
    solution: [
      $ P_y = Q_x => psi(y) = 2y $。$ I = [1/2 x^2 y^2]_((0,0))^((1,1)) = 1/2 $。选 B。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $S$ 是平面 $x + y + z = 4$ 被柱面 $x^2 + y^2 = 1$ 截出的有限部分，则 $iint_S y dif S =$
    ],
    options: (
      [0],
      [$(4)/(3 sqrt(3))$],
      [$4 sqrt(3)$],
      [$pi$],
    ),
    answer: [A],
    solution: [
      由对称性，$ I = 0 $。选 A。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设 $L$ 为圆 $x^2 + y^2 = a^2$ 在第一象限的部分，则 $int_L x y dif s =$
    ],
    answer: [$(1)/(2 a^3)$],
    solution: [
      $ I = int_0^pi/2 a^3 cos t sin t dif t = a^3/2 $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $L$ 为抛物线 $y = x^2$ 上从点 $O(0, 0)$ 到点 $A(1, 1)$ 的一段弧，则 $int_L x y dif x + (y - x) dif y =$
    ],
    answer: [$(1)/(12)$],
    solution: [
      $ I = int_0^1 [t^3 + (t^2-t)2t] dif t = 1/12 $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设有一质量分布均匀的曲面 $Sigma$，在点 $(x, y, z)$ 处的面密度为 $rho(x, y, z)$，则该曲面关于 $z$ 轴的转动惯量 $I_z =$
    ],
    answer: [$iint_Sigma (x^2 + y^2) rho dif S$],
    solution: [
      $ I_z = iint_Sigma (x^2 + y^2) rho dif S $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设光滑闭曲面 $Sigma$ 围成的空间区域为 $Omega$，则利用高斯公式化曲面积分为重积分时，有 $iint_Sigma x y dif x dif y + z x dif z dif x + y z dif y dif z =$
    ],
    answer: [$0$],
    solution: [
      $ div bold(F) = 0 => I = 0 $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $L$ 为 $x O y$ 面上沿顺时针方向绕行的闭曲线，且 $oint_L (x - 2y) dif x + (4x + 3y) dif y = -9$，则 $L$ 所围成平面区域 $D$ 的面积为
    ],
    answer: [$(3)/(2)$],
    solution: [
      $ Q_x - P_y = 6 $。顺时针方向：$ I = -6S_D = -9 => S_D = 3/2 $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $(a x y^3 - y^2 cos x) dif x + (1 + b y sin x + 3x^2 y^2) dif y$ 是某个二元函数 $f(x, y)$ 的全微分，则 $a, b$ 的值分别为
    ],
    answer: [$a = 2, b = -2$],
    solution: [
      $ M_y = N_x => 3 a x y^2 - 2 y cos x = b y cos x + 6 x y^2 => a=2, b=-2 $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $L$ 为圆 $x^2 + y^2 = 1$，取顺时针方向，则 $I_1 = oint_L x^6 dif s$ 与 $I_2 = oint_L y^6 dif s$ 的大小关系是
    ],
    answer: [$I_1 = I_2$],
    solution: [
      由对称性，$ I_1 = I_2 $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $P(x, y, z)$ 在空间有界闭区域 $V$ 上具有一阶连续偏导数，$Sigma$ 为 $V$ 的光滑边界曲面的外侧，由高斯公式得 $iint_Sigma P(x, y, z) dif y dif z =$
    ],
    answer: [$(iiint_V (partial P))/((partial x) dif v)$],
    solution: [
      $ div(P, 0, 0) = P_x => I = iiint_V (partial P)/(partial x) dif v $。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      计算 $oint_L sqrt(x^2 + y^2) dif s$，其中 $L$ 为圆 $x^2 + y^2 = a x$
    ],
    solution: [
      $ x = a/2(1+cos theta), y = a/2 sin theta, dif s = a/2 dif theta $
      $ I = a^2/2 int_0^(2 pi) |cos theta/2| dif theta = 2a^2 $
    ],
  ),
)

#book-section(section-title, problems)
