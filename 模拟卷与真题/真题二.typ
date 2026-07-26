// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [高等数学(上册)期末测试真题(二)]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    kind-title: [一、选择题（每小题3分，共30分）],
    stem: [若 $lim_(x->oo)(a x^3 + b x^2 + 2)/(x^2 + 2) = 1$（$a,b$ 为常数），则],
    options: (
      [$a = 0$，$b in RR$],
      [$a = 0$，$b = 1$],
      [$a in RR$，$b = 1$],
      [$a in RR$，$b in RR$],
    ),
    answer: [B],
    solution: [
      须 $a=0$，否则极限为 $oo$；此时极限为 $b$，故 $b=1$。
    ],
  ),
  (
    kind: "choice",
    stem: [当 $x->oo$ 时，$x cos x$ 是],
    options: (
      [无穷小],
      [无穷大],
      [有界但不是无穷小],
      [无界但不是无穷大],
    ),
    answer: [D],
    solution: [
      沿 $x_n = pi/2 + 2 n pi$ 趋于 0，故非无穷大；沿 $x_n = 2 n pi$ 趋于 $oo$，故无界。
    ],
  ),
  (
    kind: "choice",
    stem: [设函数 $y = e^(2x - 1)$，则 $y^((20))(1) =$],
    options: ([$2^20 e$], [$2^20 e^(-1)$], [$2^20$], [e]),
    answer: [A],
    solution: [$y^((n)) = 2^n e^(2x-1)$，故 $y^((20))(1) = 2^20 e$。],
  ),
  (
    kind: "choice",
    stem: [当 $x->0$ 时，是 $x - sin x$ 的同阶无穷小的是],
    options: (
      [$x + tan x$],
      [$x tan x$],
      [$x^2 + tan x$],
      [$x^2 tan x$],
    ),
    answer: [D],
    solution: [
      $x - sin x tilde x^3/6$，$x^2 tan x tilde x^3$，同为 3 阶。
    ],
  ),
  (
    kind: "choice",
    stem: [$x = 1$ 是函数 $f(x) = (ln x)/|x - 1|$ 的],
    options: ([可去间断点], [跳跃间断点], [无穷间断点], [振荡间断点]),
    answer: [B],
    solution: [
      右极限 $1$，左极限 $-1$，为跳跃间断点。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $y = f(x)$ 具有二阶导数，且 $f'(x) > 0$，$f''(x) < 0$，
      $Delta x$ 为自变量在点 $x_0$ 处的增量，$Delta y$ 与 $dif y$ 分别为 $f(x)$ 在点 $x_0$ 处对应的增量与微分。
      若 $Delta x > 0$，则
    ],
    options: (
      [$0 < dif y < Delta y$],
      [$0 < Delta y < dif y$],
      [$Delta y < dif y < 0$],
      [$dif y < Delta y < 0$],
    ),
    answer: [B],
    solution: [
      $dif y = f'(x_0) Delta x > 0$；由 $f''<0$ 有 $Delta y - dif y = (f''(xi)/2)(Delta x)^2 < 0$，
      又 $f'>0$ 得 $Delta y > 0$，故 $0 < Delta y < dif y$。
    ],
  ),
  (
    kind: "choice",
    stem: [设函数 $f(x)$ 的一个原函数为 $x e^(-x)$，则 $f'(x) =$],
    options: (
      [$x e^(-x)$],
      [$(1 - x) e^(-x)$],
      [$(2 + x) e^(-x)$],
      [$(-2 + x) e^(-x)$],
    ),
    answer: [D],
    solution: [
      $f = (1-x)e^(-x)$，$f' = (x-2)e^(-x) = (-2+x)e^(-x)$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $f(x)$ 在点 $x_0$ 的某邻域内可导，且
      $lim_(x -> x_0) (f'(x))/(x - x_0) = a$（$a < 0$），则
    ],
    options: (
      [$f(x_0)$ 是 $f(x)$ 的极小值],
      [$f(x_0)$ 是 $f(x)$ 的极大值],
      [在点 $x_0$ 的某邻域内 $f(x)$ 单调增加],
      [在点 $x_0$ 的某邻域内 $f(x)$ 单调减少],
    ),
    answer: [B],
    solution: [
      比值极限为负：左邻域 $f'>0$，右邻域 $f'<0$，故 $f(x_0)$ 为极大值。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $f(x)$ 连续，则
      $lim_(x -> 2) (1/(x - 2)) integral_4^(2x) f(t/2) dif t =$
    ],
    options: ([$f(2)$], [$f(1)$], [$2 f(2)$], [$2 f(1)$]),
    answer: [C],
    solution: [
      $0/0$ 型，洛必达：分子导数为 $2 f(x)$，极限 $2 f(2)$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      如果连续函数 $f(x)$ 满足关系式 $f(x) = 2 integral_0^x f(t) dif t + ln 2$，则 $f(x) =$
    ],
    options: (
      [$e^x ln 2$],
      [$e^(2x) ln 2$],
      [$e^x + ln 2$],
      [$e^(2x) + ln 2$],
    ),
    answer: [B],
    solution: [
      求导得 $f' = 2f$，$f(x) = C e^(2x)$；$f(0)=ln 2$，故 $f(x) = e^(2x) ln 2$。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    kind-title: [二、填空题（每小题3分，共18分）],
    stem: [$lim_(x->0^+)(1 + sin x)^(ln x) =$],
    answer: [$1$],
    solution: [
      取对数：$(ln x) ln(1+sin x) -> 0$（$x ln^2 x -> 0$），故原极限 $e^0 = 1$。
    ],
  ),
  (
    kind: "blank",
    stem: [若 $lim_(h->0)(f(1 - 2h) - f(1))/h = 6$，则 $f'(1) =$],
    answer: [$-3$],
    solution: [
      令 $u=-2h$，得 $-2 f'(1) = 6$，故 $f'(1)=-3$。
    ],
  ),
  (
    kind: "blank",
    stem: [$integral_(-1)^1 (x^2 + sqrt(4 - x^2) · sin x) dif x =$],
    answer: [$2/3$],
    solution: [
      $integral x^2 = 2/3$；后项为奇函数积分为 0。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设参数方程 $x = f(t) - pi$，$y = f(e^(2t) - 1)$，函数 $f$ 可导且 $f'(0) != 0$，
      则 $(dif y)/(dif x)|_(t=0) =$
    ],
    answer: [$2$],
    solution: [
      $(dif y)/(dif t)|_0 = 2 f'(0)$，$(dif x)/(dif t)|_0 = f'(0)$，比值 $2$。
    ],
  ),
  (
    kind: "blank",
    stem: [曲线 $y = -3/2 x^3 + 9/2 x^2$ 在其拐点处的切线方程是],
    answer: [$y = 9/2 x - 3/2$ 或 $9x - 2y - 3 = 0$],
    solution: [
      $y''=9(1-x)=0$ 得拐点 $(1,3)$，$y'(1)=9/2$，切线 $y=9/2 x - 3/2$。
    ],
  ),
  (
    kind: "blank",
    stem: [微分方程 $y' = 1/(x + y)$ 的通解为],
    answer: [$y - ln|x + y + 1| = C$],
    solution: [
      令 $u=x+y$，得 $u - ln|u+1| = x + C$，即 $y - ln|x+y+1| = C$。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    kind-title: [三、计算题（每小题7分，共35分）],
    stem: [求 $lim_(x -> 0^+) (tan 3x)^(1/(2 ln x))$。],
    solution: [
      取对数后洛必达，得 $ln L = 1/2$，故 $L = sqrt(e)$。
    ],
  ),
  (
    kind: "compute",
    stem: [求 $integral (1 - sqrt(3x + 2))/(1 + sqrt(3x + 2)) dif x$。],
    solution: [
      令 $u=sqrt(3x+2)$，得
      $-x - 2/3 + (4/3)u - (4/3) ln|1+u| + C$，
      即 $-x + (4/3)sqrt(3x+2) - (4/3) ln(1+sqrt(3x+2)) + C'$。
    ],
  ),
  (
    kind: "compute",
    stem: [求微分方程 $y'' - y' - 2y = (1 - 2x) e^x$ 的通解。],
    solution: [
      齐次通解 $C_1 e^(2x) + C_2 e^(-x)$；特解 $x e^x$。
      通解 $y = C_1 e^(2x) + C_2 e^(-x) + x e^x$。
    ],
  ),
  (
    kind: "compute",
    stem: [求 $integral_0^(+oo) x^2 e^(-x) dif x$。],
    solution: [
      分部积分两次得 $integral x^2 e^(-x) dif x = -e^(-x)(x^2+2x+2)$，
      反常积分值为 $2$（即 $Gamma(3)=2!$）。
    ],
  ),
  (
    kind: "compute",
    stem: [求函数 $f(x) = (2x + 3) e^(2/x)$ 的单调区间、极值以及渐近线方程。],
    solution: [
      $f'(x) = (2 e^(2/x)/x^2)(x-3)(x+1)$。
      增：$(-oo,-1)$、$(3,+oo)$；减：$(-1,0)$、$(0,3)$。
      极大 $f(-1)=e^(-2)$；极小 $f(3)=9 e^(2/3)$。
      竖直渐近线 $x=0$；当 $x->plus.minus oo$ 有斜渐近线 $y=2x+5$（$e^(2/x)=1+2/x+2/x^2+o(1/x^2)$）。
    ],
  ),

  // ===== 四、应用题 =====
  (
    kind: "short",
    kind-title: [四、应用题（10分）],
    stem: [
      设函数 $f(x)$ 在区间 $[0,1]$ 上连续，在 $(0,1)$ 内大于零，且满足 $x f'(x) = f(x) - 3x^2$，
      曲线 $y = f(x)$ 与直线 $x = 0$、$x = 1$、$y = 0$ 所围成图形 $D$ 的面积为 2。求：
    ],
    parts: (
      [函数 $f(x)$；],
      [$D$ 绕 $x$ 轴旋转一周所得旋转体的体积。],
    ),
    solution-parts: (
      [
        方程化为 $(f/x)' = -3$，得 $f(x) = -3x^2 + C_1 x$。
        由面积 $integral_0^1 f = 2$ 得 $C_1=6$，$f(x)=3x(2-x)$。
      ],
      [$V = pi integral_0^1 [3x(2-x)]^2 dif x = (24 pi)/5$。],
    ),
  ),

  // ===== 五、选答题 =====
  (
    kind: "proof",
    kind-title: [五、选答题（7分）（考生可从下面2个题中任选1个作答，多做不多得分）],
    stem: [
      已知函数 $f(x)$ 在区间 $[0,1]$ 上连续，在 $(0,1)$ 内可导，且满足 $f(0)=0$，$f(1)=1$，证明：
    ],
    parts: (
      [存在 $xi in (0,1)$，使得 $f(xi) = 1 - xi$；],
      [存在不同的 $eta_1, eta_2 in (0,1)$，使得 $f'(eta_1) f'(eta_2) = 1$。],
    ),
    solution-parts: (
      [
        令 $g(x)=f(x)+x-1$，$g(0)=-1<0$，$g(1)=1>0$，由介值定理得存在 $xi$ 使 $g(xi)=0$。
      ],
      [
        对 $h(x)=f(x)-x$ 用罗尔定理得 $eta_1$ 使 $f'(eta_1)=1$。
        再对 $F(x)=f(x)(1-x)$ 等辅助函数与拉格朗日中值定理，
        可得另一点 $eta_2$ 使 $f'(eta_1)f'(eta_2)=1$（例如由 $f(1)-f(0)=f'(c)$ 与几何关系选取）。
        更标准做法：由 (1) 的 $xi$，对 $[0,xi]$ 与 $[xi,1]$ 分别用拉格朗日中值定理，
        $f(xi)-f(0)=f'(eta_1) xi$，$f(1)-f(xi)=f'(eta_2)(1-xi)$，
        即 $1-xi = f'(eta_1) xi$，$xi = f'(eta_2)(1-xi)$，两式相乘得 $f'(eta_1)f'(eta_2)=1$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [已知 $y = f(x)$ 是由方程 $x cos y + sin x + e^y = 1$ 所确定的隐函数，求：],
    parts: (
      [$(dif y)/(dif x)$；],
      [$lim_(x->0)[(1 - f(x))/(1 + f(x))]^(1/x)$。],
    ),
    solution-parts: (
      [$(dif y)/(dif x) = -(cos y + cos x)/(e^y - x sin y)$。],
      [
        $f(0)=0$，$f'(0)=-2$。
        取对数后得 $ln L = lim (1/x) ln((1-f)/(1+f)) = 4$，故 $L = e^4$。
      ],
    ),
  ),
)

#book-section(section-title, problems)
