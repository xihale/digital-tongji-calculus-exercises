// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第三节 三重积分(2)]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      已知 $Omega$ 是由曲面 $4z^2 = 25(x^2 + y^2)$ 及平面 $z = 5$ 所围成的空间闭区域，则 $iiint_Omega (x^2 + y^2) dif v$ 在柱面坐标系下的三次积分为。
    ],
    options: (
      [$int_0^(2 pi) dif theta int_0^2 rho^3 dif rho int_0^5 dif z$],
      [$int_0^(2 pi) dif theta int_0^4 rho^3 dif rho int_0^5 dif z$],
      [$int_0^(2 pi) dif theta int_0^2 rho^3 dif rho int_(5/2 rho)^5 dif z$],
      [$int_0^(2 pi) dif theta int_0^2 rho^2 dif rho int_0^5 dif z$],
    ),
    answer: [C],
  ),
  (
    kind: "choice",
    stem: [
      设有空间闭区域 $Omega_1 = {(x, y, z) | x^2 + y^2 + z^2 <= R^2, z >= 0}, Omega_2 = {(x, y, z) | x^2 + y^2 + z^2 <= R^2, x >= 0, y >= 0, z >= 0}$，则。
    ],
    options: (
      [$iiint_(Omega_1) x dif v = 4 iiint_(Omega_2) x dif v$],
      [$iiint_(Omega_1) y dif v = 4 iiint_(Omega_2) y dif v$],
      [$iiint_(Omega_1) z dif v = 4 iiint_(Omega_2) z dif v$],
      [$iiint_(Omega_1) x y z dif v = 4 iiint_(Omega_2) x y z dif v$],
    ),
    answer: [C],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设 $Omega$ 是由曲面 $z = x^2 + y^2$ 和 $z = 2 - x^2 - y^2$ 所围成的空间闭区域，
          则 $iiint_Omega f(x, y, z) dif v$ 在柱面坐标系下的三次积分为
        ],
    answer: [$int_0^(2 pi) dif theta int_0^1 dif rho int_(rho^2)^(2 - rho^2) f(rho cos theta, rho sin theta, z) rho dif z$],
    solution: [
      两曲面交线为 $x^2+y^2=1$。在柱面坐标下 $rho$ 范围为 $0$ 到 $1$，$z$ 范围从下曲面 $rho^2$ 到上曲面 $2-rho^2$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $Omega$ 是由曲面 $x^2 + y^2 + z^2 = 1$ 所围成的空间闭区域，则 $iiint_Omega (z ln(x^2 + y^2 + z^2 + 1)) / (x^2 + y^2 + z^2 + 1) dif v =$
    ],
    answer: [$0$],
    solution: [
      由于区域 $Omega$ 关于 $x O y$ 平面对称，而被积函数关于 $z$ 是奇函数，故积分为 0。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      计算 $iiint_Omega x y dif v$，其中 $Omega$ 是由柱面 $x^2 + y^2 = 1$ 及平面 $z = 1, z = 0, x = 0, y = 0$ 所围成且在第一卦限的空间闭区域。
    ],
    solution: [
      $1/8$

      $ I = int_0^1 dif z int_0^(pi/2) sin theta cos theta dif theta int_0^1 r^3 dif r = 1 times 1/2 times 1/4 = 1/8 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iiint_Omega z^2 dif v$，其中 $Omega$ 是由曲面 $x^2 + y^2 + z^2 = R^2$ 和 $x^2 + y^2 + z^2 = 2 R z$ ($R > 0$) 所围成的空间闭区域。
    ],
    solution: [
      $59/480 pi R^5$

      区域 $Omega$ 是由两个球面所围成的部分（它们的交集）。
          两球面交线为 $R^2 = 2 R z => z = R/2$。
          利用柱面坐标，分上下两部分积分：
          $I = pi int_0^(R/2) z^2 (2 R z - z^2) dif z + pi int_(R/2)^R z^2 (R^2 - z^2) dif z$
          $= pi [ 1/2 R z^4 - 1/5 z^5 ]_0^(R/2) + pi [ 1/3 R^2 z^3 - 1/5 z^5 ]_(R/2)^R$
          $= pi (R^5/32 - R^5/160) + pi ( (1/3 R^5 - 1/5 R^5) - (R^5/24 - R^5/160) )$
          $= pi R^5 ( 4/160 + 2/15 - 17/480 ) = pi R^5 ( 12/480 + 64/480 - 17/480 ) = 59/480 pi R^5$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iiint_Omega (y^2 + z^2) dif v$，其中 $Omega$ 是由曲线 $cases(y^2 = 2x, z = 0)$ 绕 $x$ 轴旋转一周所得的曲面与平面 $x = 5$ 所围成的空间闭区域。
    ],
    solution: [
      $(250 pi)/3$

      $ I = int_0^5 dif x int_0^(2pi) dif theta int_0^(sqrt(2x)) r^3 dif r = 2pi int_0^5 1/4 (2x)^2 dif x = 2pi [1/3 x^3]_0^5 = (250 pi)/3 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      （附加题）试分别利用柱面坐标和球面坐标计算 $iiint_Omega (x^2 + y^2 + z^2) dif v$，其中 $Omega$ 是由曲面 $x^2 + y^2 + z^2 = 1$ 所围成的空间闭区域。
    ],
    solution: [
      $(4 pi)/5$

      球面坐标：
          $ I = int_0^(2pi) dif theta int_0^pi sin phi dif phi int_0^1 r^4 dif r = 4/5 pi $
          柱面坐标：
          $ I = 2pi int_0^1 rho dif rho int_(-sqrt(1-rho^2))^(sqrt(1-rho^2)) (rho^2 + z^2) dif z = 4/5 pi $
    ],
  ),
)

#book-section(section-title, problems)
