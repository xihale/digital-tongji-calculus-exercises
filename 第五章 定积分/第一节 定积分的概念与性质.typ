#import [../template.typ]: section, subsection, choices, answer-space

#section[第一节 定积分的概念与性质]
#subsection[一、判断题(如果错误，请加以改正)]
1.  $d/d x integral_a^b f(x) dif x = f(x).$  ( )  
2. 定积分的定义中，“ $lambda -> 0$ ”可以换成“ $n -> infinity$ ”. ()  
3.交换定积分的上下限，定积分的值不变. ()  
4.若等式  $integral_a^b f(x) dif x = integral_a^c f(x) diff x + integral_c^b f(x) diff x$  成立，则必有  $a <   c <   b.$  ( )
#subsection[二、计算题]
5. 设  $integral_(-1)^1 3f(x) , dif x = 18, integral_(-1)^3 f(x) , diff x = 4, integral_(-1)^3 g(x) , diff x = 3$ ，求：
   (1)  $integral_(-1)^1 f(x) dif x$;
   #answer-space
   (2)  $integral_(1)^3 f(x) , dif x$ ;
   #answer-space
   (3)  $integral_(3)^(-1) g(x) , dif x$ ;
   #answer-space
   (4)  $integral_(-1)^3 (1/5) [4f(x) + 3g(x)] , dif x$.
   #answer-space
6. 利用定积分的几何意义，求下列定积分的值(要求作图)：
   (1)  $integral_0^t (2x + 1) dif x$;  
   #answer-space
   (2)  $integral_(-1)^2 |x - 1| dif x$;
   #answer-space
   (3)  $integral_(-3)^3 sqrt(9 - x^2) dif x$.
   #answer-space
7. 估计下列定积分的值：
   (1)  $integral_(pi/4)^(5pi/4) (1 + sin^2 x) , dif x$;  
   #answer-space
   (2)  $integral_(2)^0 e^(x^2 - x) dif x$.
   #answer-space
8.(附加题)利用定积分的定义计算定积分  $integral_0^1 e^x dif x$.
   #answer-space
#subsection[三、证明题]
9.(附加题)我们知道，当  $a > 0$  时， $a x^2 + b x + c >= 0$  恒成立  $i f f b^2 - 4 a c <= 0$ . 试用此结论证明：若函数  $f(x)$  在区间  $[0,1]$  上连续，则  $integral_0^1 f^2(x) , dif x >= (integral_0^1 f(x) , diff x)^2$ .
   #answer-space
