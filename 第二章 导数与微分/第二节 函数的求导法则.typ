#import "../template.typ": *

#section[第二节 函数的求导法则]
#subsection[一、选择题]
1. 设在点  $x_0$  处函数  $f(x)$  可导， $g(x)$  不可导，则在点  $x_0$  处(#answer-choice[C]).
   #choices(
   [ $f(x) + g(x)$  必可导],
   [ $f(x)g(x)$  必不可导],
   [ $f(x) - g(x)$  必不可导],
   [ $f(x)/g(x)$  必可导]
   )
   #answer-process[
     分析：$f(x)$ 可导，$g(x)$ 不可导
     
     A. $f+g$ 若可导，则 $g=(f+g)-f$ 为可导函数的差，必可导，矛盾。∴$f+g$ 必不可导
     
     B. $f times g$ 不一定不可导（例如在零点处可能可导）
     
     C. $f-g$ 若可导，则 $g=f-(f-g)$ 必可导，矛盾。∴$f-g$ 必不可导 ✓
     
     D. $f/g$ 若可导，则 $g=(f/(f)/g)$ 必可导，矛盾。∴$f/g$ 必不可导
   ]
#subsection[二、计算题]
2. 求下列函数的导数：
   (1)  $y = 2 tan x + sec x - 1$ ;
   #answer-process[
     $y' = 2 sec^2 x + sec x tan x = sec x(2 sec x + tan x)$
   ]
   (2)  $y = (ln x)/x$ ;
   #answer-process[
     $y' = (1/x times x - ln x times 1)/(x^2) = (1 - ln x)/(x^2)$
   ]
   (3)  $y = e^x/x^2 + ln 3$ ;
   #answer-process[
     $y' = (e^x times x^2 - e^x times 2x)/(x^4) = (e^x(x^2-2x))/(x^4) = (e^x(x-2))/(x^3)$
   ]
   (4)  $y = x^2 ln x cos x$.
   #answer-process[
     使用乘积法则：
     $y' = (2x ln x + x) cos x + x^2 ln x (-sin x)$
     $= (2x ln x + x) cos x - x^2 ln x sin x$
   ]
   
3. 求函数  $f(x) = 3/(5 - x) + x^2/5$  在点  $x = 0$  和点  $x = 2$  处的导数
   #answer-process[
     $f'(x) = -3 times (-1)/(5-x)^2 + 2x/5 = 3/(5-x)^2 + 2x/5$
     
     $f'(0) = 3/25$
     
     $f'(2) = 3/9 + 4/5 = 1/3 + 4/5 = 17/15$
   ]

4. 求下列函数的导数：
   (1)  $y = arctan e^x$
   #answer-process[$y' = (e^x)/(1+(e^x)^2) = (e^x)/(1+e^(2x))$]
   
   (2)  $y = arcsin^2 x$
   #answer-process[$y' = 2 arcsin x times 1/(sqrt(1)-x^2)$]
   
   (3)  $y = ln (x + sqrt(a^2 + x^2))$ ;
   #answer-process[
     $y' = 1/(x + sqrt(a^2+x^2)) times (1 + x/(sqrt(a^2)+x^2))$
     $= 1/(x + sqrt(a^2+x^2)) times (sqrt(a^2+x^2)+x)/(sqrt(a^2)+x^2)$
     $= 1/(sqrt(a^2)+x^2)$
   ]
   
   (4)  $y = ln tan(x/2)$ ;
   #answer-process[
     $y' = 1/(tan(x/2)) times sec^2(x/2) times 1/2 = 1/(2 sin(x/2) cos(x/2)) = 1/sin x$
   ]
   
   (5)  $y = e^(arctan sqrt(x))$ ;
   #answer-process[
     $y' = e^(arctan sqrt(x)) times 1/(1+x) times 1/(2sqrt(x))$
   ]
   
   (6)  $y = e^(-x)(x^2 - 2x + 3)$ ;
   #answer-process[
     $y' = -e^(-x)(x^2-2x+3) + e^(-x)(2x-2) = e^(-x)(-x^2+2x-3+2x-2) = e^(-x)(-x^2+4x-5)$
   ]
   
   (7)  $y = x arcsin(x/2) + sqrt(4 - x^2)$ .
   #answer-process[
     $y' = arcsin(x/2) + x times 1/(2sqrt(1-x^2/4)) - x/(sqrt(4)-x^2)$
     $= arcsin(x/2) + x/(sqrt(4)-x^2) - x/(sqrt(4)-x^2)$
     $= arcsin(x/2)$
   ]

5. 设函数  $f(x)$  可导，求函数  $y = f(sin^2 x) + f(cos^2 x)$  的导数  $(d y)/(d x)$ .
   #answer-process[
     $(d y)/(d x) = f'(sin^2 x) times 2 sin x cos x + f'(cos^2 x) times 2 cos x (-sin x)$
     
     $= 2 sin x cos x (f'(sin^2 x) - f'(cos^2 x))$
     
     $= sin 2x (f'(sin^2 x) - f'(cos^2 x))$
   ]
#subsection[三、证明题]
6. 设函数  $f(x)$  满足下列条件：\
   (1)  $f(x + y) = f(x)f(y),forall x,y in R,$ \
   (2)  $f(x) = 1 + x g(x)$ , 而  $lim_(x->0)g(x) = 1$\
   试证：  $f(x)$  在  $R$  上处处可导，且  $f'(x) = f(x)$
   
