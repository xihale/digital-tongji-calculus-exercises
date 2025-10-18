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
   #answer-choice[(B)]

3. 若函数  $f(x) = cases( x &"if" x >= 0, e^x &"if" x < 0 )$  则  $integral_(-1)^(2) f(x) dif x = (#h(2em))$ .
   #choices(
   $3 - e^(-1)$,
   $3 + e^(-1)$,
   $3 - e$,
   $3 + e$
   )
   #answer-choice[(A)]

4. 设函数  $f(x)$  连续， $x > 0$ ，且  $integral_(1)^(x^2) f(t) dif t = x^2 (x - 1)$ ，则  $f(2) = (#h(2em))$ .
   #choices(
   $(3 sqrt(2))/2 - 1$,
   $2 sqrt(2) - 12$,
   $12 - 2 sqrt(2)$,
   $1 - (3 sqrt(2))/2$
   )
   #answer-choice[(C)]

5. 若函数  $f(x) = cases( (integral_0^x (e^(t^2) - 1) dif t)/x^2 &"if" x != 0, a &"if" x = 0 )$  且已知  $f(x)$  在点  $x = 0$  处连续，则必有(#h(2em)).
   #choices(
   $a = 1$,
   $a = 2$,
   $a = 0$,
   $a = -1$
   )
   #answer-choice[(C)]

#subsection[二、填空题]
6.  $d/(d x) integral_(a)^(b) arctan x dif x = #blank(0)$  

7.  $integral_(-pi/2)^(pi/2) sqrt(1 - cos^2 x) dif x = #blank(4)$

8. 由区间  $[a, b]$  上连续曲线  $y = f(x)$ , 直线  $x = a, x = b (a < b)$  和  $x$  轴所围成图形的面积为  $S = #blank($integral_(a)^(b) abs(f(x)) dif x$)$ .

9.  $integral_(-1)^0 |3x + 1| dif x = #blank(2/3)$

10. 已知  $x e^x$  为函数  $f(x)$  的一个原函数, 则  $integral_(0)^(1) x f'(x) dif x = #blank($1 - 2 e$)$

#subsection[三、计算题]
11. 计算下列定积分：\
    (1)  $integral_(1)^(e) (ln x)/x dif x$;
    #answer-process[
      令 $u = ln x$，$dif u = dif x / x$。当 $x = 1$ 时 $u = 0$；当 $x = e$ 时 $u = 1$。
      $integral_1^e frac(ln x, x) dif x = integral_0^1 u dif u = [u^2/2]_0^1 = 1/2$
    ]

    (2)  $lim_(x->0) (integral_0^x 2t cos t dif t)/(1 - cos x)$;
      #answer-process[
         分子分母都在 $x -> 0$ 时趋于 $0$，用洛必达法则。
         $lim_(x -> 0) frac(integral_(0)^(x) 2 t cos t dif t, 1 - cos x) = lim_(x -> 0) frac(2 x cos x, sin x)$
      
         再用洛必达：$= lim_(x -> 0) frac(2 cos x - 2 x sin x, cos x) = frac(2, 1) = 2$
      ]

    (3)  $integral_(-1)^(1) (x)/(sqrt(5 - 4x)) dif x$;
      #answer-process[
         令 $u = 5 - 4 x$，$dif u = -4 dif x$，因此 $x = (5 - u)/4$，$dif x = -frac(dif u, 4)$。
         当 $x = -1$ 时 $u = 9$；当 $x = 1$ 时 $u = 1$。
      
         $integral_(-1)^(1) frac(x, sqrt(5 - 4 x)) dif x = integral_(9)^(1) frac((5 - u)/4, sqrt(u)) · frac(-dif u, 4)$
      
         $= integral_(1)^(9) frac(5 - u, 16 sqrt(u)) dif u$
      
         $= frac(1, 16) integral_(1)^(9) (5 u^(-1/2) - u^(1/2)) dif u$
      
         $= frac(1, 16) [10 sqrt(u) - frac(2, 3) u^(3/2)]_1^9 = frac(1, 6)$
      ]

    (4)  $integral_(1)^(2) x log_(2) x  dif x$ ;
      #answer-process[
         分部积分：令 $u = log_2 x$，$dif v = x dif x$，则 $v = x^2/2$。
         $integral_(1)^(2) x log_2 x dif x = [frac(x^2, 2) log_2 x]_1^2 - integral_(1)^(2) frac(x^2, 2) · frac(1, x ln 2) dif x$
      
         $= 2 - frac(1, 2 ln 2) integral_(1)^(2) x dif x = 2 - frac(1, 2 ln 2) [frac(x^2, 2)]_1^2$
      
         $= 2 - frac(3, 4 ln 2)$
      ]

    (5)  $integral_(1)^(e) sin ln x dif x$.
    #answer-process[
      分部积分：令 $u = sin ln x$，$dif v = dif x$，则 $v = x$。
         $integral_(1)^(e) sin ln x dif x = [x sin ln x]_1^e - integral_(1)^(e) x · cos ln x · frac(1, x) dif x$
      
         $= e sin 1 - integral_(1)^(e) cos ln x dif x$
      
         对 $integral cos ln x dif x$ 也分部积分（如第四章第三节中的做法）...最终结果：
         $= frac(e, 2) (sin 1 + cos 1) - frac(1, 2) (sin 0 + cos 0) = frac(e, 2) (sin 1 + cos 1) - frac(1, 2)$
    ]

#subsection[四、证明题]
12. 设  $f''(x)$  在区间  $[a, b]$  上连续，证明：
$ integral_a^b x f''(x) d x = [b f'(b) - f(b)] - [a f'(a) - f(a)] $
   #answer-process[
     使用分部积分。令 $u = x$，$dif v = f''(x) dif x$，则 $dif u = dif x$，$v = f'(x)$。
     
     $integral_a^b x f''(x) dif x = [x f'(x)]_a^b - integral_a^b f'(x) dif x$
     
     $= [b f'(b) - a f'(a)] - [f(b) - f(a)]$
     
     $= b f'(b) - a f'(a) - f(b) + f(a)$
     
     $= [b f'(b) - f(b)] - [a f'(a) - f(a)]$ ✓
   ]