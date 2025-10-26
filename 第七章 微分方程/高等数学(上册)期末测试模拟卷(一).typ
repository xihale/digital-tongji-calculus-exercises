#import "../template.typ": *

#section[高等数学(上册)期末测试模拟卷(一)]
#subsection[一、选择题(每小题3分，共15分)]
1. 当  $x -> 0$  时，下列(#answer-choice[B])是  $x$  的同阶(不等价)无穷小。
   #choices(
   [$sin x - x$],
   [$ln (1 - x)$],
   [$x^2 sin x$],
   [$e^x - 1$]
   )
   
2.下列命题中不正确的是(#answer-choice[D])
   #choices(
   [若函数  $f(x)$  在点  $x_0$  处不连续，则  $f(x)$  在点  $x_0$  处必不可导],
   [若  $lim_(x -> x_0) f(x)$  不存在, 则函数  $f(x)$  在点  $x_0$  处不连续],
   [若函数  $f(x)$  在点  $x_0$  处可导，则  $f(x)$  在点  $x_0$  处必可微],
   [若函数  $f(x)$  在区间  $[a, b]$  上可积，则  $f(x)$  在  $[a, b]$  上必连续]
   )
   
3. 设函数  $f(x) = (1 + e^(1/x))/(3 + 2 e^(1/x))$ ，则  $x = 0$  是  $f(x)$  的(#answer-choice[A]).
   #choices(
   [跳跃间断点],
   [可去间断点],
   [无穷间断点],
   [振荡间断点]
   )
   
4.下列不定积分的计算不正确的是(#answer-choice[D])
   #choices(
   [$integral (dif x)/(sqrt(4 - x^2)) = arcsin(x/2) + C$],
   [$integral (dif x)/(x^2 - 2x + 2) = arctan(x - 1) + C$],
   [$integral 2^x dot 3^x dif x = (2^x dot 3^x)/(ln 2 + ln 3) + C$],
   [$integral (x)/(1 + x^2) dif x = arctan x + C$]
   )
   
5.下列反常积分收敛的是(#answer-choice[B])
   #choices(
   [$integral_(1)^(+infinity)(dif x)/(sqrtx)$],
   [$integral_(-infinity)^(+infinity) (dif x)/(x^2 + 4x + 5)$],
   [$integral_(0)^(1) (dif x)/(x^2)$],
   [$integral_(-1)^(1) (dif x)/x$]
   )
   
#subsection[二、填空题(每小题3分，共18分)]
6. 设函数  $f(x) = cases( (sin 3x)/(ln(1 + x)) &"if" -1 < x < 0, a sec x + 1 &"if" x >= 0 )$  在点  $x = 0$  处连续，则  $a =$  #blank[$2$].
   #answer-process[
   由于函数在 $x = 0$ 处连续，需要满足 $lim_(x -> 0^-) f(x) = lim_(x -> 0^+) f(x) = f(0)$。
   
   计算左极限（使用洛必达法则或等价无穷小）：
   $lim_(x -> 0^-) (sin 3x)/(ln(1 + x)) = lim_(x -> 0^-) (3x)/(x) = 3$
   
   计算右极限和函数值：
   $lim_(x -> 0^+) (a sec x + 1) = f(0) = a dot 1 + 1 = a + 1$
   
   由连续性：$3 = a + 1$，因此 $a = 2$。
   ]
   
7. 已知参数方程  $cases( x = ln (1 + t^2), y = t - arctan t, )$  则  $(d y)/(d x =)$ #blank[$t/2$]
   #answer-process[
   参数方程求导：$d y/d x = (d y"/"d t)/(d x"/"d t)$
   
   $d x/d t = (2t)/(1 + t^2)$，$d y/d t = 1 - 1/(1 + t^2) = t^2/(1 + t^2)$
   
   因此 $d y/d x = (t^2/(1 + t^2))/((2t)/(1 + t^2)) = t^2/(1 + t^2) dot (1 + t^2)/(2t) = t/2$
   ]
   
8. 函数  $f(x) = x e^x$  的带有拉格朗日余项的三阶麦克劳林公式为 #blank[$x + x^2 + x^3/2 + (e^xi (3 + xi))/(4!) x^4$，其中 $xi$ 在 $0$ 与 $x$ 之间]
   #answer-process[
   设 $f(x) = x e^x$，求各阶导数在 $x = 0$ 处的值：
   - $f(0) = 0$
   - $f'(x) = e^x + x e^x = (1 + x)e^x$，$f'(0) = 1$
   - $f''(x) = e^x + (1 + x)e^x = (2 + x)e^x$，$f''(0) = 2$
   - $f'''(x) = e^x + (2 + x)e^x = (3 + x)e^x$，$f'''(0) = 3$
   - $f^((4))(x) = e^x + (3 + x)e^x = (4 + x)e^x$
   
   带拉格朗日余项的三阶麦克劳林公式：
   $f(x) = f(0) + f'(0)x + (f''(0))/(2!)x^2 + (f'''(0))/(3!)x^3 + (f^((4))(xi))/(4!)x^4$
   $= 0 + x + (2x^2)/2 + (3x^3)/6 + (e^xi(4 + xi))/(24)x^4$
   $= x + x^2 + x^3/2 + (e^xi(4 + xi))/(24)x^4$，其中 $xi$ 在 $0$ 与 $x$ 之间
   ]
   
9. 曲线  $y = 4x - x^2$  在其顶点处的曲率  $k =$ #blank[$2$]
   #answer-process[
   $y = 4x - x^2$，顶点在 $x = 2$（由 $y' = 4 - 2x = 0$ 得）
   
   $y' = 4 - 2x$，在 $x = 2$ 时，$y' = 0$
   $y'' = -2$
   
   曲率公式：$k = |y''|/((1 + (y')^2)^(3"/"2)) = |-2|/((1 + 0)^(3"/"2)) = 2/1 = 2$
   ]
   
10.  $integral_(-2)^(2)(x|sin x| + 4 - x^2)/(sqrt(4 - x^2)) dif x = #blank[$2 pi$]$
   #answer-process[
   $integral_(-2)^(2) (x|sin x| + 4 - x^2)/(sqrt(4 - x^2)) d x$
   
   拆分为两部分：
   - 第一部分：$integral_(-2)^(2) (x|sin x|)/(sqrt(4 - x^2)) d x$
     
     注意 $f(x) = (x|sin x|)/(sqrt(4 - x^2))$ 是奇函数，因为 $f(-x) = (-x|sin(-x)|)/(sqrt(4 - x^2)) = (-x|sin x|)/(sqrt(4 - x^2)) = -f(x)$
     
     所以在对称区间 $[-2, 2]$ 上积分为 $0$。
   
   - 第二部分：$integral_(-2)^(2) (4 - x^2)/(sqrt(4 - x^2)) d x = integral_(-2)^(2) sqrt(4 - x^2) d x$
     
     这是半径为 $2$ 的上半圆的面积：$integral_(-2)^(2) sqrt(4 - x^2) d x = (1/2) pi r^2 = (1/2) pi dot 4 = 2 pi$
   
   因此总积分 $= 0 + 2 pi = 2 pi$
   ]
   
11. 微分方程  $(d y)/(d x = (1 + y^2) e^x)$  的通解为 #blank[$y = tan(e^x + C)$]
   #answer-process[
   $(d y)/(d x) = (1 + y^2)e^x$
   
   分离变量：$(d y)/(1 + y^2) = e^x d x$
   
   两边积分：$integral (d y)/(1 + y^2) = integral e^x d x$
   
   得：$arctan y = e^x + C$
   
   所以通解为：$y = tan(e^x + C)$
   ]
   
#subsection[三、计算题(12～15题每小题7分，16～17题每小题8分，共44分)]
12. 求  $lim_(x -> +infinity) (integral_0^x arctan^2 t dif t)/(sqrt(x^2 + 1))$ .  
   
13. 已知函数  $y(x)$  由方程  $x^3 + y^3 - 3x + 3y - 2 = 0$  所确定，求  $y''(1)$ .  
   
14. 求  $integral arctan sqrt(x) dif x$ .
   
15. 求  $integral_(0)^(pi) x^2 |cos x| dif x$ .
   
16. 设函数  $f(x) = cases( 1 + x^2 &"if" x < 0, e^(-x) &"if" x >= 0 )$  求  $integral_(1)^(3) f(x - 2) dif x$.
   
17. 求曲线  $y = x^4 (12 ln x - 7)$  的凹凸区间及拐点
   
#subsection[四、应用题(每小题9分，共18分)]
18. 要做一个容积为  $2 pi$  的密闭圆柱形罐头筒，问：半径和高分别为多少时能使所用材料最省？
   
19. 求由抛物线  $y^2 = 2x$  与直线  $y = x - 4$  所围成图形的面积，并求此图形绕  $y$  轴旋转一周所得旋转体的体积.
   
#subsection[五、证明题(5分)]
20. 若函数  $f(x)$  在区间  $(a, b)$  内具有二阶导数且  $f(x_1) = f(x_2) = f(x_3)$ ，其中  $a < x_1 < x_2 < x_3 < b$ ，证明：在  $(a, b)$  内至少存在一点  $xi$ ，使得  $f''(xi) = 0$ .
   
#pagebreak()
#align(center)[