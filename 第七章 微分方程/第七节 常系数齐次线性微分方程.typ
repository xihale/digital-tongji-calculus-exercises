// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第七节 常系数齐次线性微分方程]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [
      设线性无关的函数 $y_1, y_2, y_3$ 都是二阶非齐次线性微分方程
      $y'' + P(x) y' + Q(x) y = f(x)$ 的解，$C_1, C_2, C_3$ 是任意常数，
      则该微分方程的通解是
    ],
    options: (
      [$C_1 y_1 + C_2 y_2 + C_3 y_3$],
      [$C_1 y_1 + C_2 y_2 - (C_1 + C_2) y_3$],
      [$(1 + C_1 + C_2) y_1 + C_1 y_2 + C_2 y_3$],
      [$(1 + C_1 + C_2) y_1 - C_1 y_2 - C_2 y_3$],
    ),
    answer: [D],
    solution: [
      二阶非齐次方程通解 $=$ 一个特解 $+$ 对应齐次通解（含两个任意常数）。
      $y_1 - y_2$、$y_1 - y_3$ 为齐次方程的解，整理得
      $y = (1 + C_1 + C_2) y_1 - C_1 y_2 - C_2 y_3$。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [
      设 $y_1 = cos x$ 与 $y_2 = sin x$ 是微分方程 $y'' + y = 0$ 的两个解，
      则该微分方程的通解为
    ],
    answer: [$C_1 cos x + C_2 sin x$],
    solution: [两解线性无关，通解为它们的线性组合。],
  ),
  (
    kind: "blank",
    stem: [微分方程 $y'' - 2 y' + y = 0$ 的通解为],
    answer: [$(C_1 + C_2 x) e^x$],
    solution: [特征方程 $(r - 1)^2 = 0$，重根 $r = 1$，通解 $(C_1 + C_2 x) e^x$。],
  ),
  (
    kind: "blank",
    stem: [
      已知 $y = e^x$ 与 $y = e^(2x)$ 是某二阶常系数齐次线性微分方程的两个解，
      则该微分方程为
    ],
    answer: [$y'' - 3 y' + 2 y = 0$],
    solution: [特征根 $1$、$2$，特征方程 $(r-1)(r-2) = 0$，即 $y'' - 3 y' + 2 y = 0$。],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [求下列微分方程的通解：],
    parts: (
      [$y'' + y' - 2 y = 0$；],
      [$y'' - 4 y' + 5 y = 0$。],
    ),
    solution-parts: (
      [特征根 $λ = 1, -2$，通解 $y = C_1 e^x + C_2 e^(-2x)$。],
      [特征根 $λ = 2 plus.minus i$，通解 $y = e^(2x)(C_1 cos x + C_2 sin x)$。],
    ),
  ),
  (
    kind: "compute",
    stem: [求下列微分方程满足所给初值条件的特解：],
    parts: (
      [$y'' - 3 y' - 4 y = 0$，$y|_(x=0) = 0$，$y'|_(x=0) = -5$；],
      [$y'' - 4 y' + 13 y = 0$，$y|_(x=0) = 0$，$y'|_(x=0) = 3$。],
    ),
    solution-parts: (
      [
        通解 $y = C_1 e^(4x) + C_2 e^(-x)$，代入初值得 $C_1 = -1$，$C_2 = 1$，
        特解 $y = -e^(4x) + e^(-x)$。
      ],
      [
        通解 $y = e^(2x)(C_1 cos 3x + C_2 sin 3x)$，初值得 $C_1 = 0$，$C_2 = 1$，
        特解 $y = e^(2x) sin 3x$。
      ],
    ),
  ),

  // ===== 四、应用题 =====
  (
    kind: "short",
    stem: [
      设圆柱形浮筒的底面直径为 $0.5$ m，将它铅直地放在水中，
      当稍向下压后突然放开，浮筒在水中上下振动的周期为 $2$ s，求浮筒的质量。
    ],
    solution: [
      小振动方程 $m y'' + rho g A y = 0$，$A = pi (0.25)^2$。
      周期 $T = 2 pi sqrt(m/(rho g A)) = 2$，得
      $m = rho g A / pi^2 approx 1.95 times 10^2$ kg（取 $rho = 1000$，$g = 9.8$）。
    ],
  ),

  // ===== 五、证明题 =====
  (
    kind: "proof",
    stem: [
      验证：$y = C_1 x^2 + C_2 x^2 ln x$（$C_1, C_2$ 是任意常数）
      是微分方程 $x^2 y'' - 3 x y' + 4 y = 0$ 的通解。
    ],
    solution: [
      设 $y = x^2 (C_1 + C_2 ln x)$，计算 $y'$、$y''$ 代入方程，
      含 $C_1, C_2$ 的项恒等为零，且含两个任意常数，故为通解。
    ],
  ),
  (
    kind: "proof",
    stem: [
      验证：$y = 1/x (C_1 e^x + C_2 e^(-x)) + e^x/2$（$C_1, C_2$ 是任意常数）
      是微分方程 $x y'' + 2 y' - x y = e^x$ 的通解。
    ],
    solution: [
      将 $y$ 及其导数代入 $x y'' + 2 y' - x y$，含 $C_1, C_2$ 的项抵消，剩余 $e^x$，
      且含两个任意常数，故为通解。
    ],
  ),
)

#book-section(section-title, problems)
