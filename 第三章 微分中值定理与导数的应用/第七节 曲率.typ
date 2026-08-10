// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第七节 曲率]

#let problems = (
  // ===== 一、填空题 =====
  (
    kind: "blank",
    stem: [曲线 $y = x^2 + e^(x^2)$ 在点 $(0, 1)$ 处的曲率与曲率半径分别为],
    answers: (
      [$4$],
      [$1/4$],
    ),
    solution: [
      $y' = 2x + 2x e^(x^2)$，$y'' = 2 + 2e^(x^2) + 4x^2 e^(x^2)$。
      在 $x = 0$：$y' = 0$，$y'' = 4$，
      $K = |y''|/(1+(y')^2)^(3/2) = 4$，$R = 1/K = 1/4$。
    ],
  ),
  (
    kind: "blank",
    stem: [抛物线 $y = x^2 - 4x + 4$ 在其顶点处的曲率与曲率半径分别为],
    answers: (
      [$2$],
      [$1/2$],
    ),
    solution: [
      顶点 $x = 2$，$y = 0$。$y' = 2x - 4$，$y'' = 2$，
      顶点处 $y' = 0$，$K = 2$，$R = 1/2$。
    ],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [求椭圆 $4x^2 + y^2 = 4$ 在点 $(0, 2)$ 处的曲率],
    solution: [
      隐函数求导：$8x + 2y y' = 0 => y' = -4x/y$；
      $y'' = (-4y + 4x y')/y^2$。
      在 $(0,2)$：$y' = 0$，$y'' = -2$，
      $K = 2$。
    ],
  ),
  (
    kind: "compute",
    stem: [求曲线 $x = a cos^3 t$，$y = a sin^3 t$ 在点 $t = t_0$ 处的曲率],
    solution: [
      $x' = -3a cos^2 t sin t$，$y' = 3a sin^2 t cos t$，
      $x'' = 3a(2 cos t sin^2 t - cos^3 t)$，
      $y'' = 3a(2 sin t cos^2 t - sin^3 t)$。
      参数式曲率公式得
      $K = |x' y'' - y' x''|/(x'^2 + y'^2)^(3/2)
      = (2/(3a)) |sin 2t|$。
      在 $t = t_0$ 处：$K = (2/(3a)) |sin 2 t_0|$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      一飞机沿抛物路径 $y = x^2/10000$（$y$ 轴铅直向上，单位：m）做俯冲飞行。
      在坐标原点 $O$ 处飞机速度为 $v = 200$ m/s，飞行员体重 $G = 70$ kg。
      求飞机俯冲至最低点（原点）时座椅对飞行员的作用力
    ],
    solution: [
      $y' = x/5000$，$y'' = 1/5000$，在原点 $y' = 0$，
      $K = 1/5000$，$R = 5000$ m。
      向心加速度 $a_c = v^2/R = 8$ m/s²。
      最低点：$N - m g = m a_c$，
      $N = 70(9.8 + 8) = 1246$ N。
    ],
  ),
)

#book-section(section-title, problems)
