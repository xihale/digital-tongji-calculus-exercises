// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第三节 齐次方程]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [微分方程 $(dif y)/(dif x) = y/x + tan(y/x)$ 的通解为],
    options: (
      [$sin(y/x) = C x$],
      [$sin(y/x) = 1/(C x)$],
      [$sin(x/y) = C x$],
      [$sin(x/y) = 1/(C x)$],
    ),
    answer: [A],
    solution: [
      令 $v = y/x$，则 $(dif y)/(dif x) = v + x (dif v)/(dif x)$。
      代回得 $x (dif v)/(dif x) = tan v$，分离变量积分得 $ln|sin v| = ln|x| + C$，
      即 $sin(y/x) = C_1 x$。
    ],
  ),

  // ===== 二、计算题 =====
  (
    kind: "compute",
    stem: [求下列齐次方程的通解：],
    parts: (
      [$x (dif y)/(dif x) = y ln(y/x)$；],
      [$(x^3 + y^3) dif x - 3 x y^2 dif y = 0$。],
    ),
    solution-parts: (
      [
        设 $v = y/x$，方程化为 $(dif v)/(v(ln v - 1)) = (dif x)/x$。
        令 $u = ln v - 1$，积分得 $ln|ln(y/x) - 1| = ln|x| + C$，
        可写为 $ln(y/x) = C_1 x + 1$。
      ],
      [
        令 $v = y/x$，分离变量得 $3 v^2/(1 - 2 v^3) dif v = (dif x)/x$，
        积分得 $ln|1 - 2 v^3| = -2 ln|x| + C$，
        整理为 $x^3 - 2 y^3 = C_2 x$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [求下列齐次方程满足所给初值条件的特解：],
    parts: (
      [$(y^2 - 3 x^2) dif y + 2 x y dif x = 0$，$y|_(x=0) = 1$；],
      [$(x^2 + 2 x y - y^2) dif x + (y^2 + 2 x y - x^2) dif y = 0$，$y|_(x=1) = 1$。],
    ),
    solution-parts: (
      [
        令 $v = y/x$，分离变量后得 $y^3 = C_1 (y^2 - x^2)$。
        代入初值 $(0,1)$ 得 $C_1 = 1$，故 $y^3 = y^2 - x^2$。
      ],
      [
        令 $v = y/x$，积分后有 $x^2 + y^2 = C_1 (x + y)$。
        由初值 $(1,1)$ 得 $C_1 = 1$，故 $x^2 + y^2 = x + y$。
      ],
    ),
  ),
)

#book-section(section-title, problems)
