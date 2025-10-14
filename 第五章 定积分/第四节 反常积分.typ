#import "../template.typ": section, subsection, choices, answer-space

#section[第四节 反常积分]
#subsection[一、判断题(如果错误，请加以改正)]
1. 已知  $sin x$  是奇函数, 则  $integral_(-infinity)^(+infinity) sin x  dif x = 0$ . ()  
2.  $integral_(-infinity)^(+infinity) sin x dif x = lim_(b-> +infinity) integral_(-b)^(b) sin x diff x = lim_(b-> +infinity)(-cos b + cos b) = 0.$  (  
3.  $integral_(-2)^(3)(dif x)/x = ln |x| | _(-2)^(3) = ln 3 - ln 2.$  ( )
#subsection[二、计算题]
4. 判定下列反常积分的敛散性，若收敛，计算反常积分的值：
   (1)  $integral_(1)^(+infinity)(dif x)/(x^4)$;
   #answer-space
   (2)  $integral_(-infinity)^(+infinity)(dif x)/(x^2 + 2x + 2)$;
   #answer-space
   (3)  $integral_(2/pi)^(+infinity) (1)/(x^2) sin (1/x) , dif x$;
   #answer-space
   (4)  $integral_0^1 (x)/(sqrt(1 - x^2)) dif x$;
   #answer-space
   (5)  $integral_(1)^(e) (dif x)/(x sqrt(1 - ln^2 x))$.
   #answer-space
5. 当  $k$  为何值时，反常积分  $integral_(2)^(+infinity)(dif x)/(x ln^k x)$  收敛？当  $k$  为何值时，该反常积分发散？又当  $k$  为何值时，该反常积分取得最小值？
   #answer-space
#subsection[三、证明题]
6.(附加题)证明：若函数  $f(x)$  在区间  $(-infinity, +infinity)$  上连续，且  $integral_(-infinity)^(+infinity) f(x) , dif x$  收敛，则  $forall x in (-infinity, +infinity)$ ，恒有
$$
(d/d x) integral_ (- infinity) ^ {x} f (t) diff t = f (x),   (d/d x) integral_ {x} ^ {+ infinity} f (t) diff t = - f (x).
$$
