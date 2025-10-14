#import [../template.typ]: section, subsection, choices, answer-space

#section[第二节 函数的求导法则]
#subsection[一、选择题]
1. 设在点  $x_0$  处函数  $f(x)$  可导， $g(x)$  不可导，则在点  $x_0$  处( ).
   #v(0.5em)
   #choices(
   [ $f(x) + g(x)$  必可导],
   [ $f(x)g(x)$  必不可导],
   [ $f(x) - g(x)$  必不可导],
   [ $f(x)/g(x)$  必可导]
   )
#subsection[二、计算题]
2. 求下列函数的导数：
   (1)  $y = 2 tan x + sec x - 1$ ;
   #answer-space
   (2)  $y = (ln x)/x$ ;
   #answer-space
   (3)  $y = e^x/x^2 + ln 3$ ;
   #answer-space
   (4)  $y = x^2 ln x cos x$.
   #answer-space
3. 求函数  $f(x) = 3/(5 - x) + x^2/5$  在点  $x = 0$  和点  $x = 2$  处的导数
   #answer-space
4. 求下列函数的导数：
   (1)  $y = arctan e^x$
   #answer-space
   (2)  $y = arcsin^2 x$
   #answer-space
   (3)  $y = ln (x + sqrt(a^2 + x^2))$ ;
   #answer-space
   (4)  $y = ln tan(x/2)$ ;
   #answer-space
   (5)  $y = e^(arctan sqrt(x))$ ;
   #answer-space
   (6)  $y = e^(-x)(x^2 - 2x + 3)$ ;
   #answer-space
   (7)  $y = x arcsin(x/2) + sqrt(4 - x^2)$ .
   #answer-space
5. 设函数  $f(x)$  可导，求函数  $y = f(sin^2 x) + f(cos^2 x)$  的导数  $d y/d x$ .
   #answer-space
#subsection[三、证明题]
6. 设函数  $f(x)$  满足下列条件：
   (1)  $f(x + y) = f(x)f(y),forall x,y in R,$  
   (2)  $f(x) = 1 + x g(x)$ , 而  $lim_(x->0)g(x) = 1$
   试证：  $f(x)$  在  $R$  上处处可导，且  $f'(x) = f(x)$
   #answer-space
