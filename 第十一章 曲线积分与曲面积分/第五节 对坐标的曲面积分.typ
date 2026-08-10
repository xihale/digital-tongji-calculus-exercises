// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section, blank

#let section-title = [第五节 对坐标的曲面积分]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      设 $Sigma$ 为平面 $z = 0$ ($|x| <= 1, |y| <= 1$)，方向向下，则 $iint_Sigma dif x dif y =$
    ],
    options: (
      [1],
      [$iint_(D_(x y)) dif x dif y$],
      [$-iint_(D_(x y)) dif x dif y$],
      [0],
    ),
    answer: [C],
    solution: [
      取下侧则 $bold(n) dot bold(k) = -1 => iint_Sigma dif x dif y = -iint_(D_(x y)) dif x dif y$。选 C。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $Sigma$ 为平面 $z = 0$ ($x^2 + y^2 <= R^2$) 的上侧，则 $iint_Sigma (x^2 + y^2) dif x dif y =$
    ],
    options: (
      [$iint_(x^2 + y^2 <= R^2) R^2 dif x dif y = pi R^4$],
      [$-iint_(x^2 + y^2 <= R^2) R^2 dif x dif y = -pi R^4$],
      [$int_0^(2 pi) dif theta int_0^R r^3 dif r =(pi R^4)/(2)$],
      [0],
    ),
    answer: [C],
    solution: [
      取上侧则 $ bold(n) dot bold(k) = 1 $
          $ I = int_0^(2 pi) dif theta int_0^R r^2 dot r dif r = (pi R^4)/2 $。选 C。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设 $Sigma$ 为方程 $z = z(x, y)$ 所给曲面的下侧，$D_(x y)$ 为曲面 $Sigma$ 在 $x O y$ 面上的投影区域，则曲面积分 $iint_Sigma R(x, y, z) dif x dif y$ 可化为二重积分
    ],
    answer: [$-iint_(D_(x y)) R(x, y, z(x, y)) dif x dif y$],
    solution: [
      取下侧则 $ bold(n) dot bold(k) < 0 => dif x dif y = -dif sigma $
          $ I = -iint_(D_(x y)) R(x, y, z(x, y)) dif x dif y $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $Sigma$ 是球面 $x^2 + y^2 + z^2 = a^2$ 的外侧，则 $iint_Sigma z dif x dif y =$
    ],
    answer: [$(4)/(3 pi a^3)$],
    solution: [
      由高斯公式，$ I = iiint_Omega div(0,0,z) dif v = V = 4/(3 pi a^3) $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $Sigma$ 是柱面 $x^2 + y^2 = 4$ 介于 $1 <= z <= 3$ 之间的部分，其法向量指向 $z$ 轴，则 $iint_Sigma sqrt(x^2 + y^2 + z^2) dif x dif y =$
    ],
    answer: [$0$],
    solution: [
      侧柱面法向量 $ bold(n) dot bold(k) = 0 => dif x dif y = 0 $。
    ],
  ),
  (
    kind: "blank",
    stem: [
      $iint_Sigma z dif x dif y + x dif y dif z + y dif z dif x =$ #blank()，其中 $Sigma$ 为柱面 $x^2 + y^2 = a^2$ 被平面 $z = 1$ 和 $z = 4$ 所截的在第一卦限部分的前侧
    ],
    answer: [$(3)/(2 pi a^2)$],
    solution: [
      $ bold(F)=(x,y,z), bold(n) dif S = (cos theta, sin theta, 0) a dif theta dif z $
          $ bold(F) dot bold(n) = a $。$ I = int_1^4 int_0^pi/2 a^2 dif theta dif z = 3/(2 pi a^2) $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $Sigma$ 为平面 $3x + 2y + 2 sqrt(3) z = 6$ 在第一卦限部分的上侧，将 $iint_Sigma R dif x dif y + P dif y dif z + Q dif z dif x$ 化为对面积的曲面积分是
    ],
    answer: [$iint_Sigma (3/5 P + 2/5 Q + 2 sqrt(3)/5 R) dif S$],
    solution: [
      $ bold(n) = (3/5, 2/5, 2sqrt(3)/5) $
          $ I = iint_Sigma (3/5 P + 2/5 Q + 2sqrt(3)/5 R) dif S $
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      计算下列对坐标的曲面积分： \
          (1) $iint_Sigma x^2 y^2 z dif x dif y$，其中 $Sigma$ 为球面 $x^2 + y^2 + z^2 = R^2$ 的下半部分的下侧；
          (2) $iint_Sigma z dif x dif y + x dif y dif z + y dif z dif x$，其中 $Sigma$ 为柱面 $x^2 + y^2 = 1$ 被平面 $z = 0$ 及 $z = 3$ 所截的在第一卦限内的部分的前侧；
          (3) $iint_Sigma [f(x, y, z) + x] dif y dif z + [2 f(x, y, z) + y] dif z dif x + [f(x, y, z) + z] dif x dif y$，其中 $f(x, y, z)$ 为连续函数，$Sigma$ 为平面 $x - y + z = 1$ 在第四卦限部分的上侧
    ],
    solution: [
      (1) 下侧 $ dif x dif y = -dif sigma $, $ z = -sqrt(R^2-r^2) $
          $ I = iint_D x^2 y^2 sqrt(R^2-r^2) dif sigma = 2/(105 pi R^7) $
          (2) $ bold(F)=(x,y,z) $, $ bold(n) dif S = (cos theta, sin theta, 0) dif theta dif z $
          $ I = int_0^3 int_0^pi/2 1 dif theta dif z = (3 pi)/2 $
          (3) $ z = 1-x+y, z_x=-1, z_y=1 $
          $ I = iint_D (P - Q + R) dif sigma = iint_D 1 dif sigma = 1/2 $
    ],
  ),
  (
    kind: "proof",
    kind-title: [四、证明题],
    stem: [
      设 $R$ 是定义在光滑曲面 $S: z = z(x, y), (x, y) in D_(x y)$ 上的连续函数，以 $S$ 的上侧为正侧（ $S$ 的法线方向与 $z$ 轴成锐角），证明： $iint_S R(x, y, z) dif x dif y = iint_(D_(x y)) R(x, y, z(x, y)) dif x dif y$
    ],
    solution: [
      取上侧则 $ bold(n) dot bold(k) > 0 => dif x dif y = (bold(n) dot bold(k)) dif S = dif sigma $
          故 $ iint_S R(x,y,z) dif x dif y = iint_(D_(x y)) R(x, y, z(x, y)) dif x dif y $
    ],
  ),
)

#book-section(section-title, problems)
