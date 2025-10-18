#import "../template.typ": *

#section[第一节 不定积分的概念与性质]
#subsection[一、判断题(如果错误，请加以改正)]
1. 有界函数一定存在原函数. (#answer-choice[错]).
   #answer-process[错。例如 $f(x) = cases(1 &"if" x > 0, -1 &"if" x <= 0)$ 有界但无原函数]
   
2. 设函数  $f(x)$  的原函数存在， $k$  为任意常数，则 $integral k f (x) dif x = k integral f (x) dif x. (#answer-choice[正确])$
   #answer-process[正确。这是不定积分的线性性质]

3. 设  $F'(x) = f(x)$  ，则  $[integral dif F(x)]' = f(x) + C.$  (#answer-choice[错]).
   #answer-process[错。应为 $[integral dif F(x)]' = [F(x) + C]' = f(x)$，右边不应有$+C$]
#subsection[二、计算题]
4. 计算下列不定积分：\
   (1)  $integral (dif x)/(x^2 sqrt(x)) = integral x^(-5/2) dif x = -2 x^(-3/2) + C$
   
   (2)  $integral x^2 root(3,x) dif x = integral x^(7/3) dif x = 3/10 x^(10/3) + C$;
   
   (3)  $integral (1 + sin 2x)/(cos x + sin x) dif x = integral (sin^2 x + cos^2 x + 2 sin x cos x) / (cos x + sin x) dif x = integral (sin x + cos x) dif x = sin x - cos x + C$ ;
   
   (4)  $integral (x^4)/(1 + x^2) dif x = integral [x^2 - 1 + 1/(1+x^2)] dif x = x^3/3 - x + arctan x + C$ ;
   
   (5)  $integral (cos 2x)/(cos^2 x sin^2 x) dif x = integral (cos^2 x - sin^2 x) / (cos^2 x sin^2 x) dif x = integral (sec^2 x - csc^2 x) dif x = tan x + cot x + C$ ;
   
   (6)  $integral (3 dot 2^x - 2 dot 3^x)/(3^x) dif x = integral [3(2/3)^x - 2] dif x = -3(2/3)^x / ln(3/2) - 2x + C$.

5. 一曲线过点  $(e^2, 3)$ ，且该曲线在任一点处的切线斜率等于该点横坐标的倒数，求该曲线的方程.
   #answer-process[
     $y' = 1/x$，所以 $y = integral 1/x dif x = ln|x| + C$
     
     由过点 $(e^2, 3)$ 得：$3 = ln e^2 + C = 2 + C$，所以 $C = 1$
     
     曲线方程：$y = ln x + 1$
   ]

6. 已知函数  $F(x)$  的导函数为  $1/sqrt(1 - x^2)$ ，且当  $x = 1$  时函数值为  $(3pi)/2$ ，试求此函数。
   #answer-process[
     $F'(x) = 1/sqrt(1-x^2)$，所以 $F(x) = arcsin x + C$
     
     由 $F(1) = 3pi/2$ 得：$pi/2 + C = 3pi/2$，所以 $C = pi$
     
     $F(x) = arcsin x + pi$
   ]

#subsection[三、证明题]
7. 证明:  $arcsin (2x - 1)$ ,  $arccos (1 - 2x)$  和  $2 arctan sqrt(x/(1 - x))$  都是  $1/sqrt(x - x^2)$  的原函数.
   #answer-process[
     对每个函数求导验证：
     
     $(arcsin(2x-1))' = 2 / sqrt(1-(2x-1)^2) = 2 / sqrt(4x-4x^2) = 1/sqrt(x-x^2)$ ✓
     
     $(arccos(1-2x))' = -(-2)/sqrt(1-(1-2x)^2) = 2/sqrt(4x-4x^2) = 1/sqrt(x-x^2)$ ✓
     
     类似可验证第三个，因此都是原函数
   ]
