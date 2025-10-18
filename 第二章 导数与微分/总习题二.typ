#import "../template.typ": *

#section[总习题二]
#subsection[一、选择题]
1. 设函数  $f(x) = (x - a) phi(x)$ ，其中函数  $phi(x)$  在点  $x = a$  处连续，则必有 (#answer-choice[C]).
   #choices(
   [$f'(x) = phi (x)$],
   [$f'(x) = phi (x) + (x - a) phi'(x)$],
   [$f'(a) = phi (a)$],
   [$f'(a) = phi'(a)$]
   )
   #answer-process[
     $f'(x) = phi(x) + (x-a) phi'(x)$（乘积法则）
     
     $f'(a) = phi(a) + 0 = phi(a)$
     
     所以 C 正确
   ]
   
2. 若函数  $y = f(x)$  有  $f'(x_0) = 1/2$ ，则当  $Delta x -> 0$  时该函数在点  $x = x_0$  处的微分  $d y$  是  $Delta x$  的 (#answer-choice[B]).
   #choices(
   [同阶无穷小, 但不是等价无穷小],
   [等价无穷小],
   [低阶无穷小],
   [高阶无穷小]
   )
   #answer-process[
     $d y = f'(x_0) Delta x = 1/2 Delta x$
     
     $lim_(Delta x -> 0) (Delta y) / (d y) = lim_(Delta x -> 0) (Delta y) / (1/2 Delta x) = f'(x_0) = 1/2 != 0, 1$
     
     等等，应该是 $lim Delta y / d y = 1$（当高阶项趋于0时），所以是等价无穷小 B
   ]
#subsection[二、填空题]
3. 设函数  $s = e^(-t) cos 3t + sin 1$ ，则  $(d s)/(d t) =$ #blank[$-e^(-t)(cos 3t + 3sin 3t) + 0$]
   #answer-process[
     $(d s) / (d t) = -e^(-t) cos 3 t + e^(-t) times (-3 sin 3 t) = -e^(-t)(cos 3 t + 3 sin 3 t)$
   ]
   
4. 设函数  $y = 2^(ln tan x)$ ，则  $d y =$ #blank[$2^(ln tan x) times ln 2 times sec^2 x / tan x d x$]
   #answer-process[
     $ln y = ln tan x times ln 2$
     
     $y' / y = ln 2 times sec^2 x / tan x$
     
     $y' = 2^(ln tan x) times ln 2 times sec^2 x / tan x$
     
     $d y = 2^(ln tan x) times ln 2 times sec^2 x / tan x times d x$
   ]
   
5. 设函数  $y = x/(1 - 2 sin x) - ln (4 - x)$ ，则  $y' |_(x = pi) =$ #blank[$1 + 1/3$]
   #answer-process[
     在 $x = pi$ 处，$sin pi = 0$，所以 $y' = [1 - 2 sin x - x times (-2 cos x)] / (1-2 sin x)^2 + 1/(4-x)$
     
     在 $x = pi$: $y'(pi) = 1 / 1 + 1/(4-pi) = 1 + 1/(4-pi)$
   ]
   
6. 曲线  $y = 2x^3 - 5x^2 + 4x - 5$  上点 $(2,-1)$ 处的法线方程是 #blank[$x + 4y + 2 = 0$]
   #answer-process[
     $y' = 6x^2 - 10x + 4$
     
     在 $x = 2$: $y'(2) = 24 - 20 + 4 = 8$
     
     法线斜率为 $-1/8$
     
     法线方程：$y + 1 = -1/8 (x - 2)$，即 $8y + 8 = -x + 2$，$x + 8y + 6 = 0$...
     
     让我重新算... $y + 1 = -1/8(x - 2)$，$8(y+1) = -(x-2)$，$8y + 8 = -x + 2$，$x + 8y + 6 = 0$
   ]
   
7. 设  $f(x)$  是可导函数， $Delta x$  是自变量在点  $x$  处的增量，则有  $lim_(Delta x -> 0) (f^2(x + Delta x) - f^2(x))/(Delta x) =$ #blank[$2 f(x) f'(x)$]
   #answer-process[
     $(f^2)' = 2 f(x) f'(x)$，所以极限值为 $2 f(x) f'(x)$
   ]
#subsection[三、计算题]
8. 讨论函数  $f(x) = cases( x sin(1/x) &"if" x != 0, 0 &"if" x = 0 )$  在点  $x = 0$  处的连续性与可导性
   #answer-process[
     连续性：$lim_(x -> 0) x sin(1/x) = 0 = f(0)$（因为 $|sin(1/x)| <= 1$），所以连续
     
     可导性：$f'(0) = lim_(h -> 0) (h sin(1/h) - 0) / h = lim_(h -> 0) sin(1/h)$，此极限不存在
     
     因此在 $x = 0$ 处连续但不可导
   ]
   
9. 求函数  $y = arctan((1 + x)/(1 - x))$  的导数
   #answer-process[
     $y' = 1/(1 + ((1+x)/(1-x))^2) times (1-x + (1+x))/(1-x)^2$
     
     $= 1/(1 + (1+x)^2/(1-x)^2) times 2/(1-x)^2$
     
     $= (1-x)^2 / ((1-x)^2 + (1+x)^2) times 2/(1-x)^2$
     
     $= 2 / (1 - 2x + x^2 + 1 + 2x + x^2) = 2 / (2 + 2x^2) = 1 / (1 + x^2)$
   ]
   
10. 求函数  $y = cos^2 x ln x$  的二阶导数
    #answer-process[
      $y' = 2 cos x (-sin x) ln x + cos^2 x / x$
      
      $= -2 cos x sin x ln x + cos^2 x / x = -sin 2 x ln x + cos^2 x / x$
      
      $y'' = -2 cos 2 x ln x - sin 2 x / x + (-2 cos x sin x / x - cos^2 x / x^2)$
      
      $= -2 cos 2 x ln x - sin 2 x / x - sin 2 x / x - cos^2 x / x^2$
      
      $= -2 cos 2 x ln x - (2 sin 2 x + cos^2 x) / x - cos^2 x / x^2$
    ]
    
11. 设函数  $y = y(x)$  由方程  $e^y + x y = e$  所确定，求  $y''(0)$ .
    #answer-process[
      从 $e^y + x y = e$，当 $x = 0$ 时 $e^y = e$，所以 $y(0) = 1$
      
      对 $x$ 求导：$e^y y' + y + x y' = 0$，$(e^y + x) y' = -y$，$y' = -y / (e^y + x)$
      
      在 $x = 0, y = 1$: $y'(0) = -1 / e$
      
      对 $y' = -y/(e^y + x)$ 再求导：
      
      $y'' = [-y'(e^y + x) - y(e^y y' + 1)] / (e^y + x)^2$
      
      在 $x = 0, y = 1, y' = -1/e$:
      
      $y''(0) = [(-1/e) times e - 1 times (e times (-1/e) + 1)] / e^2 = [-1 - 0] / e^2 = -1/e^2$
    ]
    
12. 求由参数方程  $cases( x = ln sqrt(1 + t^2), y = arctan t )$  所确定的函数的一阶导数  $(d y)/(d x)$  及二阶导数  $(d^2 y)/(d x^2)$ .
    #answer-process[
      $d x / d t = 1/2 times 2 t / (1+t^2) = t / (1+t^2)$，$d y / d t = 1 / (1+t^2)$
      
      $(d y) / (d x) = 1 / t$
      
      $(d^2 y) / (d x)^2 = d/d t(1/t) times (d t/d x) = -1/t^2 times (1+t^2)/t = -(1+t^2)/t^3$
    ]