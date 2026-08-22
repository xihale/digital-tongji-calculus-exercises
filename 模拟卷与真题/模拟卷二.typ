// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [高等数学(上册)期末测试模拟卷(二)]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    kind-title: [一、选择题（每小题3分，共15分）],
    stem: [当 $x -> 0$ 时，下列是 $x$ 的三阶无穷小的是],
    options: (
      [$root(3, x^2) - sqrt(x)$],
      [$sqrt(a + x^3) - sqrt(a)$（$a > 0$ 为常数）],
      [$x^3 + 0.0001 x^2$],
      [$root(3, tan x)$],
    ),
    answer: [B],
    solution: [
      B：$sqrt(a+x^3)-sqrt(a) = x^3/(sqrt(a+x^3)+sqrt(a)) tilde x^3/(2 sqrt(a))$，为三阶。
      A 主项 $x^(1/2)$；C 主项 $x^2$；D 为 $x^(1/3)$ 阶。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $f(x)$ 满足 $f''(x) + [f'(x)]^2 = x$，且 $f'(0) = 0$，则下列正确的是
    ],
    options: (
      [$f(0)$ 是 $f(x)$ 的极大值],
      [$f(0)$ 是 $f(x)$ 的极小值],
      [$(0, f(0))$ 是曲线 $y = f(x)$ 的拐点],
      [$f(0)$ 不是极值，$(0,f(0))$ 也不是拐点],
    ),
    answer: [C],
    solution: [
      由方程得 $f''(x) = x - [f'(x)]^2$，故 $f''(0) = 0$；又 $f'''(x) = 1 - 2 f'(x) f''(x)$，
      $f'''(0) = 1 > 0$，$f''$ 在 $0$ 两侧由负变正，故 $(0, f(0))$ 为拐点。
      且 $f'$ 在 $0$ 处取最小值 $0$，即 $x != 0$ 时 $f' > 0$，$f$ 单调增加，$f(0)$ 不是极值。
    ],
  ),
  (
    kind: "choice",
    stem: [函数 $f(x) = sin x/(x(x - 1)(x - pi))$ 的无穷间断点的个数为],
    options: ([1], [2], [3], [4]),
    answer: [A],
    solution: [
      $x=0$、$x=pi$ 处分子亦为 0，极限有限，为可去间断点；
      $x=1$ 处分子 $sin 1 != 0$，为无穷间断点，共 1 个。
    ],
  ),
  (
    kind: "choice",
    stem: [下列不定积分的计算不正确的是],
    options: (
      [$integral (dif x)/(sqrt(4 - x^2)) = arcsin x/2 + C$],
      [$integral (dif x)/(x^2 + 2x + 2) = arctan(x + 1) + C$],
      [$integral sin^2 x dif x = 1/3 sin^3 x + C$],
      [$integral 2^x · 3^x dif x = (2^x · 3^x)/(ln 2 + ln 3) + C$],
    ),
    answer: [C],
    solution: [
      $integral sin^2 x dif x = x/2 - (sin 2x)/4 + C$，不是 $1/3 sin^3 x + C$。其余正确。
    ],
  ),
  (
    kind: "choice",
    stem: [下列方程中为一阶线性微分方程的是],
    options: (
      [$y' + x y^2 = e^x$],
      [$y y' + x y = e^x$],
      [$y' = cos y + x$],
      [$y' = x + y sin x$],
    ),
    answer: [D],
    solution: [D 可写为 $y' - y sin x = x$，符合 $y' + P(x) y = Q(x)$。],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    kind-title: [二、填空题（每小题3分，共18分）],
    stem: [
      设函数
      $f(x) = cases(
        x sin 1/x + (sin(a x))/x & x > 0,
        e^x - 2 & x <= 0,
      )$
      要使得 $f(x)$ 在点 $x = 0$ 处连续，则 $a =$
    ],
    answer: [$-1$],
    solution: [
      $f(0) = -1$，右极限 $a$（因 $x sin 1/x->0$，$(sin(a x))/x -> a$），故 $a = -1$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      曲线 $x = e^t + ln(1 + t^2)$，$y = arctan t$ 在点 $t = 0$ 处的切线方程为
    ],
    answer: [$y = x - 1$],
    solution: [
      切点 $(1,0)$，$(dif y)/(dif x)|_(t=0) = 1$，切线 $y = x - 1$。
    ],
  ),
  (
    kind: "blank",
    stem: [函数 $f(x) = 2^x$ 的带有拉格朗日余项的三阶麦克劳林公式为],
    answer: [
      $1 + x ln 2 + (x^2 (ln 2)^2)/2 + (x^3 (ln 2)^3)/6 + (2^xi (ln 2)^4 x^4)/24$
      （$xi$ 在 $0$ 与 $x$ 之间）
    ],
    solution: [
      $f^((n))(x) = 2^x (ln 2)^n$，代入麦克劳林公式即得。
    ],
  ),
  (
    kind: "blank",
    stem: [曲线 $y = ln sec x$ 在点 $(x,y)$ 处的曲率为],
    answer: [$|cos x|$],
    solution: [
      $y' = tan x$，$y'' = sec^2 x$，
      $k = (sec^2 x)/(sec^2 x)^(3/2) = |cos x|$。
    ],
  ),
  (
    kind: "blank",
    stem: [$integral_(-1)^1 (x^2 sin x + 1 - x^2)/(sqrt(1 - x^2)) dif x =$],
    answer: [$pi/2$],
    solution: [
      奇函数项积分为 0；$integral_(-1)^1 sqrt(1-x^2) dif x = pi/2$。
    ],
  ),
  (
    kind: "blank",
    stem: [微分方程 $(1 + y)^2 (dif y)/(dif x) + x^3 = 0$ 的通解为],
    answer: [$(1 + y)^3 = -3 x^4/4 + C$],
    solution: [
      $(1+y)^2 dif y = -x^3 dif x$，积分得 $(1+y)^3/3 = -x^4/4 + C_1$，即题述形式。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    kind-title: [三、计算题（12～15题每小题7分，16～17题每小题8分，共44分）],
    stem: [求 $lim_(x -> 0) ((integral_0^x e^(t^2) dif t)^2)/(integral_0^x t e^(2 t^2) dif t)$],
    solution: [
      $0/0$ 型。分母 $= 1/4 (e^(2x^2) - 1)$；分子中 $integral_0^x e^(t^2) dif t ~ x$。
      或洛必达两次，极限为 $2$。
    ],
  ),
  (
    kind: "compute",
    stem: [已知函数 $y = f(x)$ 由方程 $e^y + x y - 2x - 1 = 0$ 所确定，求 $y''(0)$],
    solution: [
      $x=0$ 时 $y=0$。求导得 $e^y y' + y + x y' - 2 = 0$，$y'(0)=2$。
      再求导并代入，得 $y''(0) = -8$。
    ],
  ),
  (
    kind: "compute",
    stem: [求 $integral e^(sqrt(x)) dif x$],
    solution: [
      令 $t = sqrt(x)$，$dif x = 2 t dif t$，$integral 2 t e^t dif t = 2 e^t (t - 1) + C = 2 e^(sqrt(x))(sqrt(x) - 1) + C$。
    ],
  ),
  (
    kind: "compute",
    stem: [求 $integral_(-pi/4)^(pi/2) sqrt(cos x - cos^3 x) dif x$],
    solution: [
      $sqrt(cos x - cos^3 x) = sqrt(cos x) #h(0.15em) |sin x|$（区间上 $cos x >= 0$）。
      令 $u = cos x$，$dif u = -sin x dif x$：
      $[0, pi/2]$ 上得 $2/3$；$[-pi/4, 0]$ 上得 $2/3 [1 - (sqrt(2)/2)^(3/2)]$。
      合计 $2/3 [2 - 2^(-3/4)]$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $f(x) = cases(1/(1 + x^2) & x <= 0, ln x & x > 0)$，求 $integral_(-1)^1 x f(x) dif x$
    ],
    solution: [
      $integral_(-1)^0 x/(1+x^2) dif x + integral_0^1 x ln x dif x = -1/2 ln 2 + (-1/4) = -1/2 ln 2 - 1/4$。
    ],
  ),
  (
    kind: "compute",
    stem: [求曲线 $y = (x - 1) root(3, x^2)$ 的凹凸区间及拐点],
    solution: [
      $y = x^(5/3) - x^(2/3)$，$y'' = (2/9) x^(-4/3)(5x + 1)$（$x != 0$）。
      $y''=0$ 于 $x=-1/5$；$x=0$ 处 $y''$ 不存在，需单独讨论。
      凸区间 $(-oo,-1/5)$，凹区间 $(-1/5,0)$ 与 $(0,+oo)$；
      拐点 $(-1/5, -6/5^(5/3))$（$x=0$ 两侧同为凹弧，不是拐点）。
    ],
  ),

  // ===== 四、应用题 =====
  (
    kind: "short",
    kind-title: [四、应用题（每小题9分，共18分）],
    stem: [
      要造一个长方体无盖蓄水池，其容积为 $500$ m³，底面为正方形。
      设底面与四壁所使用材料的单位造价相同，问：底边和高分别为多少时，才能使所用材料费最省？
    ],
    solution: [
      设底边 $a$、高 $h$，$a^2 h = 500$，$S = a^2 + 4 a h = a^2 + 2000/a$。
      $S' = 0$ 得 $a = 10$ m，$h = 5$ m。
    ],
  ),
  (
    kind: "short",
    stem: [
      求由曲线 $y = x^(3/2)$、直线 $x = 4$ 及 $x$ 轴所围成图形的面积，
      并求此图形绕 $x$ 轴旋转一周所得旋转体的体积
    ],
    solution-parts: (
      [面积 $S = integral_0^4 x^(3/2) dif x = 64/5$。],
      [体积 $V = pi integral_0^4 x^3 dif x = 64 pi$。],
    ),
  ),

  // ===== 五、证明题 =====
  (
    kind: "proof",
    kind-title: [五、证明题（5分）],
    stem: [
      设函数 $f(x)$ 在区间 $[0,1]$ 上连续，在 $(0,1)$ 内可导，且 $integral_0^1 f(x) dif x = 0$，
      证明：必存在 $xi in (0,1)$，使得 $2 f(xi) = - xi f'(xi)$
    ],
    solution: [
      令 $F(x) = integral_0^x f(t) dif t$，则 $F(0)=F(1)=0$。由罗尔定理，存在 $eta in (0,1)$ 使 $f(eta)=0$。
      再令 $G(x) = x^2 f(x)$，则 $G(0)=G(eta)=0$。对 $G$ 在 $[0,eta]$ 上用罗尔定理，
      存在 $xi in (0,eta) subset (0,1)$ 使 $G'(xi)=0$，即 $2 xi f(xi) + xi^2 f'(xi)=0$，
      从而 $2 f(xi) = - xi f'(xi)$。
    ],
  ),
)

#book-section(section-title, problems)
