// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第三节 高阶导数]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [若函数 $f(x) = sin(x/2) + cos 2 x$，则 $f^((27))(pi) =$],
    options: (
      [$0$],
      [$-1/2^27$],
      [$2^27 - 1/2^27$],
      [$2^27$],
    ),
    answer: [A],
    solution: [
      $f^((n))(x) = (1/2)^n sin(x/2 + n pi/2) + 2^n cos(2 x + n pi/2)$。
      当 $n = 27$ 时，$27 pi/2 equiv 3 pi/2 space (mod 2 pi)$，
      $f^((27))(x) = -(1/2)^27 cos(x/2) + 2^27 sin 2 x$。
      代入 $x = pi$ 得 $f^((27))(pi) = 0$。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [设函数 $y = (1 + x^2) arctan x$，则 $y'' =$],
    answer: [$2 arctan x + 2 x/(1 + x^2)$],
    solution: [
      $y' = 2 x arctan x + 1$，$y'' = 2 arctan x + 2 x/(1 + x^2)$。
    ],
  ),
  (
    kind: "blank",
    stem: [若 $f''(x)$ 存在，函数 $y = ln f(x)$，则 $(dif^2 y)/(dif x^2) =$],
    answer: [$f''(x)/f(x) - (f'(x))^2/(f(x))^2$],
    solution: [
      $(dif y)/(dif x) = f'(x)/f(x)$，
      再导得 $(dif^2 y)/(dif x^2) = f''(x)/f(x) - (f'(x))^2/(f(x))^2$。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [求下列函数的二阶导数：],
    parts: (
      [$y = e^(-t) sin t$；],
      [$y = ln(x + sqrt(1 + x^2))$。],
    ),
    solution-parts: (
      [
        $y' = e^(-t)(cos t - sin t)$，
        $y'' = -2 e^(-t) cos t$。
      ],
      [
        $y' = 1/sqrt(1 + x^2)$，
        $y'' = -x/(1 + x^2)^(3/2)$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [设 $f''(x)$ 存在，求函数 $y = f(x^2)$ 的二阶导数 $(dif^2 y)/(dif x^2)$。],
    solution: [
      $y' = 2 x f'(x^2)$，
      $y'' = 4 x^2 f''(x^2) + 2 f'(x^2)$。
    ],
  ),
  (
    kind: "compute",
    stem: [求下列函数所指定阶的导数：],
    parts: (
      [$y = e^x cos x$，求 $y^((4))$；],
      [$y = x^2 sin 2 x$，求 $y^((50))$。],
    ),
    solution-parts: (
      [
        $y' = e^x (cos x - sin x)$，$y'' = -2 e^x sin x$，
        $y''' = -2 e^x (sin x + cos x)$，$y^((4)) = -4 e^x cos x$。
      ],
      [
        由莱布尼茨公式，仅 $k = 0, 1, 2$ 项非零：
        $y^((50)) = 2^50 sin(2 x + 25 pi) + 50 · 2 x · 2^49 sin(2 x + 49 pi/2)
        + C(50, 2) · 2 · 2^48 sin(2 x + 24 pi)$
        $= -2^50 sin 2 x - 100 x · 2^49 cos 2 x + 1225 · 2^48 sin 2 x$。
      ],
    ),
  ),

  // ===== 四、证明题 =====
  (
    kind: "proof",
    stem: [试从 $(dif x)/(dif y) = 1/y'$ 导出：],
    parts: (
      [$(dif^2 x)/(dif y^2) = -y''/(y')^3$；],
      [$(dif^3 x)/(dif y^3) = (3 (y'')^2 - y' y''')/(y')^5$。],
    ),
    solution-parts: (
      [
        由 $(dif x)/(dif y) = 1/y'$，两边对 $y$ 求导：
        $(dif^2 x)/(dif y^2) = dif/(dif y)(1/y') = -y''/(y')^2 · (dif x)/(dif y)
        = -y''/(y')^3$。
      ],
      [
        对 $(dif^2 x)/(dif y^2) = -y''/(y')^3$ 再对 $y$ 求导，
        商求导后乘以 $(dif x)/(dif y) = 1/y'$，化简得
        $(dif^3 x)/(dif y^3) = (3 (y'')^2 - y' y''')/(y')^5$。
      ],
    ),
  ),
)

#book-section(section-title, problems)
