#import "../template.typ": *

#section[第九节 连续函数的运算与初等函数的连续性]
#subsection[一、选择题]
1. 设函数  $f(x) = (1 - 2e^(1/x))/(1 + e^(1/x)) arctan(1/x)$ ，则  $x = 0$  是  $f(x)$  的(#answer-choice[B]).
  #choices(
    [可去间断点],
    [跳跃间断点],
    [无穷间断点],
    [振荡间断点],
  )
  #answer-process[
    分别计算左右极限：
    
    当 $x -> 0^+$ 时，$1/x -> +infinity$，$e^(1/x) -> +infinity$，
    $(1 - 2e^(1/x))/(1 + e^(1/x)) -> -2$，$arctan(1/x) -> pi/2$，
    所以 $lim_(x->0^+) f(x) = -2 dot pi/2 = -pi$。
    
    当 $x -> 0^-$ 时，$1/x -> -infinity$，$e^(1/x) -> 0$，
    $(1 - 2e^(1/x))/(1 + e^(1/x)) -> 1$，$arctan(1/x) -> -pi/2$，
    所以 $lim_(x->0^-) f(x) = 1 dot (-pi/2) = -pi/2$。
    
    因为左右极限都存在但不相等，所以 $x = 0$ 是跳跃间断点。
  ]
2. 设函数  $f(x) = cases(x &"if" x >= 0, 0 &"if" x < 0,), g(x) = cases(x + 1 &"if" x < 1, x &"if" x >= 1,)$  则  $f(x) + g(x)$  的连续区间是(#answer-choice[A]).
  #choices(
    [$(-infinity , + infinity)$],
    [$(- infinity, 0) union (0, +infinity)$],
    [$(- infinity, 1) union (1, +infinity)$],
    [$(-infinity, 0) union (0, 1) union (1, +infinity)$],
  )
  #answer-process[
    计算 $f(x) + g(x)$：
    
    - 当 $x < 0$ 时：$f(x) + g(x) = 0 + (x+1) = x+1$
    - 当 $0 <= x < 1$ 时：$f(x) + g(x) = x + (x+1) = 2x+1$
    - 当 $x >= 1$ 时：$f(x) + g(x) = x + x = 2x$
    
    检查可能的间断点：
    
    在 $x=0$ 处：
    $lim_(x->0^-)(x+1) = 1$，$lim_(x->0^+)(2x+1) = 1$，$f(0)+g(0) = 0+1 = 1$，
    左右极限相等且等于函数值，所以在 $x=0$ 处连续。
    
    在 $x=1$ 处：
    $lim_(x->1^-)(2x+1) = 3$，$lim_(x->1^+)(2x) = 2$，$f(1)+g(1) = 1+1 = 2$，
    左右极限不相等，所以在 $x=1$ 处不连续。
    
    因此连续区间应为 $(- infinity, 1) union (1, +infinity)$，答案应为 C。
    
    （注：如果标准答案为 A，可能题目有误或理解不同）
  ]
3. 已知当  $x -> 0$  时， $sqrt(1 - x) - sqrt(1 + x) ~ a x$ ，则常数  $a = (#answer-choice[B])$
  #choices(
    [1],
    [-1],
    [2],
    [-2],
  )
  #answer-process[
    $sqrt(1-x) - sqrt(1+x) = (sqrt(1-x) - sqrt(1+x))(sqrt(1-x) + sqrt(1+x))/(sqrt(1-x) + sqrt(1+x))$
    
    $= ((1-x) - (1+x))/(sqrt(1-x) + sqrt(1+x)) = (-2x)/(sqrt(1-x) + sqrt(1+x))$
    
    当 $x -> 0$ 时，$sqrt(1-x) + sqrt(1+x) -> 2$，
    
    所以 $sqrt(1-x) - sqrt(1+x) ~ (-2x)/2 = -x$。
    
    因此 $a = -1$。
  ]
4.当  $x->1$  时，  $1 - x$  是  $1 - root(3, x)$  的(#answer-choice[C])
#choices(
  [等价无穷小],
  [高阶无穷小],
  [同阶无穷小, 但不是等价无穷小],
  [低阶无穷小],
)
#answer-process[
  令 $t = 1 - x$，则当 $x -> 1$ 时，$t -> 0$，$x = 1 - t$。
  
  $1 - root(3, x) = 1 - root(3, 1-t) = 1 - (1-t)^(1/3)$
  
  利用泰勒展开：$(1-t)^(1/3) = 1 - t/3 + o(t)$
  
  所以 $1 - root(3, x) = 1 - (1 - t/3 + o(t)) = t/3 + o(t) = (1-x)/3 + o(1-x)$
  
  因此 $lim_(x->1) (1-root(3,x))/(1-x) = 1/3 != 1$
  
  所以它们是同阶无穷小，但不是等价无穷小。
]
#subsection[二、填空题]
5. 设函数  $f(x) = cases(e^x &"if" x < 0, a + x &"if" x >= 0.)$  若  $f(x)$  在点  $x = 0$  处连续，则  $a =$  #blank[1]
#answer-process[
  因为 $f(x)$ 在 $x=0$ 处连续，所以
  $lim_(x->0^-) f(x) = lim_(x->0^+) f(x) = f(0)$
  
  $lim_(x->0^-) e^x = 1$，$lim_(x->0^+) (a+x) = a$，$f(0) = a$
  
  因此 $1 = a$，即 $a = 1$。
]
#subsection[三、计算题]
6. 求下列极限：
  (1)  $lim_(x->1)(sqrt(5x - 4) - sqrt(x))/(x - 1)$ ;
  #answer-process[
    分子有理化：
    $lim_(x->1)(sqrt(5x - 4) - sqrt(x))/(x - 1) = lim_(x->1) ((5x-4) - x)/((x-1)(sqrt(5x-4) + sqrt(x)))$
    
    $= lim_(x->1) (4x - 4)/((x-1)(sqrt(5x-4) + sqrt(x))) = lim_(x->1) (4(x-1))/((x-1)(sqrt(5x-4) + sqrt(x)))$
    
    $= lim_(x->1) 4/(sqrt(5x-4) + sqrt(x)) = 4/(sqrt(1) + sqrt(1)) = 4/2 = 2$
  ]
  (2)  $lim_(x->a)(sin x - sin a)/(x - a)$;
  #answer-process[
    利用和差化积公式：
    $sin x - sin a = 2 cos((x+a)/2) sin((x-a)/2)$
    
    $lim_(x->a)(sin x - sin a)/(x - a) = lim_(x->a) (2 cos((x+a)/2) sin((x-a)/2))/(x-a)$
    
    $= lim_(x->a) cos((x+a)/2) dot (sin((x-a)/2))/((x-a)/2)$
    
    $= cos a dot 1 = cos a$
  ]
  (3)  $lim_(x-> +infinity)(sqrt(x^2 + x) - sqrt(x^2 - x))$
  #answer-process[
    分子有理化：
    $lim_(x-> +infinity)(sqrt(x^2 + x) - sqrt(x^2 - x))$
    
    $= lim_(x-> +infinity) ((x^2+x) - (x^2-x))/(sqrt(x^2+x) + sqrt(x^2-x))$
    
    $= lim_(x-> +infinity) (2x)/(sqrt(x^2+x) + sqrt(x^2-x))$
    
    分子分母同除以 $x$：
    $= lim_(x-> +infinity) 2/(sqrt(1+1/x) + sqrt(1-1/x)) = 2/(1+1) = 1$
  ]
  (4)  $lim_(x->0)((1 - x^2/2)^(2/3) - 1)/(x ln(1 + x))$;
  #answer-process[
    设 $t = -x^2/2$，当 $x -> 0$ 时，$t -> 0$。
    
    利用等价无穷小：$(1+t)^(2/3) - 1 ~ (2/3)t$，$ln(1+x) ~ x$
    
    原式 $= lim_(x->0) ((1 - x^2/2)^(2/3) - 1)/(x ln(1 + x))$
    
    $~ lim_(x->0) ((2/3)(-x^2/2))/(x dot x) = lim_(x->0) (-(x^2)/3)/(x^2) = -1/3$
  ]
  (5)  $lim_(x->0)(1 + 3 tan^2 x)^(cot^2 x)$ ;
  #answer-process[
    这是 $1^infinity$ 型不定式，使用公式 $lim [1 + alpha(x)]^(beta(x)) = e^(lim alpha(x) dot beta(x))$
    
    原式 $= lim_(x->0) (1 + 3 tan^2 x)^(cot^2 x) = e^(lim_(x->0) 3 tan^2 x dot cot^2 x)$
    
    $= e^(lim_(x->0) 3 tan^2 x dot 1/(tan^2 x)) = e^(lim_(x->0) 3) = e^3$
  ]
  (6)  $lim_(x-> +infinity)((3 + x)/(6 + x))^((x - 1)/2)$;
  #answer-process[
    原式 $= lim_(x-> +infinity) ((6+x-3)/(6+x))^((x-1)/2)$
    
    $= lim_(x-> +infinity) (1 - 3/(6+x))^((x-1)/2)$
    
    令 $t = -3/(6+x)$，当 $x -> +infinity$ 时，$t -> 0$，且 $x = -3/t - 6$
    
    原式 $= lim_(t->0) (1+t)^((-3/t - 6 - 1)/2) = lim_(t->0) (1+t)^((-3/t - 7)/2)$
    
    $= lim_(t->0) [(1+t)^(1/t)]^(-3/2) dot (1+t)^(-7/2) = e^(-3/2) dot 1 = e^(-3/2) = 1/sqrt(e^3)$
  ]
  (7)  $lim_(x->0)(e^(3x) - e^(2x) - e^x + 1)/(root(3, (1 - x)(1 + x)) - 1)$.
  #answer-process[
    分子：利用泰勒展开 $e^u = 1 + u + u^2/2 + o(u^2)$
    
    $e^(3x) - e^(2x) - e^x + 1 = (1 + 3x + (9x^2)/2) - (1 + 2x + 2x^2) - (1 + x + x^2/2) + 1 + o(x^2)$
    
    $= 3x - 2x - x + (9x^2)/2 - 2x^2 - x^2/2 + o(x^2) = 2x^2 + o(x^2)$
    
    分母：$root(3, (1-x)(1+x)) - 1 = root(3, 1-x^2) - 1 = (1-x^2)^(1/3) - 1$
    
    $~ -(x^2)/3$ （当 $x -> 0$）
    
    原式 $= lim_(x->0) (2x^2)/(-(x^2)/3) = 2 dot (-3) = -6$
  ]
7.设函数 $f(x) = cases((x^4 + a x + b)/((x - 1)(x + 2)) &"if" x != 1, x != -2, 2 &"if" x = 1)$  在点  $x = 1$  处连续，试求  $a, b$  的值
#answer-process[
  因为 $f(x)$ 在 $x=1$ 处连续，所以 $lim_(x->1) f(x) = f(1) = 2$
  
  即 $lim_(x->1) (x^4 + a x + b)/((x - 1)(x + 2)) = 2$
  
  因为极限存在，分子在 $x=1$ 处必须为 0（否则极限为无穷），
  
  所以 $1 + a + b = 0$，即 $a + b = -1$ ... (1)
  
  此时分子可因式分解出 $(x-1)$，设 $x^4 + a x + b = (x-1)(x^3 + x^2 + x + c)$
  
  展开右边：$(x-1)(x^3 + x^2 + x + c) = x^4 + x^3 + x^2 + c x - x^3 - x^2 - x - c$
  
  $= x^4 + (c-1)x - c$
  
  比较系数：$a = c - 1$，$b = -c$
  
  从 (1)：$(c-1) + (-c) = -1$，即 $-1 = -1$ 恒成立。
  
  现在计算极限：$lim_(x->1) ((x-1)(x^3 + x^2 + x + c))/((x-1)(x+2)) = lim_(x->1) (x^3 + x^2 + x + c)/(x+2)$
  
  $= (1 + 1 + 1 + c)/3 = (3 + c)/3 = 2$
  
  所以 $3 + c = 6$，$c = 3$
  
  因此 $a = c - 1 = 2$，$b = -c = -3$
]
#subsection[四、证明题]
8. 设函数  $f(x)$  与  $g(x)$  在点  $x_0$  处连续，证明：$phi (x) = max{f (x), g (x)}, psi(x) = min {f (x), g (x) }$ 在点  $x_0$  处也连续
#answer-process[
  利用恒等式：
  $max{f(x), g(x)} = (f(x) + g(x) + |f(x) - g(x)|)/2$
  
  $min{f(x), g(x)} = (f(x) + g(x) - |f(x) - g(x)|)/2$
  
  因为 $f(x)$ 和 $g(x)$ 在 $x_0$ 处连续，所以：
  - $f(x) + g(x)$ 在 $x_0$ 处连续（连续函数的和连续）
  - $f(x) - g(x)$ 在 $x_0$ 处连续（连续函数的差连续）
  - $|f(x) - g(x)|$ 在 $x_0$ 处连续（绝对值函数连续，复合函数连续）
  
  因此 $phi(x)$ 和 $psi(x)$ 作为连续函数的和、差、数乘的组合，在 $x_0$ 处也连续。
]
