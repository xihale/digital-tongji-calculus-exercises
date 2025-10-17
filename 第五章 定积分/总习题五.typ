#import "../template.typ": *

#section[总习题五]
#subsection[一、选择题]
1. 设  $I = integral_(a)^(b) f(x) dif x$ ，根据定积分的几何意义可知(#h(2em))
   #choices(
   [ $I$  是由曲线  $y = f(x)$  及直线  $x = a, x = b$  与  $x$  轴所围成图形的面积，所以  $I > 0$ ],
   [若  $I = 0$ , 则上述图形面积为零, 从而图形的“高”  $f(x) = 0$ ],
   [ $I$  是曲线  $y = f(x)$  及直线  $x = a, x = b$  与  $x$  轴之间各部分面积的代数和],
   [ $I$  是由曲线  $y = |f(x)|$  及直线  $x = a, x = b$  与  $x$  轴所围成图形的面积]
   )

2. 函数  $f(x)$  在区间  $[a, b]$  上连续是  $f(x)$  在  $[a, b]$  上可积的(#h(2em)).
   #choices(
   [必要条件],
   [充分条件],
   [充要条件],
   [无关条件]
   )

3. 若函数  $f(x) = cases( x &"if" x >= 0, e^x &"if" x < 0 )$  则  $integral_(-1)^(2) f(x) dif x = (#h(2em))$ .
   #choices(
   $3 - e^(-1)$,
   $3 + e^(-1)$,
   $3 - e$,
   $3 + e$
   )

4. 设函数  $f(x)$  连续， $x > 0$ ，且  $integral_(1)^(x^2) f(t) dif t = x^2 (x - 1)$ ，则  $f(2) = (#h(2em))$ .
   #choices(
   $(3 sqrt(2))/2 - 1$,
   $2 sqrt(2) - 12$,
   $12 - 2 sqrt(2)$,
   $1 - (3 sqrt(2))/2$
   )

5. 若函数  $f(x) = cases( (integral_0^x (e^(t^2) - 1) dif t)/x^2 &"if" x != 0, a &"if" x = 0 )$  且已知  $f(x)$  在点  $x = 0$  处连续，则必有(#h(2em)).
   #choices(
   $a = 1$,
   $a = 2$,
   $a = 0$,
   $a = -1$
   )

#subsection[二、填空题]
6.  $d/(d x) integral_(a)^(b) arctan x dif x = #blank()$  

7.  $integral_(-pi/2)^(pi/2) sqrt(1 - cos^2 x) dif x = #blank()$

8. 由区间  $[a, b]$  上连续曲线  $y = f(x)$ , 直线  $x = a, x = b (a < b)$  和  $x$  轴所围成图形的面积为  $S = #blank()$ .

9.  $integral_(-1)^0 |3x + 1| dif x = #blank()$

10. 已知  $x e^x$  为函数  $f(x)$  的一个原函数, 则  $integral_(0)^(1) x f'(x) dif x = #blank()$

#subsection[三、计算题]
11. 计算下列定积分：\
    (1)  $integral_(1)^(e) (ln x)/x dif x$;
    #answer-space
    (2)  $lim_(x->0) (integral_0^x 2t cos t dif t)/(1 - cos x)$;
    #answer-space
    (3)  $integral_(-1)^(1) (x)/(sqrt(5 - 4x)) dif x$;
    #answer-space
    (4)  $integral_(1)^(2) x log_(2) x  dif x$ ;
    #answer-space
    (5)  $integral_(1)^(e) sin ln x dif x$.
    #answer-space
#subsection[四、证明题]
12. 设  $f''(x)$  在区间  $[a, b]$  上连续，证明：
$ integral_a^b x f''(x) d x = [b f'(b) - f(b)] - [a f'(a) - f(a)] $