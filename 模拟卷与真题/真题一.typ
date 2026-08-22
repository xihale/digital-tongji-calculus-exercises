// 数据层：只放内容。公式一律行内。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section
#import "../lib/figures.typ": fig-parabola-region, fig-arched-curve

#let section-title = [高等数学(上册)期末测试真题(一)]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    kind-title: [一、选择题（每小题3分，共30分）],
    stem: [若 $lim_(x->oo)(1 + k/(2x))^x = e^3$，则 $k =$],
    options: ([$2/3$], [6], [$3/2$], [不存在]),
    answer: [B],
    solution: [
      $lim_(x->oo)(1 + k/(2x))^x = e^(k/2) = e^3$，故 $k = 6$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      当 $x->0$ 时，$sin x + x^2 cos 1/x$ 是 $(1 + cos x) ln(1 + x)$ 的
    ],
    options: (
      [高阶无穷小],
      [等价无穷小],
      [同阶无穷小，但不是等价无穷小],
      [低阶无穷小],
    ),
    answer: [C],
    solution: [
      分子 $tilde x$，分母 $tilde 2x$，比值极限 $1/2 != 0,1$，故同阶不等价。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设函数
      $f(x) = cases(
        2/pi arctan 1/x & x < 0,
        (1 + x)^x & x >= 0,
      )$，
      则 $x = 0$ 是 $f(x)$ 的
    ],
    options: ([跳跃间断点], [可去间断点], [连续点], [第二类间断点]),
    answer: [A],
    solution: [
      左极限 $-1$，右极限 $1$，$f(0)=1$，左右极限有限不等，为跳跃间断点。
    ],
  ),
  (
    kind: "choice",
    stem: [方程 $x^4 - 4x = 1$ 在区间 $(0,1)$ 内],
    options: ([无实根], [有唯一实根], [有两个实根], [有三个实根]),
    answer: [A],
    solution: [
      令 $f(x)=x^4-4x-1$，$f(0)=-1$，$f(1)=-4$，$f'(x)=4(x^3-1)<0$ 于 $(0,1)$，
      严格递减且恒负，无实根。
    ],
  ),
  (
    kind: "choice",
    stem: [设 $f'(x) = g(x)$，则 $(dif)/(dif x) f(sin^2 x) =$],
    options: (
      [$2 g(x) sin x$],
      [$g(x) sin 2x$],
      [$g(sin^2 x)$],
      [$g(sin^2 x) sin 2x$],
    ),
    answer: [D],
    solution: [链式法则：$(dif)/(dif x) f(sin^2 x) = g(sin^2 x) · sin 2x$。],
  ),
  (
    kind: "choice",
    stem: [
      设函数 $f(x)$ 具有二阶连续导数，且 $f'(0) = 0$，$lim_(x -> 0) (f''(x))/(cos x) = 1$，则
    ],
    options: (
      [$f(0)$ 是 $f(x)$ 的极大值],
      [$f(0)$ 是 $f(x)$ 的极小值],
      [$(0, f(0))$ 是曲线 $y = f(x)$ 的拐点],
      [$f(0)$ 不是极值，$(0,f(0))$ 也不是拐点],
    ),
    answer: [B],
    solution: [
      $lim f''(x) = 1$，故 $f''(0)=1>0$，又 $f'(0)=0$，由二阶导数判别法知 $f(0)$ 为极小值。
    ],
  ),
  (
    // 看图定符号，仍属选择题编号流；不用 short，避免中途换 kind 拆开「一、选择题」
    kind: "choice",
    stem: [
      设函数 $f(x)$ 具有三阶连续导数，其部分图形如图 1 所示，试确定下列定积分的符号：
    ],
    figure: fig-arched-curve(),
    figure-caption: [图1],
    parts: (
      [$integral_(-3)^2 f(x) dif x$；],
      [$integral_(-3)^2 f'(x) dif x$；],
      [$integral_(-3)^2 f''(x) dif x$；],
      [$integral_(-3)^2 f'''(x) dif x$。],
    ),
    solution-parts: (
      [在 $[-3, 2]$ 上曲线均在 $x$ 轴上方（端点为零），故积分 $> 0$。],
      [$integral_(-3)^2 f' = f(2) - f(-3) = 0 - 0 = 0$。],
      [
        $integral_(-3)^2 f'' = f'(2) - f'(-3)$。
        图中 $x = -3$ 处斜率为正，$x = 2$ 处斜率为负，故结果 $< 0$。
      ],
      [
        $integral_(-3)^2 f''' = f''(2) - f''(-3)$。
        图中 $x = -3$ 附近曲线较平直、略下凸（$f''(-3) > 0$ 但很小），
        $x = 2$ 附近曲线明显下凸（$f''(2) > f''(-3)$），故积分 $> 0$。
      ],
    ),
  ),
  (
    kind: "choice",
    stem: [
      设线性无关的函数 $y_1, y_2, y_3$ 都是二阶非齐次微分方程
      $y'' + p(x) y' + q(x) y = f(x)$ 的特解，$C_1, C_2$ 是任意常数，
      则该非齐次微分方程的通解是
    ],
    options: (
      [$C_1 y_1 + C_2 y_2 + y_3$],
      [$C_1 y_1 + C_2 y_2 - (C_1 + C_2) y_3$],
      [$C_1 y_1 + C_2 y_2 - (1 - C_1 - C_2) y_3$],
      [$C_1 y_1 + C_2 y_2 + (1 - C_1 - C_2) y_3$],
    ),
    answer: [D],
    solution: [
      通解 $=$ 特解 $+$ 齐次通解。$y_1-y_3$、$y_2-y_3$ 为齐次解，
      整理得 $C_1 y_1 + C_2 y_2 + (1 - C_1 - C_2) y_3$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      由曲线 $y = ln x$ 与直线 $y = ln a$、$y = ln b$（$b > a > 0$）及 $y$ 轴
      所围成图形的面积为
    ],
    options: ([$1/b - 1/a$], [$1/a - 1/b$], [$b - a$], [$a - b$]),
    answer: [C],
    solution: [
      对 $y$ 积分：$S = integral_(ln a)^(ln b) e^y dif y = b - a$。
    ],
  ),
  (
    kind: "choice",
    stem: [下列反常积分收敛的是],
    options: (
      [$integral_(-oo)^(+oo) cos x dif x$],
      [$integral_0^(+oo) e^(-2x) dif x$],
      [$integral_(-1)^1 (dif x)/(x^2)$],
      [$integral_1^3 (dif x)/(ln x)$],
    ),
    answer: [B],
    solution: [
      B 收敛于 $1/2$；A 极限不存在；C、D 为发散瑕积分。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    kind-title: [二、填空题（每小题3分，共18分）],
    stem: [
      已知 $lim_(x -> 1) f(x)$ 存在，且 $f(x) = x^2 + 2x lim_(x -> 1) f(x)$，
      则 $lim_(x -> 1) f(x) =$
    ],
    answer: [$-1$],
    solution: [设极限为 $L$，则 $L = 1 + 2L$，得 $L = -1$。],
  ),
  (
    kind: "blank",
    stem: [
      曲线 $x = ln(1 + t^2)$，$y = t - arctan t - 2$ 在点 $t = 2$ 处的切线方程为 $y =$
    ],
    answer: [$-arctan 2 + x - ln 5$],
    solution: [
      点 $(ln 5, -arctan 2)$，斜率 $(dif y)/(dif x)=1$，故 $y = -arctan 2 + x - ln 5$。
    ],
  ),
  (
    kind: "blank",
    stem: [设函数 $f(x) = k tan 2x$ 的一个原函数为 $-ln cos 2x$，则 $k =$],
    answer: [$2$],
    solution: [$(-ln cos 2x)' = 2 tan 2x$，故 $k = 2$。],
  ),
  (
    kind: "blank",
    stem: [$integral_(-oo)^(+oo) (dif x)/(x^2 + 2x + 2) =$],
    answer: [$pi$],
    solution: [
      $x^2+2x+2=(x+1)^2+1$，积分 $arctan(x+1)$ 从 $-oo$ 到 $+oo$ 为 $pi$。
    ],
  ),
  (
    kind: "blank",
    stem: [$integral_(-1)^1 (2x^2 + x sin^2 x)/(1 + sqrt(1 - x^2)) dif x =$],
    answer: [$4 - pi$],
    solution: [
      奇部 $x sin^2 x \/ (1 + sqrt(1 - x^2))$ 积分为 0；
      偶部 $(2x^2)/(1 + sqrt(1 - x^2)) = 2(1 - sqrt(1 - x^2))$，
      故原式 $= integral_(-1)^1 2(1 - sqrt(1 - x^2)) dif x = 4 - pi$。
    ],
  ),
  (
    kind: "blank",
    stem: [曲线 $y = x^4 (12 ln x - 7)$ 的拐点为],
    answer: [$(1, -7)$],
    solution: [
      $y'' = 144 x^2 ln x = 0$ 得 $x=1$（$x>0$），且变号，拐点 $(1,-7)$。
    ],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    kind-title: [三、计算题（每小题7分，共35分）],
    stem: [已知连续函数 $f(x) = integral_0^(3x) f(t/3) dif t + e^(2x)$，求 $f(x)$],
    solution: [
      求导得 $f'(x) = 3 f(x) + 2 e^(2x)$，即 $f' - 3f = 2 e^(2x)$。
      积分因子 $e^(-3x)$，得 $f(x) = 3 e^(3x) - 2 e^(2x)$（由 $f(0)=1$ 定常数）。
    ],
  ),
  (
    kind: "compute",
    stem: [
      已知 $f(pi) = 1$，函数 $f(x)$ 二阶连续可微，且
      $integral_0^pi [f(x) + f''(x)] sin x dif x = 3$，求 $f(0)$
    ],
    solution: [
      因 $(dif)/(dif x)(f' sin x - f cos x) = (f''+f)sin x$，
      故 $[f' sin - f cos]_0^pi = f(pi) + f(0) = 3$，得 $f(0) = 2$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      求微分方程 $y'' - y' = 4x e^x$ 满足初值条件
      $y|_(x=0) = 0$，$y'|_(x=0) = 1$ 的特解
    ],
    solution: [
      齐次通解 $C_1 + C_2 e^x$；特解 $(2x^2 - 4x)e^x$。
      通解 $y = C_1 + C_2 e^x + (2x^2-4x)e^x$，初值得
      $y = -5 + (2x^2 - 4x + 5)e^x$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设函数 $y = y(x)$ 由方程 $x^4 - x y - y e^x = 1$ 所确定，
      求 $(dif^2 y)/(dif x^2)|_(x=0)$
    ],
    solution: [
      $x=0$ 时 $y=-1$。隐函数求导：
      $y' = (4x^3 - y(1+e^x))/(x+e^x)$，$y'(0)=2$。
      再对 $y'$ 求导并代入 $x=0$、$y=-1$、$y'=2$，得 $y''(0) = -7$。
    ],
  ),
  (
    kind: "compute",
    stem: [求 $integral_(sqrt(2)/2)^1 (sqrt(1 - x^2))/(x^2) dif x$],
    solution: [
      三角代换得原函数 $-sqrt(1-x^2)/x - arcsin x$，
      定积分值为 $1 - pi/4$。
    ],
  ),

  // ===== 四、应用题 =====
  (
    kind: "short",
    kind-title: [四、应用题（10分）],
    stem: [
      如图 2 所示，由抛物线 $y = 2x^2$ 与直线 $x = a$、$x = 2$ 及 $y = 0$ 所围成的平面图形为 $D_1$，
      由抛物线 $y = 2x^2$ 与直线 $x = a$ 及 $y = 0$ 所围成的平面图形为 $D_2$，其中 $0 < a < 2$
    ],
    figure: fig-parabola-region(),
    figure-caption: [图2],
    parts: (
      [试求 $D_1$ 绕 $x$ 轴旋转一周所得旋转体的体积 $V_1$；],
      [试求 $D_2$ 绕 $y$ 轴旋转一周所得旋转体的体积 $V_2$；],
      [问：当 $a$ 为何值时，$V = V_1 + V_2$ 取得最大值？并求出该最大值。],
    ),
    solution-parts: (
      [$V_1 = pi integral_a^2 (2x^2)^2 dif x = (4pi)/5 (32 - a^5)$。],
      [壳层法 $V_2 = 2pi integral_0^a x · 2x^2 dif x = pi a^4$。],
      [
        $V = pi(128/5 + a^4 - 4a^5/5)$，$dif V/(dif a) = 4pi a^3(1-a)=0$ 得 $a=1$，
        $V_max = (129 pi)/5$。
      ],
    ),
  ),

  // ===== 五、选答题 =====
  (
    kind: "proof",
    kind-title: [五、选答题（7分）（考生可从下面2个题中任选1个作答，多做不多得分）],
    stem: [
      设函数 $f(x)$ 在区间 $[a, b]$ 上连续，在 $(a, b)$ 内可导，又 $f'(x) > 0$，
      且极限 $lim_(x -> a^+) (f(2x - a))/(x - a)$ 存在，证明：在 $(a, b)$ 内存在一点 $xi$，使得
      $(b^2 - a^2)/(integral_a^b f(x) dif x) = (2 xi)/f(xi)$
    ],
    solution: [
      极限 $lim_(x -> a^+) f(2x-a)/(x-a)$ 存在：令 $t=2x-a$，则
      $lim_(t -> a^+) 2 f(t)/(t-a)$ 有限，又 $f$ 在 $a$ 连续，故必有 $f(a)=0$。
      由 $f'>0$ 知 $f$ 在 $(a,b]$ 上 $f>0$，从而 $integral_a^b f > 0$。
      令 $F(x)=x^2$，$G(x)=integral_a^x f(t) dif t$，对 $[a,b]$ 用柯西中值定理：
      存在 $xi in (a,b)$ 使 $(F(b)-F(a))/(G(b)-G(a)) = F'(xi)/G'(xi)$，
      即 $(b^2-a^2)/(integral_a^b f) = (2 xi)/f(xi)$。
    ],
  ),
  (
    kind: "proof",
    stem: [证明：当 $x > 0$ 时，$x/(1 + x) < ln(1 + x) < x$],
    solution: [
      令 $f(x)=x-ln(1+x)$，$f(0)=0$，$f'(x)=x/(1+x)>0$，故 $ln(1+x)<x$。
      令 $g(x)=ln(1+x)-x/(1+x)$，$g(0)=0$，$g'(x)=x/(1+x)^2>0$，故 $x/(1+x)<ln(1+x)$。
    ],
  ),
)

#book-section(section-title, problems)
