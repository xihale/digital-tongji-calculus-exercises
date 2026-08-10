// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第五节 可降阶的高阶微分方程]

#let problems = (
  // ===== 一、填空题 =====
  (
    kind: "blank",
    stem: [微分方程 $y'' = sin 2x - cos x$ 的通解是],
    answer: [$y = -(1/4) sin 2x + cos x + C_1 x + C_2$],
    solution: [
      积分得 $y' = -(1/2) cos 2x - sin x + C_1$，
      再积分 $y = -(1/4) sin 2x + cos x + C_1 x + C_2$。
    ],
  ),
  (
    kind: "blank",
    stem: [微分方程 $y'' = e^(2x)$ 的通解是],
    answer: [$y = (1/4) e^(2x) + C_1 x + C_2$],
    solution: [积分两次得 $y' = (1/2) e^(2x) + C_1$，$y = (1/4) e^(2x) + C_1 x + C_2$。],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [求下列微分方程的通解：],
    parts: (
      [$y'' = 1/(1 + x^2)$；],
      [$y y'' + 2(y')^2 = 0$。],
    ),
    solution-parts: (
      [
        积分得 $y' = arctan x + C_1$，再次积分
        $y = x arctan x - (1/2) ln(1 + x^2) + C_1 x + C_2$。
      ],
      [
        记 $p = y'$，$y'' = p (dif p)/(dif y)$，得 $p = C_1 y^(-2)$，
        积分得 $(1/3) y^3 = C_1 x + C_2$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [求下列微分方程满足所给初值条件的特解：],
    parts: (
      [$y'' = e^(2y)$，$y|_(x=0) = y'|_(x=0) = 0$；],
      [$y'' + (y')^2 = 1$，$y|_(x=0) = 0$，$y'|_(x=0) = 0$。],
    ),
    solution-parts: (
      [
        设 $p = y'$，得 $(y')^2 = e^(2y) - 1$，特解 $y = -ln cos x$。
      ],
      [
        令 $p = y'$，得 $p = tanh x$，积分并代入初值得 $y = ln cosh x$。
      ],
    ),
  ),

  // ===== 三、应用题 =====
  (
    kind: "short",
    stem: [
      设有一质量为 $m$ 的物体在空中由静止开始下落。如果空气阻力 $R = c v$
      （$c$ 为常数，$v$ 为物体运动的速度），试求物体下落的距离 $s$ 与时间 $t$ 的函数关系
    ],
    solution: [
      运动方程 $m (dif v)/(dif t) = m g - c v$，解得 $v(t) = (m g/c)(1 - e^(-(c/m) t))$。
      位移 $s(t) = (m g/c) t + (m^2 g/c^2)(e^(-(c/m) t) - 1)$。
    ],
  ),
)

#book-section(section-title, problems)
