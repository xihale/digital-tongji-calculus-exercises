// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第七节 无穷小的比较]

#let problems = (
  // ===== 一、填空题 =====
  (
    kind: "blank",
    stem: [当 $x -> 0$ 时，$2x - x^2$ 是 $x^2 - x^3$ 的],
    answer: [低阶无穷小],
    solution: [
      $2x - x^2 ~ 2x$，$x^2 - x^3 ~ x^2$，
      $lim_(x -> 0) (2x)/(x^2) = oo$，
      故 $2x - x^2$ 是 $x^2 - x^3$ 的低阶无穷小。
    ],
  ),
  (
    kind: "blank",
    stem: [设 $lim_(x -> 1) (x^2 + a x + b)/(1 - x) = 5$，则 $a$，$b$ 依次为],
    answers: (
      [$-7$],
      [$6$],
    ),
    solution: [
      极限有限则分子在 $x = 1$ 处为 $0$：$1 + a + b = 0$。
      洛必达（或因式分解）得 $lim = -(2 + a) = 5$，故 $a = -7$，$b = 6$。
    ],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [利用等价无穷小的性质，求下列极限：],
    parts: (
      [$lim_(x -> 0) (tan x - sin x)/(sin^3 x)$；],
      [
        $lim_(x -> 0) (sin x - tan x)/((root(3, 1 + x^2) - 1)(sqrt(1 + sin x) - 1))$。
      ],
    ),
    solution-parts: (
      [
        $tan x - sin x = sin x (1 - cos x)/cos x$，
        故原式 $= lim_(x -> 0) (1 - cos x)/(cos x sin^2 x)$。
        用 $1 - cos x ~ x^2/2$，$sin x ~ x$，$cos x -> 1$，得 $1/2$。
      ],
      [
        $sin x - tan x ~ -x^3/2$，
        $root(3, 1 + x^2) - 1 ~ x^2/3$，
        $sqrt(1 + sin x) - 1 ~ x/2$，
        故原式 $= lim (-x^3/2)/((x^2/3)(x/2)) = -3$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [
      设 $lim_(x -> -1) (x^3 - a x^2 - x + 4)/(x + 1) = l$（$l != oo$），
      试求 $a$ 和 $l$ 的值。
    ],
    answer: [$a = 4$，$l = 10$],
    solution: [
      分子在 $x = -1$ 处为 $0$：$-1 - a + 1 + 4 = 0$，得 $a = 4$。
      洛必达得 $l = 3(-1)^2 - 2(4)(-1) - 1 = 10$。
    ],
  ),

  // ===== 三、证明题 =====
  (
    kind: "proof",
    stem: [证明：当 $x -> 0$ 时，有 $sec x - 1 ~ x^2/2$。],
    solution: [
      $lim_(x -> 0) (sec x - 1)/(x^2/2)
      = lim_(x -> 0) (1 - cos x)/(cos x dot x^2/2)$。
      用 $1 - cos x ~ x^2/2$，$cos x -> 1$，得极限为 $1$，
      故 $sec x - 1 ~ x^2/2$。
    ],
  ),
)

#book-section(section-title, problems)
