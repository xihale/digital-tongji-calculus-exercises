#import "../template.typ": *

#section[总习题一]
#subsection[一、选择题]
1. 当  $x -> 0$  时， $(1 - cos x)^2$  是  $sin^2 x$  的(#h(2em)).
   #choices(
   [高阶无穷小],
   [同阶无穷小, 但不是等价无穷小],
   [低阶无穷小],
   [等价无穷小],
   )
   #answer-space
2. 设  $f(x)$  为奇函数, 则下列函数中 (#h(2em)) 也为奇函数.
   #choices(
   [ $f(x) + C$，其中 $C$ 为非零常数],
   [ $f(-x) + C$，其中 $C$ 为非零常数],
   $f(x) + f(-x)$,
   $f[f(x)]$
   )
   #answer-space
3. 设函数  $f(x) = x^2 + arctan(1/(x - 1))$ ，则  $x = 1$  是  $f(x)$  的(#h(2em)).
   #choices(
   [可去间断点],
   [跳跃间断点],
   [无穷间断点],
   [振荡间断点]
   )
   #answer-space
#subsection[二、填空题]
4.数列  ${x_n}$  有界是  ${x_n}$  收敛的 条件  
   #answer-space
5. 函数  $f(x) = (x - 2)/(ln |x - 1|)$  的一个无穷间断点是  
   #answer-space
6. 设函数  $f(x) = cases( sqrt(x^2 - 1) &"if" x < -1, b &"if" x = -1, a + arccos x &"if" -1 < x <= 1 )$  在点  $x = -1$  处连续，则  $a =$  #blank()， $b =$  #blank().
   #answer-space
7. 函数  $f(x) = (2^(1/x) - 1)/(2^(1/x) + 1)$  的间断点是 #blank()，是第 #blank() 类间断点。
   #answer-space
#subsection[三、计算题]
8. 求下列极限：
   (1)  $lim_(x-> +infinity)x(sqrt(x^2 + 1) -x)$
   #answer-space
   (2)  $lim_(x->infinity)((2x + 3)/(2x + 1))^(x + 1)$;
   #answer-space
   (3)  $lim_(x->0)(tan x - sin x)/x^3$.
   #answer-space
#subsection[四、证明题]
9. 根据函数极限的定义，证明：  $lim_(x->3)(x^2 - x - 6)/(x - 3) = 5$.
   #answer-space  
10. 证明:  $lim_(n->infinity)(1/sqrt(n^2 + 1) + 1/sqrt(n^2 + 2) + dots + 1/sqrt(n^2 + n)) = 1$.
   #answer-space  
11. 证明: 方程  $sin x + x + 1 = 0$  在开区间  $(-pi/2, pi/2)$  内至少有一个根.
   #answer-space

