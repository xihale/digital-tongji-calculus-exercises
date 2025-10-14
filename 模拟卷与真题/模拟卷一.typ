#import "../template.typ": section, subsection, choices, answer-space, blank

// #section[高等数学(上册)期末测试模拟卷(一)]
// #subsection[一、选择题(每小题3分，共15分)]
1. 当  $x -> 0$  时，下列( )是  $x$  的同阶(不等价)无穷小。
   #v(0.5em)
   #choices(
   [$sin x - x$],
   [$ln (1 - x)$],
   [$x^{2} sin x$],
   [${e}^{x} - 1$]
   )
#answer-space

2.下列命题中不正确的是( )
   #v(0.5em)
   #choices(
   [若函数  $f(x)$  在点  $x_0$  处不连续，则  $f(x)$  在点  $x_0$  处必不可导],
   [若  $lim_(x -> x_0) f(x)$  不存在, 则函数  $f(x)$  在点  $x_0$  处不连续],
   [若函数  $f(x)$  在点  $x_0$  处可导，则  $f(x)$  在点  $x_0$  处必可微],
   [若函数  $f(x)$  在区间  $[a, b]$  上可积，则  $f(x)$  在  $[a, b]$  上必连续]
   )
#answer-space

3. 设函数  $f(x) = (1 + e^(1/x))/(3 + 2 e^(1/x))$ ，则  $x = 0$  是  $f(x)$  的( ).
   #v(0.5em)
   #choices(
   [跳跃间断点],
   [可去间断点],
   [无穷间断点],
   [振荡间断点]
   )
#answer-space

4.下列不定积分的计算不正确的是( )
   #v(0.5em)
   #choices(
   [$integral (dif x)/(sqrt(4 - x^2)) = arcsin(x/2) + C$],
   [$integral (dif x)/(x^2 - 2x + 2) = arctan(x - 1) + C$],
   [$integral 2^{x} dot 3^{x} dif x = (2^{x} dot 3^{x})/(ln 2 + ln 3) + C$],
   [$integral (dif x)/(x ln x) = ln |ln x| + C$]
   )
#answer-space

5.下列反常积分收敛的是( )
   #v(0.5em)
   #choices(
   [$integral_(1)^(+infinity)(dif x)/(sqrt{x})$],
   [$integral_(-infinity)^(+infinity) (dif x)/(x^2 + 4x + 5)$],
   [$integral_(0)^(1) (dif x)/(x^2)$],
   [$integral_(-1)^(1) (dif x)/x$]
   )
#answer-space

// #subsection[二、填空题(每小题3分，共18分)]
6. 设函数  $f(x) = cases( (sin 3x)/(ln(1 + x)) " if " -1 < x < 0, a sec x + 1 " if " x >= 0 )$  在点  $x = 0$  处连续，则  $a =$  #blank().  
#answer-space

7. 已知参数方程  ${ x = ln (1 + t^2), y = t - arctan t, }$  则  $d y/d x =$  #blank()
#answer-space

8. 函数  $f(x) = x e^x$  的带有拉格朗日余项的三阶麦克劳林公式为 #blank()
#answer-space

9. 曲线  $y = 4x - x^{2}$  在其顶点处的曲率  $k =$  #blank()
#answer-space

10.  $integral_(-2)^(2)(x|sin x| + 4 - x^2)/(sqrt(4 - x^2)) dif x =$ #blank()
#answer-space

11. 微分方程  $d y/d x = (1 + y^2) e^x$  的通解为 #blank()
#answer-space

// #subsection[三、计算题(12～15题每小题7分，16～17题每小题8分，共44分)]
12. 求  $lim_(x -> +infinity) (integral_0^x arctan^2 t , dif t)/(sqrt(x^2 + 1))$ .  
#answer-space

13. 已知函数  $y(x)$  由方程  $x^{3} + y^{3} - 3x + 3y - 2 = 0$  所确定，求  $y''(1)$ .  
#answer-space

14. 求  $integral arctan sqrt(x) , dif x$ .
#answer-space

15. 求  $integral_(0)^(pi) x^{2} |cos x| , dif x$ .
#answer-space

16. 设函数  $f(x) = cases( 1 + x^2 " if " x < 0, e^(-x) " if " x >= 0 )$  求  $integral_(1)^(3) f(x - 2) , dif x$.
#answer-space

17. 求曲线  $y = x^4 (12 ln x - 7)$  的凹凸区间及拐点
#answer-space

// #subsection[四、应用题(每小题9分，共18分)]
18. 要做一个容积为  $2 pi$  的密闭圆柱形罐头筒，问：半径和高分别为多少时能使所用材料最省？
#answer-space

19. 求由抛物线  $y^{2} = 2x$  与直线  $y = x - 4$  所围成图形的面积，并求此图形绕  $y$  轴旋转一周所得旋转体的体积.
#answer-space

// #subsection[五、证明题(5分)]
20. 若函数  $f(x)$  在区间  $(a, b)$  内具有二阶导数且  $f(x_{1}) = f(x_{2}) = f(x_{3})$ ，其中  $a < x_{1} < x_{2} < x_{3} < b$ ，证明：在  $(a, b)$  内至少存在一点  $xi$ ，使得  $f''(xi) = 0$ .
#answer-space