#import "../template.typ": section, subsection, choices, answer-space, blank

#section[总习题二]
#subsection[一、选择题]
1. 设函数  $f(x) = (x - a) phi(x)$ ，其中函数  $phi(x)$  在点  $x = a$  处连续，则必有( ).
   #v(0.5em)
   #choices(
   [$f'(x) = phi (x)$],
   [$f'(x) = phi (x) + (x - a) phi'(x)$],
   [$f'(a) = phi (a)$],
   [$f'(a) = phi'(a)$]
   )
2. 若函数  $y = f(x)$  有  $f'(x_0) = 1/2$ ，则当  $Delta x -> 0$  时该函数在点  $x = x_0$  处的微分  $d y$  是  $Delta x$  的( ).
   #v(0.5em)
   #choices(
   [同阶无穷小, 但不是等价无穷小],
   [等价无穷小],
   [低阶无穷小],
   [高阶无穷小]
   )
#subsection[二、填空题]
3. 设函数  $s = e^(-t) cos 3t + sin 1$ ，则  $d s/d t =$  #blank.
4.设函数  $y = 2^(ln tan x)$  ，则  $d y =$
5. 设函数  $y = x/(1 - 2 sin x) - ln (4 - x)$ ，则  $y' |_x = pi =$
6.曲线  $y = 2x^3 - 5x^2 + 4x - 5$  上点(2，一1)处的法线方程是
7. 设  $f(x)$  是可导函数， $Delta x$  是自变量在点  $x$  处的增量，则有  $lim_(Delta x -> 0) (f^2(x + Delta x) - f^2(x))/(Delta x) = #blank$
#subsection[三、计算题]
8. 讨论函数  $f(x) = cases( x sin(1/x), & x != 0, 0, & x = 0 )$  在点  $x = 0$  处的连续性与可导性
   #answer-space
9. 求函数  $y = arctan((1 + x)/(1 - x))$  的导数
   #answer-space
10. 求函数  $y = cos^2 x ln x$  的二阶导数
    #answer-space
11. 设函数  $y = y(x)$  由方程  $e^y + x y = e$  所确定，求  $y''(0)$ .
    #answer-space
12. 求由参数方程  ${ x = ln sqrt(1 + t^2), y = arctan t }$  所确定的函数的一阶导数  $d y/d x$  及二阶导数  $d^2 y/d x^2$ .
    #answer-space
#pagebreak()
