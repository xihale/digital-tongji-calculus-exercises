#import "../template.typ": *

#section[第五节 函数的微分]
#subsection[一、选择题]
1. 一切初等函数在其定义区间内 (#answer-choice[C]).
   #choices(
   [可微],
   [不可微],
   [连续],
   [有界]
   )
   #answer-process[
     初等函数在其定义区间内都是连续的（除了某些特殊点如间断点）。但不一定可微，例如 $y = |x|$ 在 $x = 0$ 处连续但不可导、不可微。因此答案是连续。
   ]
#subsection[二、填空题]
2. 已知函数  $y = x^2 - x$ ，则在点  $x = 2$  处，当  $Delta x = 0.1$  时， $Delta y =$ #blank[0.31]， $d y =$ #blank[0.3].
   #answer-process[
     $y' = 2x - 1$，在 $x = 2$ 处 $y' = 3$
     
     $Delta y = f(2.1) - f(2) = (2.1^2 - 2.1) - (4 - 2) = 2.31 = 0.31$
     
     $d y = y'(2) times Delta x = 3 times 0.1 = 0.3$
   ]
   
3.  $d(sqrt(x) arcsin sqrt(x)) =$ #blank[$(arcsin sqrt(x) / (2 sqrt(x)) + 1/2)$] $d x$ .
   #answer-process[
     设 $u = sqrt(x) arcsin sqrt(x)$
     
     $d u = d(sqrt(x)) times arcsin sqrt(x) + sqrt(x) times d(arcsin sqrt(x))$
     
     $= (1/(2sqrt(x))) arcsin sqrt(x) d x + sqrt(x) times 1/(sqrt(1)-x) times 1/(2sqrt(x)) d x$
     
     $= [(arcsin sqrt(x))/(2sqrt(x)) + 1/(2sqrt(1-x))] d x$
   ]
   
4. 设  $f(x)$  与  $g(x)$  都是可导函数，又函数  $y = f[g(2 - x^3)]$ ，则当  $Delta x -> 0$  时，无穷小  $Delta y$  关于  $Delta x$  的线性主部为 #blank[$f'[g(2-x^3)] times g'(2-x^3) times (-3x^2) times d x$].
   #answer-process[
     $d y = f'[g(2-x^3)] times g'(2-x^3) times (-3x^2) times d x$
   ]
#subsection[三、计算题]
5. 求下列函数的微分：\
   (1)  $y = x^2 e^(2x)$ ;
   #answer-process[
     $d y = (2x e^(2x) + 2x^2 e^(2x)) d x = 2x(1 + x) e^(2x) d x$
   ]
   
   (2)  $y = ln^2 (1 - x)$ ;
   #answer-process[
     $d y = 2 ln(1-x) times 1/(1-x) times (-1) d x = -2 ln(1-x) / (1-x) d x$
   ]
   
   (3)  $y = arcsin sqrt(1 - x^2)$ ;
   #answer-process[
     $d y = 1/(sqrt(1)-(1-x^2)) times 1/(2sqrt(1-x^2)) times (-2x) d x$
     
     $= 1/(sqrt(x^2)) times (-x) / sqrt(1-x^2) d x = -1 d x$ (当 $x > 0$)
   ]
   
   (4)  $y = tan^2 (1 + 2x^2)$ .
   #answer-process[
     $d y = 2 tan(1+2x^2) times sec^2(1+2x^2) times 4x d x = 8x tan(1+2x^2) sec^2(1+2x^2) d x$
   ]

6. 已知  $cases( x = f'(t), y = t f'(t) - f(t), )$  设  $f''(t)$  存在且不为零, 求  $y$  对  $x$  的微分.
   #answer-process[
     $d x = f''(t) d t$，$d y = t f''(t) d t$
     
     所以 $d y / d x = t$（根据前面计算）
     
     因此 $d y = t d x = t times f''(t) d t$
   ]

7. 设函数  $y = y(x)$  由方程  $y^2 f(x) + x f(y) = x^2$  所确定, 其中  $f(x)$  是  $x$  的可微函数, 试求  $d y$ .
   #answer-process[
     对方程 $y^2 f(x) + x f(y) = x^2$ 两边求微分：
     
     $2y d y times f(x) + y^2 f'(x) d x + d x times f(y) + x f'(y) d y = 2x d x$
     
     $[2y f(x) + x f'(y)] d y = [2x - y^2 f'(x) - f(y)] d x$
     
     $d y = [2x - y^2 f'(x) - f(y)] / [2y f(x) + x f'(y)] d x$
   ]

8. 计算  $root(3,996)$  的近似值
   #answer-process[
     令 $f(x) = root(3,x)$，在 $x = 1000$ 处展开
     
     $f(x) = x^(1/3)$，$f'(x) = 1/(3 x^(2/3))$
     
     $f'(1000) = 1/(3 times 100) = 1/300$
     
     $f(996) approx f(1000) + f'(1000) times (996-1000) = 10 + 1/300 times (-4) = 10 - 1/75 approx 9.987$
   ]
