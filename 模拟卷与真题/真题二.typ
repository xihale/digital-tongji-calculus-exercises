#import "../template.typ": *

#section[高等数学(上册)期末测试真题(二)]
#subsection[一、选择题(每小题3分，共30分)]
1. 若  $lim_(x->infinity)(a x^3 + b x^2 + 2)/(x^2 + 2) = 1(a,b$  为常数), 则(#h(2em)).
   #choices(
   [$a = 0, b in R$],
   [$a = 0, b = 1$],
   [$a in R, b = 1$],
   [$a in R, b in R$]
   )
2.当  $x->infinity$  时，  $x cos x$  is(#h(2em))
   #choices(
   [无穷小],
   [无穷大],
   [有界但不是无穷小],
   [无界但不是无穷大]
   )
3. 设函数  $y = e^(2x - 1)$ ，则  $y^(20)(1) = (#h(2em))$ .
   #choices(
   [$2^20 e$],
   [$2^20 e^(-1)$],
   [$2^20$],
   [e]
   )
4.当  $x->0$  时，(#h(2em))是  $x - sin x$  的同阶无穷小
   #choices(
   [$x + tan x$],
   [$x tan x$],
   [$x^2 + tan x$],
   [$x^2 tan x$]
   )
5.  $x = 1$  是函数  $f(x) = (ln x)/|x - 1|$  的(#h(2em)).
   #choices(
   [可去间断点],
   [跳跃间断点],
   [无穷间断点],
   [振荡间断点]
   )
6. 设函数  $y = f(x)$  具有二阶导数，且  $f'(x) > 0, f''(x) < 0, Delta x$  为自变量在点  $x_0$  处的增量， $Delta y$  与  $d y$  分别为  $f(x)$  在点  $x_0$  处对应的增量与微分。若  $Delta x > 0$ ，则(#h(2em)).
   #choices(
   [$0 <   d y <   Delta y$],
   [$0 < Delta y < d y$],
   [$Delta y < d y < 0$],
   [$d y < Delta y < 0$]
   )
7. 设函数  $f(x)$  的一个原函数为  $x e^(-x)$ ，则  $f'(x) = (#h(2em))$ .
   #choices(
   [$x e^(-x)$],
   [$(1 - x) e^(-x)$],
   [$(2 + x) e^(-x)$],
   [$(-2 + x) e^(-x)$]
   )
8. 设函数  $f(x)$  在点  $x_0$  的某邻域内可导，且  $lim_(x -> x_0) (f'(x))/(x - x_0) = a (a < 0)$ ，则(#h(2em)).
   #choices(
   [$f(x_0)$  是  $f(x)$  的极小值],
   [$f(x_0)$  是  $f(x)$  的极大值],
   [在点  $x_0$  的某邻域内  $f(x)$  单调增加],
   [在点  $x_0$  的某邻域内  $f(x)$  单调减少]
   )
9. 设函数  $f(x)$  连续，则  $lim_(x -> 2) (1/(x - 2)) integral_(4)^(2x) f(t/2) dif t = (#h(2em))$ .
   #choices(
   [$f(2)$],
   [$f(1)$],
   [${2f}(2)$],
   [$2f(1)$]
   )
10. 如果连续函数  $f(x)$  满足关系式  $f(x) = 2 integral_(0)^(x) f(t) dif t + ln 2$ ，则  $f(x) = (#h(2em))$ .
    #v(0.5em)
    #choices(
    [$e^x ln 2$],
    [$e^{2x} ln 2$],
    [$e^x + ln 2$],
    [$e^{2x} + ln 2$]
    )
#subsection[二、填空题(每小题3分，共18分)]
11.  $lim_(x->0^+)(1 + sin x)^(ln x) = (#h(2em))$  
12. 若  $lim_(h->0)(f(1 - 2h) - f(1))/h = 6$ ，则  $f'(1) = \_$
13.  $integral_(-1)^(1)(x^2 + sqrt(4 - x^2) bullet sin x) dif x =$  
14. 设参数方程  $cases( x = f(t) - pi, y = f(e^(2t) - 1), )$  函数  $f$  可导，且  $f'(0) != 0$ ，则  $(d y)/(d x|_(t=0) =)$  #blank().  
15. 曲线  $y = -3/2 x^3 + 9/2 x^2$  在其拐点处的切线方程是  
16. 微分方程  $y' = 1/(x + y)$  的通解为
#subsection[三、计算题(每小题7分，共35分)]
17. 求  $lim_(x -> 0^+) (tan 3x)^(1/(2 ln x))$ .
    #answer-space
18. 求  $integral (1 - sqrt(3x + 2))/(1 + sqrt(3x + 2)) dif x$.
    #answer-space
19. 求微分方程  $y'' - y' - 2y = (1 - 2x) e^x$  的通解
    #answer-space
20. 求  $integral_(0)^(+infinity) x^2 e^(-x) dif x$ .
    #answer-space
21. 求函数  $f(x) = (2x + 3) e^(2/x)$  的单调区间、极值以及渐近线方程
    #answer-space
#subsection[四、应用题(10分)]
22. 设函数  $f(x)$  在区间  $[0,1]$  上连续，在  $(0,1)$  内大于零，且满足  $x f'(x) = f(x) - 3x^2$ ，曲线  $y = f(x)$  与直线  $x = 0, x = 1, y = 0$  所围成图形  $D$  的面积为 2。求：
    (1)函数  $f(x)$  
    (2)  $D$  绕  $x$  轴旋转一周所得旋转体的体积
#subsection[五、选答题(7分)(考生可从下面2个题中任选1个作答，多做不多得分)]
23. 已知函数  $f(x)$  在区间  $[0,1]$  上连续，在  $(0,1)$  内可导，且满足  $f(0) = 0, f(1) = 1$ ，证明：
    (1) 存在  $xi in (0, 1)$ , 使得  $f(xi) = 1 - xi$ ;  
    (2)存在不同的  $eta_1, eta_2 in (0,1)$  ，使得  $f'(eta_1) f'(eta_2) = 1$.
24. 已知  $y = f(x)$  是由方程  $x cos y + sin x + e^y = 1$  所确定的隐函数，求：
    (1)  $(d y)/(d x)$ ;  
    (2)  $lim_(x->0)[(1 - f(x))/(1 + f(x))]^(1/x)$.