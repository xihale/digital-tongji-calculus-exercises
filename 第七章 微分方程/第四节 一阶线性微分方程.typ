// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第四节 一阶线性微分方程]

#let problems = (
  // ===== 一、判断题 =====
  (
    kind: "judge",
    stem: [$y' = sin y$ 是一阶线性微分方程],
    answer: [×],
    solution: [
      一阶线性方程需具备形式 $y' + P(x) y = Q(x)$，此处右侧为 $y$ 的非线性函数 $sin y$，故错误。
    ],
  ),
  (
    kind: "judge",
    stem: [$y' = x^3 y^3 + x y$ 不是一阶线性微分方程],
    answer: [√],
    solution: [方程含有 $y^3$ 项，无法写成 $y' + P(x) y = Q(x)$，判断正确。],
  ),

  // ===== 二、选择题 =====
  (
    kind: "choice",
    stem: [以下是一阶线性微分方程的是],
    options: (
      [$y' = sec y$],
      [$y y' = 1$],
      [$x^2 y'' + 3 x y' + y = 0$],
      [$(dif y)/(dif x) = -(x^2 + x^3 + y)/(1 + x)$],
    ),
    answer: [D],
    solution: [
      D 可化为 $y' + (1/(1+x)) y = -(x^2 + x^3)/(1+x)$，符合线性形式；其余不是一阶线性方程。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [求下列微分方程的通解：],
    parts: (
      [$x y' + y = x^2 + 3x + 2$；],
      [$(y^2 - 6x) (dif y)/(dif x) + 2y = 0$。],
    ),
    solution-parts: (
      [
        化为 $y' + (1/x) y = x + 3 + 2/x$，积分因子为 $x$。
        $(x y)' = x^2 + 3x + 2$，得 $y = (1/3) x^2 + (3/2) x + 2 + C/x$。
      ],
      [
        视作 $x$ 关于 $y$ 的方程：$(dif x)/(dif y) - (3/y) x = -y/2$。
        积分因子 $y^(-3)$，得 $x = (1/2) y^2 + C y^3$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [求下列微分方程满足所给初值条件的特解：],
    parts: (
      [$(dif y)/(dif x) + y/x = (sin x)/x$，$y|_(x=pi) = 1$；],
      [$(dif y)/(dif x) + 3y = 8$，$y|_(x=0) = 2$。],
    ),
    solution-parts: (
      [
        积分因子为 $x$，$(x y)' = sin x$，得 $x y = -cos x + C$。
        代入 $x = pi$、$y = 1$ 得 $C = pi - 1$，特解 $y = (-cos x + pi - 1)/x$。
      ],
      [
        积分因子 $e^(3x)$，得 $y = 8/3 - (2/3) e^(-3x)$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [求一曲线方程，该曲线通过坐标原点，且它在点 $(x, y)$ 处的切线的斜率等于 $2x + y$],
    solution: [
      方程 $y' - y = 2x$，积分因子 $e^(-x)$。
      积分并代入过原点条件得 $y = -2x - 2 + 2 e^x$。
    ],
  ),
  (
    kind: "compute",
    stem: [用适当的变量代换将下列微分方程化为可分离变量的微分方程，然后求其通解：],
    parts: (
      [$x y' + y = y(ln x + ln y)$；],
      [$y(x y + 1) dif x + x(1 + x y + x^2 y^2) dif y = 0$。],
    ),
    solution-parts: (
      [
        设 $y > 0$，左端 $x y' + y = (x y)'$，右端为 $y ln(x y)$。
        令 $u = x y$，得 $(dif u)/(u ln u) = (dif x)/x$，积分得 $ln|ln u| = ln|x| + C$，
        即 $ln(x y) = C_1 x$，故 $y = e^(C_1 x)/x$。
      ],
      [
        令 $u = x y$，分离变量并积分得 $ln|y| - 1/(x y) - 1/(2 x^2 y^2) = C$。
      ],
    ),
  ),
)

#book-section(section-title, problems)
