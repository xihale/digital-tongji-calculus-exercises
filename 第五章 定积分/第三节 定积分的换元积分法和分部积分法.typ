#import [../template.typ]: section, subsection, choices, answer-space

#section[第三节 定积分的换元积分法和分部积分法]
#subsection[一、判断题(如果错误，请加以改正)]
1.  $integral_(1)^(2)(dif x)/((11 + 5x)^3) = (1/5) integral_(1)^(2) (diff u)/(u^3) = (1/5) dot (-1/2 u^(-2) |_(1)^(2)) = 3/40, quad (text{令} u = 11 + 5x)$  
2.  $integral_(-pi/2)^(pi/2) x^2 sqrt(1 - cos^2 x) dif x = integral_(-pi/2)^(pi/2) x^2 sin x diff x$  ，由于  $x^2 sin x$  是奇函数，因此有
$$
integral_ (- pi/2) ^ (pi/2) x ^ 2 sqrt (1 - cos ^ 2 x) d x = integral_ (- pi/2) ^ (pi/2) x ^ 2 sin x d x = 0. tag ()
$$
#subsection[二、计算题]
3. 计算下列定积分：
   (1)  $integral_(-sqrt(2))^(sqrt(2)) sqrt(2 - x^2) dif x$;  
   #answer-space
   (2)  $integral_(-pi/2)^(pi/2) cos x cos 2x dif x$;
   #answer-space
   (3)  $integral_(1)^(sqrt(3)) (dif x)/(x^2 sqrt(1 + x^2))$;  
   #answer-space
   (4)  $integral_(1)^(4) (dif x)/(1 + sqrt(x))$ ;  
   #answer-space
   (5)  $integral_(1)^(e^2) (dif x)/(x sqrt(1 + ln x))$;
   #answer-space
   (6)  $integral_(pi/4)^(pi/3) x/(sin^2 x) , dif x$;
   #answer-space
   (7)  $integral_0^1 x arctan x dif x$;  
   #answer-space
   (8)  $integral_(1)^(4) (ln x)/(sqrt(x)) dif x$.
   #answer-space
4. 设函数  $f(x) = x - integral_0^pi f(x) cos x , dif x$ ，求  $f(x)$ .
   #answer-space
5.(附加题)设函数  $f(x) = integral_(1)^(x^2) (sin t)/t , dif t$  ，求  $integral_0^1 x f(x) , dif x$.
   #answer-space
