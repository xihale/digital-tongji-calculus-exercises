#import "../template.typ": *

#subsection[一、判断题(如果错误，请加以改正)]
1.  $(d integral_a^b f(x) dif x)/(d x) = f(x)$  (#answer-choice[错]).
   #answer-process[错。应该是 $(d integral_a^x f(t) dif t) / (d x) = f(x)$，外层的 $a,b$ 是常数]
   
2. 定积分的定义中，"$lambda -> 0$"可以换成"$n -> infinity$". (#answer-choice[否]).
   #answer-process[不一定。$lambda -> 0$ 不等同于 $n -> infinity$，需要同时满足等分条件]

3. 交换定积分的上下限，定积分的值不变. (#answer-choice[错]).
   #answer-process[错。应为 $integral_b^a f(x) dif x = -integral_a^b f(x) dif x$]

4. 若等式  $integral_a^b f(x) dif x = integral_a^c f(x) dif x + integral_c^b f(x) dif x$  成立，则必有  $a < c < b.$  (#answer-choice[错]).
   #answer-process[错。$c$ 可以在 $[a,b]$ 区间内任何位置，不一定严格在中间]

#section[第一节 定积分的概念与性质]
#subsection[一、判断题(如果错误，请加以改正)]
1.  $(d integral_a^b f(x) dif x)/(d x) = f(x)$  (#h(2em))  

2. 定积分的定义中，“ $lambda -> 0$ ”可以换成“ $n -> infinity$ ”. (#h(2em))

3.交换定积分的上下限，定积分的值不变. (#h(2em))

4.若等式  $integral_a^b f(x) dif x = integral_a^c f(x) dif x + integral_c^b f(x) dif x$  成立，则必有  $a <   c <   b.$  (#h(2em))

#subsection[二、计算题]
5. 设  $integral_(-1)^1 3f(x) dif x = 18, integral_(-1)^3 f(x) dif x = 4, integral_(-1)^3 g(x) dif x = 3$ ，求：

   (1)  $integral_(-1)^1 f(x) dif x = 18/3 = 6$;
   
   (2)  $integral_(1)^3 f(x) dif x = integral_(-1)^3 f(x) dif x - integral_(-1)^1 f(x) dif x = 4 - 6 = -2$ ;
   
   (3)  $integral_(3)^(-1) g(x) dif x = -integral_(-1)^3 g(x) dif x = -3$ ;
   
   (4)  $integral_(-1)^3 (1/5) [4f(x) + 3g(x)] dif x = (1/5)[4 times 4 + 3 times 3] = 25/5 = 5$.

6. 利用定积分的几何意义，求下列定积分的值(要求作图)：\
   (1)  $integral_0^t (2x + 1) dif x = t^2 + t$;  
   
   (2)  $integral_(-1)^2 |x - 1| dif x = (1-(-1))^2/2 + (2-1)^2/2 = 2 + 1/2 = 5/2$;
   
   (3)  $integral_(-3)^3 sqrt(9 - x^2) dif x = (pi times 3^2) / 2 = 9pi/2$ (半圆面积).

7. 估计下列定积分的值：

   (1)  $integral_(pi/4)^(5pi/4) (1 + sin^2 x) dif x$; 当 $x in [pi/4, 5pi/4]$ 时，$1 <= 1+sin^2 x <= 2$，所以 $pi <= I <= 2pi$
   
   (2)  $integral_(2)^0 e^(x^2 - x) dif x$. 这是负积分，$= - integral_0^2 e^(x^2-x) dif x$

8. (附加题)利用定积分的定义计算定积分  $integral_0^1 e^x dif x$.
   #answer-process[
     取分点 $0 = x_0 < x_1 < ... < x_n = 1$，$Delta x_i = 1/n$
     
     作和 $sum_(i=1)^n e^(xi_i) times 1/n$，其中 $xi_i in [x_(i-1), x_i]$
     
     取 $xi_i = i/n$，则和式趋于 $integral_0^1 e^x dif x = e - 1$
   ]

#subsection[三、证明题]
9. (附加题)我们知道，当  $a > 0$  时， $a x^2 + b x + c >= 0$  恒成立  $arrow.l.r.double b^2 - 4 a c <= 0$ . 试用此结论证明：若函数  $f(x)$  在区间  $[0,1]$  上连续，则  $integral_0^1 f^2(x) dif x >= (integral_0^1 f(x) dif x)^2$ .
   #answer-process[
     由Cauchy-Schwarz不等式，$(integral_0^1 f(x) times 1 dif x)^2 <= integral_0^1 f^2(x) dif x times integral_0^1 1^2 dif x = integral_0^1 f^2(x) dif x times 1$
     
     因此 $integral_0^1 f^2(x) dif x >= (integral_0^1 f(x) dif x)^2$
   ]
