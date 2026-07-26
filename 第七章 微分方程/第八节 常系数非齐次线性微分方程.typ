// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第八节 常系数非齐次线性微分方程]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [微分方程 $y'' - y = 3 e^x + 2$ 的一个特解具有形式（$a, b$ 为常数）],
    options: (
      [$y^* = a e^x + b$],
      [$y^* = a e^x + b x$],
      [$y^* = a x e^x + b$],
      [$y^* = a x e^x + b x$],
    ),
    answer: [C],
    solution: [
      特征根 $plus.minus 1$。$e^x$ 对应单根，特解取 $A x e^x$；常数项对应 $0$ 非根，取 $B$。
      故 $y^* = a x e^x + b$。
    ],
  ),
  (
    kind: "choice",
    stem: [微分方程 $y'' + y = sin x$ 的一个特解具有形式],
    options: (
      [$y^* = a sin x$],
      [$y^* = a cos x$],
      [$y^* = x(a sin x + b cos x)$],
      [$y^* = a cos x + b sin x$],
    ),
    answer: [C],
    solution: [
      特征根 $plus.minus i$，$sin x$ 对应单根，特解取 $x(a cos x + b sin x)$。
    ],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [求下列微分方程的通解：],
    parts: (
      [$2 y'' + 5 y' = 5 x^2 - 2x - 1$；],
      [$y'' - 6 y' + 9 y = (x + 1) e^(3x)$。],
    ),
    solution-parts: (
      [
        齐次通解 $y_c = C_1 + C_2 e^(-5/2 x)$。
        特解取 $y_p = A x^3 + B x^2 + C x$，得 $A = 1/3$，$B = -3/5$，$C = 7/25$。
        通解 $y = C_1 + C_2 e^(-5/2 x) + (1/3) x^3 - (3/5) x^2 + (7/25) x$。
      ],
      [
        齐次通解 $y_c = (C_1 + C_2 x) e^(3x)$。
        特解取 $y_p = (A x^3 + B x^2) e^(3x)$，得 $A = 1/6$，$B = 1/2$。
        通解 $y = (C_1 + C_2 x + (1/6) x^3 + (1/2) x^2) e^(3x)$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [求下列微分方程满足所给初值条件的特解：],
    parts: (
      [$y'' - 3 y' + 2 y = 5$，$y|_(x=0) = 1$，$y'|_(x=0) = 2$；],
      [$y'' - 10 y' + 9 y = e^(2x)$，$y|_(x=0) = 6/7$，$y'|_(x=0) = 33/7$。],
    ),
    solution-parts: (
      [
        通解 $y = C_1 e^x + C_2 e^(2x) + 5/2$。
        初值得 $C_1 = -5$，$C_2 = 7/2$，特解 $y = -5 e^x + (7/2) e^(2x) + 5/2$。
      ],
      [
        通解 $y = C_1 e^x + C_2 e^(9x) - (1/7) e^(2x)$。
        初值得 $C_1 = C_2 = 1/2$，特解 $y = (1/2) e^x + (1/2) e^(9x) - (1/7) e^(2x)$。
      ],
    ),
  ),

  // ===== 三、应用题 =====
  (
    kind: "short",
    stem: [大炮以仰角 $alpha$、初速度 $v_0$ 发射炮弹，若不计空气阻力，求弹道曲线。],
    solution: [
      $x = v_0 cos alpha thin t$，$y = v_0 sin alpha thin t - (1/2) g t^2$。
      消去 $t$ 得 $y = x tan alpha - (g x^2)/(2 v_0^2 cos^2 alpha)$，
      或 $y = x tan alpha - (g x^2 (1 + tan^2 alpha))/(2 v_0^2)$。
    ],
  ),
)

#book-section(section-title, problems)
