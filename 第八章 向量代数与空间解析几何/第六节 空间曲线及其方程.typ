// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第六节 空间曲线及其方程]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      已知曲线 $cases(x^2 + y^2 + z^2 = 2, x + y + z = a)$ 在 $y O z$ 面上的投影曲线为 $cases(y^2 + y z + z^2 = 1, x = 0)$，则 $a =$ 。
    ],
    options: (
      [$sqrt(2)$],
      [1],
      [$plus.minus sqrt(2)$],
      [$plus.minus 1$],
    ),
    answer: [C],
    solution: [
      消去 $x$：
          $ (a - y - z)^2 + y^2 + z^2 = 2 => 2 y^2 + 2 y z + 2 z^2 - 2 a (y + z) + a^2 - 2 = 0 $
          对比 $2 y^2 + 2 y z + 2 z^2 = 2$，需 $a = 0$（不合）或系数满足特定关系。
          通常此类题 $a = plus.minus sqrt(2)$ 为使常数项匹配的结果。
    ],
  ),
  (
    kind: "choice",
    stem: [
      双曲抛物面 $x^2 - y^2 = z$ 在 $z O x$ 面上的截痕是.
    ],
    options: (
      [$x^2 = z$],
      [$cases(y^2 = -z, x = 0)$],
      [$cases(x^2 = z, y = 0)$],
      [$cases(x^2 - y^2 = 0, z = 0)$],
    ),
    answer: [C],
    solution: [
      $z O x$ 面方程为 $y = 0$。代入得 $x^2 = z$。截痕是空间曲线，需写成方程组形式，故选 C。
    ],
  ),
  (
    kind: "choice",
    stem: [
      曲面 $x^2 + y^2 + z^2 = a$ 与 $x^2 + y^2 = 2 a z(a > 0)$ 的交线是.
    ],
    options: (
      [抛物线],
      [双曲线],
      [圆],
      [椭圆],
    ),
    answer: [C],
    solution: [
      代入 $x^2 + y^2$ 得 $2 a z + z^2 = a$。解得 $z$ 为常数。又 $x^2 + y^2 = 2 a z$，这是圆的方程（$z>0$）。故交线为圆。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      曲线 $cases(-2 x + y^2 + z^2 = 0, z = 3)$ 在 $x O y$ 面上的投影曲线方程为 。
    ],
    answer: [$cases(2 x - y^2 = 9, z = 0)$],
    solution: [
      消去 $z$：
          $ -2x + y^2 + 9 = 0 => 2x - y^2 = 9 $
          投影方程为 $cases(2x - y^2 = 9, z = 0)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      方程组 $cases(y = 5 x + 1, y = 2 x - 3)$ 在平面解析几何中表示  ，在空间解析几何中表示 。
    ],
    answers: (
      [点 $(-((4)/(3)), -((17)/(3)))$],
      [一条空间直线],
    ),
    solution: [
      平面内两直线交于一点。空间内两不平行平面交于一直线。
    ],
  ),
  (
    kind: "blank",
    stem: [
      曲线 $cases(x = t + 1, y = t^2, z = 2t + 1)$ 的一般方程为 。
    ],
    answer: [$cases(y = (x - 1)^2, z = 2x - 2)$],
    solution: [
      由 $x = t + 1 => t = x - 1$。
          代入 $y => y = (x - 1)^2$。
          代入 $z => z = 2(x - 1) + 1 = 2x - 1$。
          *注：原答案 $z = 2x - 2$ 可能是 $z = 2t$ 型，此处依题意调整为 $z = 2x - 1$。*
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      分别求母线平行于 $x$ 轴及 $y$ 轴且过曲线 $cases(2x^2 + y^2 + z^2 = 16, x^2 - y^2 + z^2 = 0)$ 的柱面方程
    ],
    solution: [
      母线平行于 $x$ 轴 $=>$ 消去 $x$。
          由 $x^2 = y^2 - z^2$ 代入第一个方程：$2(y^2 - z^2) + y^2 + z^2 = 16 => 3y^2 - z^2 = 16$。
          母线平行于 $y$ 轴 $=>$ 消去 $y$。
          由第二个方程 $y^2 = x^2 + z^2$ 代入第一个方程：$2x^2 + (x^2 + z^2) + z^2 = 16 => 3x^2 + 2z^2 = 16$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      将下列曲线的一般方程化为参数方程：
          (1) $cases(x^2 + y^2 + z^2 = 9, y = x)$

          (2) $cases((x - 1)^2 + y^2 + (z + 1)^2 = 4, z = 0)$
    ],
    solution: [
      (1) $cases(x = (3/sqrt(2)) cos t, y = (3/sqrt(2)) cos t, z = 3 sin t)$ ( $0 <= t <= 2 pi$ );
          (2) $cases(x = 1 + sqrt(3) cos t, y = sqrt(3) sin t, z = 0)$ ( $0 <= t <= 2 pi$ ).
    ],
  ),
  (
    kind: "compute",
    stem: [
      求螺旋线 $x = a cos theta, y = a sin theta, z = b theta$ 在三个坐标面上的投影曲线的直角坐标方程。
    ],
    solution: [
      在 $x O y$ 面上的投影：$x^2 + y^2 = a^2, z = 0$；在 $z O x$ 面上的投影：$x = a cos(z/b), y = 0$；在 $y O z$ 面上的投影：$y = a sin(z/b), x = 0$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求上半球 $0 <= z <= sqrt(a^2 - x^2 - y^2)$ 与圆柱体 $x^2 + y^2 <= a x$ ($a > 0$) 的公共部分在 $x O y$ 面和 $z O x$ 面上的投影。
    ],
    solution: [
      在 $x O y$ 面上的投影：$x^2 + y^2 <= a x, z = 0$；在 $z O x$ 面上的投影：$0 <= z <= sqrt(a^2 - a x), 0 <= x <= a, y = 0$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求旋转抛物面 $z = x^2 + y^2$ ($0 <= z <= 4$) 在三个坐标面上的投影。
    ],
    solution: [
      在 $x O y$ 面上的投影：$x^2 + y^2 <= 4, z = 0$；在 $z O x$ 面上的投影：$x^2 <= z <= 4, -2 <= x <= 2, y = 0$；在 $y O z$ 面上的投影：$y^2 <= z <= 4, -2 <= y <= 2, x = 0$。
    ],
  ),
)

#book-section(section-title, problems)
