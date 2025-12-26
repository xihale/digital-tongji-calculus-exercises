#import "../template.typ": *

#section[第一节 定积分的概念与性质]
#subsection[一、判断题(如果错误，请加以改正)]
1.  $(d integral_a^b f(x) d x)/(d x) = f(x)$  (#answer-choice[错])
    #answer-process[
      定积分 $integral_a^b f(x) d x$ 是一个常数，其导数为 0。
      变上限积分 $(d)/(d x) integral_a^x f(t) d t = f(x)$ 才是正确的。
    ]

2. 定积分的定义中，“ $lambda -> 0$ ”可以换成“ $n -> oo$ ”. (#answer-choice[否])
    #answer-process[
      不可以。$n -> oo$ 只是分点个数趋于无穷，不能保证最大区间长度 $lambda$ 趋于 0（例如只有一段不分，其他无限分）。
      必须要求最大子区间长度 $lambda -> 0$。
    ]

3.交换定积分的上下限，定积分的值不变. (#answer-choice[错])
    #answer-process[
      $integral_a^b f(x) d x = - integral_b^a f(x) d x$。
      交换上下限，定积分的值变号。
    ]

4.若等式  $integral_a^b f(x) d x = integral_a^c f(x) d x + integral_c^b f(x) d x$  成立，则必有  $a <   c <   b.$  (#answer-choice[错])
    #answer-process[
      定积分对区间的可加性对 $a, b, c$ 的相对位置没有限制，只要函数在包含这三点的区间上可积即可。
    ]

#subsection[二、计算题]
5. 设  $integral_(-1)^1 3f(x) d x = 18, integral_(-1)^3 f(x) d x = 4, integral_(-1)^3 g(x) d x = 3$ ，求：

   (1)  $integral_(-1)^1 f(x) d x$;
   #answer-process[
     由 $integral_(-1)^1 3f(x) d x = 3 integral_(-1)^1 f(x) d x = 18$，得
     $integral_(-1)^1 f(x) d x = 6$。
   ]
   
   (2)  $integral_(1)^3 f(x) d x$;
   #answer-process[
     $integral_(1)^3 f(x) d x = integral_(-1)^3 f(x) d x - integral_(-1)^1 f(x) d x = 4 - 6 = -2$。
   ]
   
   (3)  $integral_(3)^(-1) g(x) d x$;
   #answer-process[
     $integral_(3)^(-1) g(x) d x = -integral_(-1)^3 g(x) d x = -3$。
   ]
   
   (4)  $integral_(-1)^3 (1/5) [4f(x) + 3g(x)] d x$.
   #answer-process[
     原式 $= 1/5 [4 integral_(-1)^3 f(x) d x + 3 integral_(-1)^3 g(x) d x]$
     $= 1/5 [4 times 4 + 3 times 3] = 1/5(16 + 9) = 25/5 = 5$。
   ]

6. 利用定积分的几何意义，求下列定积分的值(要求作图)：\
   (1)  $integral_0^t (2x + 1) d x$;
   #answer-process[
     图形为梯形，上底 1，下底 $2t+1$，高 $t$。
     面积 $S = (1 + 2t + 1) times t / 2 = (2t + 2)t / 2 = t^2 + t$。
   ]
   
   (2)  $integral_(-1)^2 |x - 1| d x$;
   #answer-process[
     $y = |x-1|$ 在 $[-1, 2]$ 上由两部分线段组成。
     $[-1, 1]$ 上为底 2 高 2 的三角形，面积 $1/2 times 2 times 2 = 2$。
     $[1, 2]$ 上为底 1 高 1 的三角形，面积 $1/2 times 1 times 1 = 0.5$。
     总面积 $= 2 + 0.5 = 2.5$。
   ]
   
   (3)  $integral_(-3)^3 sqrt(9 - x^2) d x$.
   #answer-process[
     被积函数表示圆心在原点半径为 3 的上半圆。
     积分值为半圆面积 $= 1/2 pi R^2 = 1/2 pi (3^2) = 9/2 pi$。
   ]

7. 估计下列定积分的值：

   (1)  $integral_(pi/4)^(5pi/4) (1 + sin^2 x) d x$;
   #answer-process[
     积分区间长度 $5pi/4 - pi/4 = pi$。
     在区间上 $0 <= sin^2 x <= 1$，所以 $1 <= 1 + sin^2 x <= 2$。
     由估值定理：$1 times pi <= I <= 2 times pi$，即 $pi <= I <= 2pi$。
   ]
   
   (2)  $integral_(2)^0 e^(x^2 - x) d x$.
   #answer-process[
     注意下限 2 大于上限 0，先交换：$I = - integral_0^2 e^(x^2 - x) d x$。
     在 $[0, 2]$ 上，令 $u = x^2 - x = (x-1/2)^2 - 1/4$。
     最小值为 $-1/4$ (在 $x=1/2$)，最大值为 $2$ (在 $x=2$, $u=2$)。
     所以 $e^(-1/4) <= e^(x^2-x) <= e^2$。
     积分区间长度 2。
     所以 $-2 e^2 <= I <= -2 e^(-1/4)$ (注意负号改变不等号方向)。
   ]

8. (附加题)利用定积分的定义计算定积分  $integral_0^1 e^x d x$.
   #answer-process[
     取分点 $0 = x_0 < x_1 < ... < x_n = 1$，$Delta x_i = 1/n$
     
     作和 $sum_(i=1)^n e^(xi_i) times 1/n$，其中 $xi_i in [x_(i-1), x_i]$
     
     取 $xi_i = i/n$，则和式趋于 $integral_0^1 e^x d x = e - 1$
   ]

#subsection[三、证明题]
9. (附加题)我们知道，当  $a > 0$  时， $a x^2 + b x + c >= 0$  恒成立  $arrow.l.r.double b^2 - 4 a c <= 0$ . 试用此结论证明：若函数  $f(x)$  在区间  $[0,1]$  上连续，则  $integral_0^1 f^2(x) d x >= (integral_0^1 f(x) d x)^2$ .
   #answer-process[
     由Cauchy-Schwarz不等式，$(integral_0^1 f(x) times 1 d x)^2 <= integral_0^1 f^2(x) d x times integral_0^1 1^2 d x = integral_0^1 f^2(x) d x times 1$
     
     因此 $integral_0^1 f^2(x) d x >= (integral_0^1 f(x) d x)^2$
   ]
