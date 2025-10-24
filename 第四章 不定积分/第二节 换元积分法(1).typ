#import "../template.typ": *

#section[第二节 换元积分法(1)]
#subsection[一、判断题(如果错误，请加以改正)]
1. 因  $integral cos x dif x = sin x + C$ ，故  $integral cos 2x dif x = sin 2x + C.$  (#answer-choice[(错误)])
   #answer-process(height: 4cm)[
     正确的结果应该是 $integral cos 2x dif x = (1/2) sin 2x + C$。
     
    这是因为 $frac(d, d x)[(1/2) sin 2x] = (1/2) · 2 cos 2x = cos 2x$。
   ]

2. 若  $integral f(x) dif x = F(x) + C$ ，则  $integral f(u) dif x = F(u) + C.$  (#answer-choice[(错误)])
   #answer-process(height: 5cm)[
     这是常见的错误。积分中的变量 $dif x$ 与被积函数中的变量必须相同。
     
     正确的说法是：若 $integral f(x) dif x = F(x) + C$，则 $integral f(u) dif u = F(u) + C$。
     
     $integral f(u) dif x$ 无法直接用原公式，除非知道 $u$ 与 $x$ 的关系。
   ]
#subsection[二、填空题]
3. 将合适的函数填入下列空格中：\
  (1)  #blank($1/a$) dif x = dif(a x + b) ;
   
  (2)  dif #blank($x^2/2$) = x dif x;
   
  (3)  dif #blank($ln |x|$) = (1/x) dif x;
   
  (4)  dif #blank($sin x$) = cos x dif x ;
   
  (5)  dif #blank($-cos x$) = sin x dif x ;
   
  (6)  dif #blank($e^(2x)/2$) = e^(2x) dif x ;
   
  (7)  dif #blank($2 sqrt(x)$) = 1/sqrt(x)  dif x ;
   
  (8)  dif #blank($-1/x$) = 1/x^2 dif x .
#subsection[三、计算题]
4. 计算下列不定积分：
   (1)  $integral (dif x)/((3x - 2)^2)$ ;
  #answer-process(height: 4cm)[
     令 $u = 3x - 2$，则 $dif u = 3 dif x$，$dif x = (1/3) dif u$。
     
     $integral (dif x)/((3x - 2)^2) = integral frac(1, u^2) · frac(1, 3) dif u = frac(1, 3) integral u^(-2) dif u$
     
  $= frac(1, 3) · frac(u^(-1), -1) + C = -frac(1, 3u) + C = -frac(1, 3(3x-2)) + C$
  ]

   (2)  $integral (x)/(sqrt(1 + x^2)) dif x$ ;
  #answer-process(height: 4cm)[
     令 $u = 1 + x^2$，则 $dif u = 2x dif x$，$x dif x = (1/2) dif u$。
     
     $integral (x)/(sqrt(1 + x^2)) dif x = integral frac(1, sqrt(u)) · frac(1, 2) dif u = frac(1, 2) integral u^(-1/2) dif u$
     
  $= frac(1, 2) · frac(u^(1/2), 1/2) + C = sqrt(u) + C = sqrt(1 + x^2) + C$
  ]

   (3)  $integral (3x^3)/(1 - x^4) dif x$ ;
   #answer-process(height: 4cm)[
     令 $u = 1 - x^4$，则 $dif u = -4x^3 dif x$，$x^3 dif x = -(1/4) dif u$。
     
     $integral (3x^3)/(1 - x^4) dif x = 3 integral frac(1, u) · (-(1/4)) dif u = -frac(3, 4) integral frac(dif u, u)$
     
     $= -frac(3, 4) ln |u| + C = -frac(3, 4) ln |1 - x^4| + C$
   ]

   (4)  $integral (dif x)/(x ln x ln ln x)$ ;
   #answer-process(height: 6cm)[
     令 $t = ln x$，则 $dif t = (1/x) dif x$，$dif x = x dif t = e^t dif t$... 这里有问题。
     
     重新处理：$integral (dif x)/(x ln x ln ln x)$
     
     令 $u = ln x$，则 $dif u = (1/x) dif x$。
     
     $integral (dif x)/(x ln x ln ln x) = integral frac(dif u, u ln u)$
     
     再令 $v = ln u = ln ln x$，则 $dif v = (1/u) dif u$。
     
     $integral frac(dif u, u ln u) = integral frac(dif v, v) = ln |v| + C = ln |ln ln x| + C$
   ]

   (5)  $integral cos^3 x dif x$
   #answer-process(height: 5cm)[
     $cos^3 x = cos x (1 - sin^2 x) = cos x - cos x sin^2 x$
     
     $integral cos^3 x dif x = integral cos x dif x - integral cos x sin^2 x dif x$
     
     对第二项，令 $u = sin x$，则 $dif u = cos x dif x$：
     
     $integral cos x sin^2 x dif x = integral u^2 dif u = frac(u^3, 3) + C = frac(sin^3 x, 3) + C$
     
     因此 $integral cos^3 x dif x = sin x - frac(sin^3 x, 3) + C$
   ]

   (6)  $integral (dif x)/(e^x + e^(-x))$;
   #answer-process(height: 4cm)[
     分子分母同乘 $e^x$：
     $integral (dif x)/(e^x + e^(-x)) = integral frac(e^x, e^(2x) + 1) dif x$
     
     令 $u = e^x$，则 $dif u = e^x dif x$。
     
     $integral frac(e^x, e^(2x) + 1) dif x = integral frac(dif u, u^2 + 1) = arctan u + C = arctan(e^x) + C$
   ]

   (7)  $integral (e^(arctan x))/(1 + x^2) dif x$.
   #answer-process(height: 3cm)[
     令 $u = arctan x$，则 $dif u = (1/(1+x^2)) dif x$。
     
     $integral (e^(arctan x))/(1 + x^2) dif x = integral e^u dif u = e^u + C = e^(arctan x) + C$
   ]

5.(附加题)计算下列不定积分：\
   (1)  $integral (x)/(x^2 + 2x + 2) dif x$ ;  
   #answer-process(height: 8cm)[
     注意分母 $x^2 + 2x + 2 = (x+1)^2 + 1$。
     
     分子改写：$x = (x + 1) - 1$
     
     $integral (x)/(x^2 + 2x + 2) dif x = integral frac(x+1, (x+1)^2 + 1) dif x - integral frac(1, (x+1)^2 + 1) dif x$
     
     对第一项，令 $u = x^2 + 2x + 2$，则 $dif u = (2x + 2) dif x = 2(x+1) dif x$：
     
     $integral frac(x+1, (x+1)^2 + 1) dif x = frac(1, 2) integral frac(dif u, u) = frac(1, 2) ln|u| + C_1 = frac(1, 2) ln(x^2 + 2x + 2) + C_1$
     
     对第二项，令 $t = x + 1$，则 $dif t = dif x$：
     
     $integral frac(1, (x+1)^2 + 1) dif x = integral frac(dif t, t^2 + 1) = arctan t + C_2 = arctan(x+1) + C_2$
     
     因此 $integral (x)/(x^2 + 2x + 2) dif x = frac(1, 2) ln(x^2 + 2x + 2) - arctan(x+1) + C$
   ]

   (2)  $integral (cos x)/(sin x + cos x) dif x$.
   #answer-process(height: 7cm)[
     设 $I_1 = integral (cos x)/(sin x + cos x) dif x$，$I_2 = integral (sin x)/(sin x + cos x) dif x$
     
     则 $I_1 + I_2 = integral frac(sin x + cos x, sin x + cos x) dif x = integral dif x = x + C$
     
     $I_1 - I_2 = integral frac(cos x - sin x, sin x + cos x) dif x$
     
     令 $u = sin x + cos x$，则 $dif u = (cos x - sin x) dif x$：
     
     $I_1 - I_2 = integral frac(dif u, u) = ln |sin x + cos x| + C'$
     
     联立：$I_1 + I_2 = x + C$，$I_1 - I_2 = ln|sin x + cos x| + C'$
     
     解得 $I_1 = frac(1, 2)[x + ln|sin x + cos x|] + C$
   ]
