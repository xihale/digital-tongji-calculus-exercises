#import "../template.typ": *

#section[第九节 连续函数的运算与初等函数的连续性]
#subsection[一、选择题]
1. 设函数  $f(x) = (1 - 2e^(1/x))/(1 + e^(1/x)) arctan(1/x)$ ，则  $x = 0$  是  $f(x)$  的(#h(2em)).
  #choices(
    [可去间断点],
    [跳跃间断点],
    [无穷间断点],
    [振荡间断点],
  )
2. 设函数  $f(x) = cases(x &"if" x >= 0, 0 &"if" x < 0,), g(x) = cases(x + 1 &"if" x < 1, x &"if" x >= 1,)$  则  $f(x) + g(x)$  的连续区间是(#h(2em)).
  #choices(
    [$(-infinity , + infinity)$],
    [$(- infinity, 0) union (0, +infinity)$],
    [$(- infinity, 1) union (1, +infinity)$],
    [$(-infinity, 0) union (0, 1) union (1, +infinity)$],
  )
3. 已知当  $x -> 0$  时， $sqrt(1 - x) - sqrt(1 + x) ~ a x$ ，则常数  $a = (#h(2em))$
  #choices(
    [1],
    [-1],
    [2],
    [-2],
  )
4.当  $x->1$  时，  $1 - x$  是  $1 - root(3, x)$  的(#h(2em))
#choices(
  [等价无穷小],
  [高阶无穷小],
  [同阶无穷小, 但不是等价无穷小],
  [低阶无穷小],
)
#subsection[二、填空题]
5. 设函数  $f(x) = cases(e^x &"if" x < 0, a + x &"if" x >= 0.)$  若  $f(x)$  在点  $x = 0$  处连续，则  $a =$  #blank()
#subsection[三、计算题]
6. 求下列极限：
  (1)  $lim_(x->1)(sqrt(5x - 4) - sqrt(x))/(x - 1)$ ;
  #answer-space
  (2)  $lim_(x->a)(sin x - sin a)/(x - a)$;
  #answer-space
  (3)  $lim_(x-> +infinity)(sqrt(x^2 + x) - sqrt(x^2 - x))$
  #answer-space
  (4)  $lim_(x->0)((1 - x^2/2)^(2/3) - 1)/(x ln(1 + x))$;
  #answer-space
  (5)  $lim_(x->0)(1 + 3 tan^2 x)^(cot^2 x)$ ;
  #answer-space
  (6)  $lim_(x-> +infinity)((3 + x)/(6 + x))^((x - 1)/2)$;
  #answer-space
  (7)  $lim_(x->0)(e^(3x) - e^(2x) - e^x + 1)/(root(3, (1 - x)(1 + x)) - 1)$.
  #answer-space
7.设函数 $f(x) = cases((x^4 + a x + b)/((x - 1)(x + 2)) &"if" x != 1\, x != -2, 2 &"if" x = 1)$  在点  $x = 1$  处连续，试求  $a, b$  的值
#answer-space
#subsection[四、证明题]
8. 设函数  $f(x)$  与  $g(x)$  在点  $x_0$  处连续，证明：$phi (x) = max{f (x), g (x)}, psi(x) = min {f (x), g (x) }$ 在点  $x_0$  处也连续
#answer-space
