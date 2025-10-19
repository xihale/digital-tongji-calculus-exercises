#import "../template.typ": *

#section[第三节 高阶导数]
#subsection[一、选择题]
1. 若函数  $f(x) = sin(x/2) + cos 2x$ ，则  $f^(27)(pi) =$ (#answer-choice[A]).
   #choices(
   $0$,
   $-1/2^27$,
   $2^27 - 1/2^27$,
   $2^27$
   )
   #answer-process[
     $f^(n)(x) = (1/2)^n sin(x/2 + n pi/2) + 2^n cos(2x + n pi/2)$
     
     对 $sin(x/2)$: $f^(27)(x) = (1/2)^27 sin(x/2 + 27pi/2) = (1/2)^27 sin(x/2 + 3pi/2) = -(1/2)^27 cos(x/2)$
     
     所以 $f^(27)(pi) = -(1/2)^27 cos(pi/2) = 0$
   ]
#subsection[二、填空题]
 2. 设函数  $y = (1 + x^2) arctan x$ ，则  $y'' = $ #blank[$2 x arctan x$].
   #answer-process[
     $y' = 2 x arctan x + (1+x^2) times 1/(1+x^2) = 2 x arctan x + 1$
     
     $y'' = 2 arctan x + 2 x times 1/(1+x^2) = 2 arctan x + 2 x/(1+x^2)$
   ]
   
3. 若  $f''(x)$  存在，函数  $y = ln f(x)$ ，则  $(d^2 y) / (d x^2) = $ #blank[$f''(x)/f(x) - (f'(x))^2/(f(x))^2$].
   #answer-process[
     $d y / d x = f'(x)/f(x)$
     
     $(d^2 y) / (d x^2) = (f''(x) times f(x) - (f'(x))^2) / (f(x))^2 = f''(x)/f(x) - ((f'(x))^2)/(f(x))^2$
   ]
#subsection[三、计算题]
4. 求下列函数的二阶导数：
   (1)  $y = e^(-t) sin t$
   #answer-process[
     $y' = -e^(-t) sin t + e^(-t) cos t = e^(-t)(cos t - sin t)$
     
     $y'' = -e^(-t)(cos t - sin t) + e^(-t)(-sin t - cos t) = e^(-t)(-2 cos t) = -2e^(-t) cos t$
   ]
   
   (2)  $y = ln (x + sqrt(1 + x^2))$ .
   #answer-process[
     $y' = 1/(x + sqrt(1+x^2)) times (1 + x/(sqrt(1)+x^2)) = 1/(sqrt(1)+x^2)$
     
     $y'' = -x / (1+x^2)^(3/2)$
   ]

5. 设  $f''(x)$  存在，求函数  $y = f(x^2)$  的二阶导数  $(d^2 y)/(d x^2)$ .
   #answer-process[
     $y' = f'(x^2) times 2 x$
     
     $y'' = f''(x^2) times (2 x)^2 + f'(x^2) times 2 = 4 x^2 f''(x^2) + 2 f'(x^2)$
   ]

6. 求下列函数所指定阶的导数：
   (1)  $y = e^x cos x$ ，求  $y^(4)$
   #answer-process[
     $y' = e^x cos x - e^x sin x = e^x(cos x - sin x)$
     
     $y'' = e^x(cos x - sin x) + e^x(-sin x - cos x) = -2e^x sin x$
     
     $y''' = -2e^x sin x - 2e^x cos x = -2e^x(sin x + cos x)$
     
     $y^(4) = -2e^x(sin x + cos x) - 2e^x(cos x - sin x) = -4e^x cos x$
   ]
   
   (2)  $y = x^2 sin 2x$ ，求  $y^(50)$ .
   #answer-process[
     利用莱布尼茨公式或注意到：
     
     $(sin 2 x)^(n) = 2^n sin(2 x + n pi/2)$
     
     $y^(50) = sum_(k=0)^(50) C(50,k) (x^2)^(k) (sin 2 x)^(50-k)$
     
     只有 $k=0,1,2$ 时非零项：
     
     $y^(50) = (sin 2 x)^(50) + 50 times 2 x times (sin 2 x)^(49) + C(50,2) times 2 times (sin 2 x)^(48)$
     
     $= 2^50 sin(2 x + 25 pi) + 100 x times 2^49 sin(2 x + 49 pi/2) + 1225 times 2^48 sin(2 x + 24 pi)$
     
     $= -2^50 sin 2 x - 100 x times 2^49 cos 2 x + 1225 times 2^48 sin 2 x$
   ]
#subsection[四、证明题]
7. 试从  $d x / d y = 1/y'$  导出：

   (1)  $d^2 x / (d y)^2 = -y''/(y')^3$ ;
   #answer-process[
     由 $d x / d y = 1/y'$，两边对 $y$ 求导：
     
     $d^2 x / (d y)^2 = d/d y(1/y')$，利用复合函数求导和商法则
     
     $= -y''/(y')^2 times d x / d y = -y''/(y')^2 times 1/y' = -y''/(y')^3$
   ]
   
   (2)  第二问求证：第二阶导数的导数形式
   
   #answer-process[
     由前一部分结果 $d^2 x / (d y)^2 = -y''/(y')^3$，继续对 $y$ 求导：
     
     设分子为 $u = -y''$，分母为 $v = (y')^3$
     
     $(d^3 x)/(d y^3) = (u' v - u v') / v^2 times (d x)/(d y)$
     
     其中 $u' = -y'''$, $v' = 3(y')^2 times y''$
     
     代入计算化简后得：$(d^3 x)/(d y^3) = \{3(y'')^2 - y' y'''\} / (y')^5$
   ]
