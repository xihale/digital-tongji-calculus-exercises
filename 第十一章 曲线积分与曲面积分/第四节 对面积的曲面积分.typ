// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第四节 对面积的曲面积分]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      设 $Sigma$ 为抛物面 $z = 2 - x^2 - y^2$ 在 $x O y$ 面上方的部分，则 $iint_Sigma dif S =$。
    ],
    options: (
      [$int_0^(2 pi) dif theta int_0^1 sqrt(1 + 4 r^2) r dif r$],
      [$int_0^(2 pi) dif theta int_0^2 sqrt(1 + 4 r^2) r dif r$],
      [$int_0^(2 pi) dif theta int_0^2 (2 - r^2) sqrt(1 + 4 r^2) r dif r$],
      [$int_0^(2 pi) dif theta int_0^(sqrt(2)) sqrt(1 + 4 r^2) r dif r$],
    ),
    answer: [D],
    solution: [
      $ z = 2 - x^2 - y^2, dif S = sqrt(1+4x^2+4y^2) dif sigma $
          投影区域 $D: x^2+y^2 <= 2 => r <= sqrt(2)$。
          $ I = int_0^(2 pi) dif theta int_0^(sqrt(2)) sqrt(1 + 4 r^2) r dif r $。选 D。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设有一曲面 $Sigma$，其面密度为 $rho(x, y, z)$，则曲面 $Sigma$ 关于 $x$ 轴的转动惯量为。
    ],
    options: (
      [$iint_Sigma x dif S$],
      [$iint_Sigma x rho(x, y, z) dif S$],
      [$iint_Sigma x^2 dif S$],
      [$iint_Sigma (y^2 + z^2) rho(x, y, z) dif S$],
    ),
    answer: [D],
    solution: [
      $I_x = iint_Sigma r^2 dif m = iint_Sigma (y^2 + z^2) rho(x, y, z) dif S$。选 D。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设 $Sigma$ 为柱面 $x^2 + y^2 = a^2$ ($a > 0$) 在 $0 <= z <= h$ 之间的部分，则 $iint_Sigma dif S =$ ，$iint_Sigma x dif S =$ ，$iint_Sigma x^2 dif S =$ 。
    ],
    answers: (
      [$2 pi a h$],
      [$0$],
      [$pi h a^3$],
    ),
    solution: [
      $ dif S = a dif theta dif z $
          $ iint dif S = 2 pi a h $
          $ iint x dif S = a^2 h int_0^(2 pi) cos theta dif theta = 0 $
          $ iint x^2 dif S = a^3 h int_0^(2 pi) cos^2 theta dif theta = pi h a^3 $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $Sigma$ 为球面 $z = 1 + sqrt(1 - x^2 - y^2)$，则 $iint_Sigma (x^2 + y^2 +(z)/(2)) dif S =$ 。
    ],
    answer: [$(17 pi)/(6)$],
    solution: [
      $ x=sin phi cos theta, y=sin phi sin theta, z=1+cos phi, dif S = sin phi dif phi dif theta $
          $ I = int_0^(2 pi) dif theta int_0^pi/2 [sin^2 phi +(1+cos phi)/2] sin phi dif phi = (17 pi)/6 $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $Sigma$ 为圆锥面 $z = sqrt(x^2 + y^2)$ 被圆柱面 $x^2 + y^2 = 2 a x$ ($a > 0$) 所截的部分，则 $iint_Sigma (x y + y z + z x) dif S =$ 。
    ],
    answer: [$(64 sqrt(2))/(15 a^4)$],
    solution: [
      $ dif S = sqrt(2) r dif r dif theta $
          $ I = sqrt(2) int_(-pi/2)^pi/2 int_0^(2a cos theta) r^3 (cos theta sin theta + sin theta + cos theta) dif r dif theta = (64 sqrt(2))/(15 a^4) $
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      计算 $iint_Sigma (z + 2x +(4)/(3 y)) dif S$，其中 $Sigma$ 为平面 $(x)/(2)+(y)/(3)+(z)/(4)= 1$ 在第一卦限的部分。
    ],
    solution: [
      $ z = 4 - 2x -(4y)/3, dif S = sqrt(61)/3 dif x dif y $
          被积函数 $z+2x+(4y)/3= 4$。
          $ I = 4 dot sqrt(61)/3 dot iint_D dif sigma = 4 sqrt(61) $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iint_Sigma (x + y + z) dif S$，其中 $Sigma$ 为球面 $x^2 + y^2 + z^2 = a^2$ 在 $z >= h$ ($0 < h < a$) 的部分。
    ],
    solution: [
      由对称性 $ iint x dif S = iint y dif S = 0 $
          $ z dif S = a dif sigma $。$ I = a dot pi(a^2-h^2) = pi a(a^2-h^2) $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iint_Sigma (x^2 +(1)/(2 y^2)+(1)/(4 z^2)) dif S$，其中 $Sigma$ 为球面 $x^2 + y^2 + z^2 = R^2$。
    ],
    solution: [
      由对称性 $ iint x^2 dif S = iint y^2 dif S = iint z^2 dif S = 4/(3 pi R^4) $
          $ I = (1 + 1/2 + 1/4) dot 4/(3 pi R^4) = 7/(3 pi R^4) $
    ],
  ),
  (
    kind: "compute",
    stem: [
      求球面 $z = sqrt(a^2 - x^2 - y^2)$ 在柱面 $x^2 + y^2 = a x$ 内部的表面积。
    ],
    solution: [
      $ dif S = a/z dif sigma $
          $ A = int_(-pi/2)^pi/2 int_0^(a cos theta) a r/sqrt(a^2-r^2) dif r dif theta = a^2(pi-2) $
    ],
  ),
  (
    kind: "compute",
    stem: [
      求抛物面壳 $z =(1)/(2 (x^2 + y^2))$ ($0 <= z <= 1$) 的质量，已知壳的面密度为 $rho = z$。
    ],
    solution: [
      $ z = r^2/2, dif S = sqrt(1+r^2) r dif r dif theta $
          $ M = pi int_0^(sqrt(2)) r^3 sqrt(1+r^2) dif r = 2/(15 pi (6 sqrt(3)+1)) $
    ],
  ),
)

#book-section(section-title, problems)
