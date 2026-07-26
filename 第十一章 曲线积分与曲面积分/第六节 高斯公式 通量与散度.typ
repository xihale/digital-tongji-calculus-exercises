// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第六节 高斯公式 通量与散度]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      设函数 $f(u)$ 具有连续导数，$Sigma$ 是曲面 $y = x^2 + z^2$ 与 $y = 8 - x^2 - z^2$ 所围成立体表面的外侧，则 $(iint_Sigma 1)/(y f((x)/(y)) dif y dif z)+(1)/(x f((x)/(y)) dif z dif x)+ z dif x dif y =$。
    ],
    options: (
      [$16 pi$],
      [$-16 pi$],
      [$-8 pi$],
      [因 $f(u)$ 未知, 故无法确定],
    ),
    answer: [C],
    solution: [
      $ div bold(F) = 1 $
          $ V = int_0^(2 pi) int_0^2 (8-2r^2) r dif r dif theta = 16 pi $
          通量 $Phi = iiint_Omega 1 dif v = 16 pi $
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $Sigma$ 是球面 $x^2 + y^2 + z^2 = a^2$ 的外侧，则 $iint_Sigma z dif x dif y =$。
    ],
    options: (
      [0],
      [$(4)/(3 pi a^3)$],
      [$4 pi a^3$],
      [$(1)/(2 pi a^4)$],
    ),
    answer: [B],
    solution: [
      $ I = iiint_Omega div(0,0,z) dif v = iiint_Omega 1 dif v = 4/(3 pi a^3) $。选 B。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设流速场 $bold(v) = (0, 0, 1)$，则流过球面 $x^2 + y^2 + z^2 = R^2$ 的通量为。
    ],
    options: (
      [0],
      [$4 pi R^2$],
      [$(4)/(3 pi R^3)$],
      [1],
    ),
    answer: [A],
    solution: [
      $ div bold(v) = 0 => Phi = iiint_Omega 0 dif v = 0 $。选 A。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设 $cos alpha, cos beta, cos gamma$ 是光滑闭曲面 $Sigma$ 的外法向量的方向余弦， $Sigma$ 所围的空间闭区域为 $Omega$（坐标原点在 $Omega$ 外）， 则用高斯公式化曲面积分为重积分时，有 $(iint_Sigma (x cos alpha + y cos beta + z cos gamma))/((sqrt(x^2 + y^2 + z^2)) dif S)$ $=$ 。
    ],
    answer: [$(iiint_Omega 2)/((sqrt(x^2 + y^2 + z^2)) dif v)$],
    solution: [
      $ div ((bold(r))/r) = 2/r => I = iiint_Omega 2/r dif v = iiint_Omega 2/(sqrt(x^2+y^2+z^2)) dif v $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $Omega$ 是由光滑闭曲面 $Sigma$ 所围成的空间闭区域，其体积记为 $V$，则沿 $Sigma$ 外侧的积分 $iint_Sigma (z - y) dif x dif y + (y - x) dif z dif x + (x - z) dif y dif z =$ 。
    ],
    answer: [$0$],
    solution: [
      $ div bold(F) = 0 => I = iiint_Omega 0 dif v = 0 $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $Sigma$ 为球面 $x^2 + y^2 + z^2 = a^2$，则 $iint_Sigma (x^2 + y^2 + z^2) dif S =$ 。
    ],
    answer: [$4 pi a^4$],
    solution: [
      在 $Sigma$ 上 $ x^2+y^2+z^2=a^2 => I = a^2 dot 4 pi a^2 = 4 pi a^4 $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设空间闭区域 $Omega$ 由曲面 $z = a^2 - x^2 - y^2$ 与平面 $z = 0$ 所围成， 其中 $a$ 为正整数，记闭区域 $Omega$ 的表面外侧为 $S$，$Omega$ 的体积为 $V$， 则 $iint_S x^2 y z^2 dif y dif z - x y^2 z^2 dif z dif x + z (1 + x y z) dif x dif y$ $=$ 。
    ],
    answer: [$iiint_Omega (2 x y z^2 - 2 x y^2 z + 1 + x y z) dif v$],
    solution: [
      $ div bold(F) = P_x + Q_y + R_z = 2 x y z^2 - 2 x y^2 z + (1 + x y z) $
          $ I = iiint_Omega (2 x y z^2 - 2 x y^2 z + 1 + x y z) dif v $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设有向量场 $bold(A) = (x^2 y + y^3) bold(i) + (x^3 - x y^2) bold(j)$，则 $div bold(A) =$ 。
    ],
    answer: [$0$],
    solution: [
      $ div bold(A) = 2 x y - 2 x y = 0 $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      向量场 $bold(A) = (x^2 y z, z y^2 x, x y z^2)$ 在点 $M(1, 3, 2)$ 处的散度 $div bold(A) =$ 。
    ],
    answer: [$36$],
    solution: [
      $ div bold(A) = 6 x y z $。在 $M(1,3,2)$ 处，$ div bold(A) = 36 $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $u = ln sqrt(x^2 + y^2 + z^2)$，则 $div(grad u) |_((1, 1, 1)) =$ 。
    ],
    answer: [$(1)/(3)$],
    solution: [
      $ div(grad u) = Delta u = 1/r^2 $。在 $(1,1,1)$ 处，$ Delta u = 1/3 $。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      求向量场 $bold(A)$ 的散度，其中 $bold(A) = ee^(x y) bold(i) + cos(x y) bold(j) + cos(x z^2) bold(k)$。
    ],
    solution: [
      $ div bold(A) = y ee^(x y) - x sin(x y) - 2 x z sin(x z^2) $。
    ],
  ),
  (
    kind: "compute",
    stem: [
      利用高斯公式计算下列曲面积分：
          (1) $iint_Sigma x^2 dif y dif z + y^2 dif z dif x + z^2 dif x dif y$，其中 $Sigma$ 为平面 $x = 0, y = 0, z = 0, x = a, y = a, z = a$ 所围成立体表面的外侧；
          (2) $iint_Sigma x^3 dif y dif z + y^3 dif z dif x + z^3 dif x dif y$，其中 $Sigma$ 为球面 $x^2 + y^2 + z^2 = a^2$ 的外侧；
          (3) $iint_Sigma x dif y dif z + y dif z dif x + z dif x dif y$，其中 $Sigma$ 为介于 $z = 0, z = 3$ 之间的圆柱体 $x^2 + y^2 <= 9$ 的整个表面的外侧。
    ],
    solution: [
      (1) $ div bold(F) = 2(x+y+z) => I = iiint_Omega 2(x+y+z) dif v = 3a^4 $
          (2) $ div bold(F) = 3r^2 => I = iiint_Omega 3r^2 dif v = 12/(5 pi a^5) $
          (3) $ div bold(F) = 3 => I = 3V = 81 pi $
    ],
  ),
  (
    kind: "compute",
    stem: [
      求向量场 $bold(A) = (2x + 3z) bold(i) - (x z + y) bold(j) + (y^2 + 2z) bold(k)$ 穿过曲面 $Sigma$ 流向指定侧的通量，其中 $Sigma$ 是以点 $(3, -1, 2)$ 为球心，半径 $R = 3$ 的球面，流向外侧。
    ],
    solution: [
      $ div bold(A) = 3 $。$ Phi = iiint_Omega 3 dif v = 3V = 3 dot 36 pi = 108 pi $。
    ],
  ),
)

#book-section(section-title, problems)
