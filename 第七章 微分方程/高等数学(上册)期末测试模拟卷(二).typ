#import "../template.typ": *

#section[高等数学(上册)期末测试模拟卷(二)]]
#subsection[一、选择题(每小题3分，共15分)]
1. 当  $x -> 0$  时，下列(#answer-choice[B])是  $x$  的三阶无穷小
   #choices(
   [$root(3,x^2) - sqrt(x)$],
   [$sqrt(a + x^3) - sqrt(a)$  ( $a > 0$  是常数)],
   [$x^3 + 0.0001 x^2$],
   [$root(3, tan x)$]
   )
   
2. 设函数  $f(x)$  满足关系式  $f''(x) + [f'(x)]^2 = x$ ，且  $f'(0) = 0$ ，则下列选项中正确的是(#answer-choice[B]).
   #choices(
   [$f(0)$  是  $f(x)$  的极大值],
   [$f(0)$  是  $f(x)$  的极小值],
   [$(0, f(0))$  是曲线  $y = f(x)$  的拐点],
   [$f(0)$  不是  $f(x)$  的极值，  $(0,f(0))$  也不是曲线  $y = f(x)$  的拐点]
   )
   
3. 函数  $f(x) = sin x/(x(x - 1)(x - pi))$  的无穷间断点的个数为(#answer-choice[A]).
   #choices(
   [1],
   [2],
   [3],
   [4]
   )
   
4.下列不定积分的计算不正确的是(#answer-choice[C])
   #choices(
   [$integral (dif x)/(sqrt(4 - x^2)) = arcsin(x/2) + C$],
   [$integral (dif x)/(x^2 + 2x + 2) = arctan(x + 1) + C$],
   [$integral sin^2 x dif x = 1/3 sin^3 x + C$],
   [$integral 2^x dot 3^x dif x = (2^x dot 3^x)/(ln 2 + ln 3) + C$]
   )
   
5.下列方程中(#answer-choice[D])为一阶线性微分方程
   #choices(
   [$y' + x y^2 = e^x$],
   [$y y' + x y = e^x$],
   [$y' = cos y + x$],
   [$y' = x + y sin x$]
   )
   
#subsection[二、填空题(每小题3分，共18分)]
6. 设函数  $f(x) = cases( x sin(1/x) + (sin(a x))/x &"if" x > 0, e^x - 2 &"if" x <= 0 )$  要使得  $f(x)$  在点  $x = 0$  处连续，则  $a = $ #blank[$-1$]
   #answer-process[
   要使函数在 $x = 0$ 处连续，需要 $lim_(x -> 0^-) f(x) = lim_(x -> 0^+) f(x) = f(0)$。
   
   左极限：$lim_(x -> 0^-) (e^x - 2) = e^0 - 2 = -1$
   
   右极限：$lim_(x -> 0^+) (x sin(1/x) + (sin(a x))/x)$
   - 第一项：$x sin(1/x) -> 0$（因为 $|sin(1/x)| <= 1$，所以 $|x sin(1/x)| <= |x| -> 0$）
   - 第二项：$(sin(a x))/x = a dot (sin(a x))/(a x) -> a dot 1 = a$（当 $x -> 0$）
   
   所以右极限 $= 0 + a = a$
   
   由连续性：$a = -1$
   ]
   
7. 曲线  $cases( x = e^t + ln (1 + t^2), y = arctan t )$  在点  $t = 0$  处的切线方程为 #blank[$y = x - 1$]
   #answer-process[
   在 $t = 0$ 时：
   - $x = e^0 + ln(1 + 0) = 1 + 0 = 1$
   - $y = arctan 0 = 0$
   - 点为 $(1, 0)$
   
   求导：
   - $d x/d t = e^t + (2t)/(1 + t^2)$，在 $t = 0$：$d x/d t = 1 + 0 = 1$
   - $d y/d t = 1/(1 + t^2)$，在 $t = 0$：$d y/d t = 1$
   
   斜率：$d y/d x = (d y"/"d t)/(d x"/"d t) = 1/1 = 1$
   
   切线方程：$y - 0 = 1(x - 1)$，即 $y = x - 1$
   ]
   
8.函数  $f(x) = 2^x$  的带有拉格朗日余项的三阶麦克劳林公式为 #blank[$1 + x ln 2 + (x^2(ln 2)^2)/2 + (x^3(ln 2)^3)/6 + (2^xi(ln 2)^4 x^4)/24$，其中 $xi$ 在 $0$ 与 $x$ 之间]
   #answer-process[
   $f(x) = 2^x$，求各阶导数：
   - $f(0) = 2^0 = 1$
   - $f'(x) = 2^x ln 2$，$f'(0) = ln 2$
   - $f''(x) = 2^x (ln 2)^2$，$f''(0) = (ln 2)^2$
   - $f'''(x) = 2^x (ln 2)^3$，$f'''(0) = (ln 2)^3$
   - $f^((4))(x) = 2^x (ln 2)^4$
   
   带拉格朗日余项的三阶麦克劳林公式：
   $f(x) = 1 + x ln 2 + (x^2(ln 2)^2)/2 + (x^3(ln 2)^3)/6 + (2^xi(ln 2)^4 x^4)/24$
   ]
   
9.曲线  $y = ln sec x$  在点  $(x,y)$  处的曲率为 #blank[$|cos x|$]
   #answer-process[
   $y = ln sec x = -ln cos x$
   - $y' = tan x$
   - $y'' = sec^2 x$
   
   曲率：$k = |y''|/((1 + (y')^2)^(3"/"2)) = |sec^2 x|/((1 + tan^2 x)^(3"/"2)) = sec^2 x/(sec^3 x) = 1/sec x = |cos x|$
   ]
   
10.  $integral_(-1)^(1)(x^2 sin x + 1 - x^2)/(sqrt(1 - x^2)) dif x = #blank[$pi/2$]$
   #answer-process[
   拆分：$integral_(-1)^(1) (x^2 sin x)/(sqrt(1 - x^2)) d x + integral_(-1)^(1) (1 - x^2)/(sqrt(1 - x^2)) d x$
   
   第一部分是奇函数，积分为 $0$
   
   第二部分：$integral_(-1)^(1) sqrt(1 - x^2) d x$ 是半圆面积 $= pi r^2/2 = pi/2$
   
   所以总积分 $= 0 + pi/2 = pi/2$
   ]
   
11. 微分方程  $(1 + y)^2 d y/d x + x^3 = 0$  的通解为 #blank[$(1 + y)^3 = -3x^4/4 + C$ 或 $1 + y = root(3, -3x^4/4 + C)$]
   #answer-process[
   $(1 + y)^2 d y/d x = -x^3$
   
   分离变量：$(1 + y)^2 d y = -x^3 d x$
   
   积分：$integral (1 + y)^2 d y = integral -x^3 d x$
   
   得：$(1 + y)^3/3 = -x^4/4 + C_1$
   
   整理：$(1 + y)^3 = -3x^4/4 + C$（其中 $C = 3C_1$）
   ]
   
   得：$(1 + y)^3/3 = -x^4/4 + C_1$
   
   整理：$(1 + y)^3 = -3x^4/4 + C$（其中 $C = 3C_1$）
   ]
   
#subsection[三、计算题(12～15题每小题7分，16～17题每小题8分，共44分)]
12. 求  $lim_(x -> 0) ((integral_0^x e^(t^2) dif t)^2)/(integral_0^x t e^(2 t^2) dif t)$ .
   
13. 已知函数  $y = f(x)$  由方程  $e^y + x y - 2x - 1 = 0$  所确定，求  $y''(0)$ .
   
14. 求  $integral e^(sqrt(x)) dif x$
   
15. 求  $integral_(-pi/4)^(pi/2) sqrt(cos x - cos^3 x) dif x$ .
   
16. 设函数  $f(x) = cases( 1/(1 + x^2) &"if" x <= 0, ln x &"if" x > 0 )$  求  $integral_(-1)^(1) x f(x) dif x$.
   
17. 求曲线  $y = (x - 1) root(3,x^2)$  的凹凸区间及拐点
   
#subsection[四、应用题(每小题9分，共18分)]
18. 要造一个长方体无盖蓄水池，其容积为  $500$ m³，底面为正方形。设底面与四壁所使用材料的单位造价相同，问：底边和高分别为多少时，才能使所用材料费最省？
   
19. 求由曲线  $y = x^(3/2)$  ，直线  $x = 4$  及  $x$  轴所围成图形的面积，并求此图形绕  $x$  轴旋转一周所得旋转体的体积。
   
#subsection[五、证明题(5分)]
20. 设函数  $f(x)$  在区间  $[0,1]$  上连续，在  $(0,1)$  内可导，且  $integral_0^1 f(x) dif x = 0$  ，证明：必存在  $xi in (0,1)$ ，使得
$$
2 f (xi) = - xi f ^ {prime } (xi).
$$
#pagebreak()
#align(center)[