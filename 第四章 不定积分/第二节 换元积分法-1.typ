#import "../template.typ": *

#section[第二节 换元积分法(1)]
#subsection[一、判断题(如果错误，请加以改正)]
1. 因  $integral cos x d x = sin x + C$ ，故  $integral cos 2x d x = sin 2x + C.$  (#answer-choice[错误])
   #answer-process(height: 4cm)[
     正确的结果应该是 $integral cos 2x d x = (1/2) sin 2x + C$。
     
    这是因为 $d/d x[(1/2) sin 2x] = (1/2) · 2 cos 2x = cos 2x$。
   ]

2. 若  $integral f(x) d x = F(x) + C$ ，则  $integral f(u) d x = F(u) + C.$  (#answer-choice[错误])
   #answer-process(height: 5cm)[
     这是常见的错误。积分中的变量 $d x$ 与被积函数中的变量必须相同。
     
     正确的说法是：若 $integral f(x) d x = F(x) + C$，则 $integral f(u) d u = F(u) + C$。
     
     $integral f(u) d x$ 无法直接用原公式，除非知道 $u$ 与 $x$ 的关系。
   ]
#subsection[二、填空题]
3. 将合适的函数填入下列空格中：\
  (1)  #blank[$1/a$] d x = d(a x + b) ;
   
  (2)  d #blank[$x^2/2$] = x d x;
   
  (3)  d #blank[$ln |x|$] = (1/x) d x;
   
  (4)  d #blank[$sin x$] = cos x d x ;
   
  (5)  d #blank[$-cos x$] = sin x d x ;
   
  (6)  d #blank[$e^(2x)/2$] = e^(2x) d x ;
   
  (7)  d #blank[$2 sqrt(x)$] = 1/sqrt(x)  d x ;
   
  (8)  d #blank[$-1/x$] = 1/x^2 d x .
#subsection[三、计算题]
4. 计算下列不定积分：
   (1)  $integral (d x)/((3x - 2)^2)$ ;
  #answer-process(height: 4cm)[
     令 $u = 3x - 2$，则 $d u = 3 d x$，$d x = (1/3) d u$。
     
     $integral (d x)/((3x - 2)^2) = integral 1/u^2 · 1/3 d u = 1/3 integral u^(-2) d u$
     
  $= 1/3 · (u^(-1)/-1) + C = -1/3u + C = -1/3(3x-2) + C$
  ]

   (2)  $integral (x)/(sqrt(1 + x^2)) d x$ ;
  #answer-process(height: 4cm)[
     令 $u = 1 + x^2$，则 $d u = 2x d x$，$x d x = (1/2) d u$。
     
     $integral (x)/(sqrt(1 + x^2)) d x = integral 1/sqrt(u) · 1/2 d u = 1/2 integral u^(-1/2) d u$
     
  $= 1/2 · (u^(1/2)/1/2) + C = sqrt(u) + C = sqrt(1 + x^2) + C$
  ]

   (3)  $integral (3x^3)/(1 - x^4) d x$ ;
   #answer-process(height: 4cm)[
     令 $u = 1 - x^4$，则 $d u = -4x^3 d x$，$x^3 d x = -(1/4) d u$。
     
     $integral (3x^3)/(1 - x^4) d x = 3 integral 1/u · (-(1/4)) d u = -3/4 integral d u/u$
     
     $= -3/4 ln |u| + C = -3/4 ln |1 - x^4| + C$
   ]

   (4)  $integral (d x)/(x ln x ln ln x)$ ;
   #answer-process(height: 6cm)[
     令 $t = ln x$，则 $d t = (1/x) d x$，$d x = x d t = e^t d t$... 这里有问题。
     
     重新处理：$integral (d x)/(x ln x ln ln x)$
     
     令 $u = ln x$，则 $d u = (1/x) d x$。
     
     $integral (d x)/(x ln x ln ln x) = integral d u/u ln u$
     
     再令 $v = ln u = ln ln x$，则 $d v = (1/u) d u$。
     
     $integral d u/u ln u = integral d v/v = ln |v| + C = ln |ln ln x| + C$
   ]

   (5)  $integral cos^3 x d x$
   #answer-process(height: 5cm)[
     $cos^3 x = cos x (1 - sin^2 x) = cos x - cos x sin^2 x$
     
     $integral cos^3 x d x = integral cos x d x - integral cos x sin^2 x d x$
     
     对第二项，令 $u = sin x$，则 $d u = cos x d x$：
     
     $integral cos x sin^2 x d x = integral u^2 d u = u^3/3 + C = sin^3 x/3 + C$
     
     因此 $integral cos^3 x d x = sin x - sin^3 x/3 + C$
   ]

   (6)  $integral (d x)/(e^x + e^(-x))$;
   #answer-process(height: 4cm)[
     分子分母同乘 $e^x$：
     $integral (d x)/(e^x + e^(-x)) = integral e^x/e^(2x + 1) d x$
     
     令 $u = e^x$，则 $d u = e^x d x$。
     
     $integral e^x/e^(2x + 1) d x = integral d u/u^2 + 1 = arctan u + C = arctan(e^x) + C$
   ]

   (7)  $integral (e^(arctan x))/(1 + x^2) d x$.
   #answer-process(height: 3cm)[
     令 $u = arctan x$，则 $d u = (1/(1+x^2)) d x$。
     
     $integral (e^(arctan x))/(1 + x^2) d x = integral e^u d u = e^u + C = e^(arctan x) + C$
   ]

5.(附加题)计算下列不定积分：\
   (1)  $integral (x)/(x^2 + 2x + 2) d x$ ;  
   #answer-process(height: 8cm)[
     注意分母 $x^2 + 2x + 2 = (x+1)^2 + 1$。
     
     分子改写：$x = (x + 1) - 1$
     
     $integral (x)/(x^2 + 2x + 2) d x = integral x+1/(x+1^2 + 1) d x - integral 1/(x+1^2 + 1) d x$
     
     对第一项，令 $u = x^2 + 2x + 2$，则 $d u = (2x + 2) d x = 2(x+1) d x$：
     
     $integral x+1/(x+1^2 + 1) d x = 1/2 integral d u/u = 1/2 ln|u| + C_1 = 1/2 ln(x^2 + 2x + 2) + C_1$
     
     对第二项，令 $t = x + 1$，则 $d t = d x$：
     
     $integral 1/(x+1^2 + 1) d x = integral d t/t^2 + 1 = arctan t + C_2 = arctan(x+1) + C_2$
     
     因此 $integral (x)/(x^2 + 2x + 2) d x = 1/2 ln(x^2 + 2x + 2) - arctan(x+1) + C$
   ]

   (2)  $integral (cos x)/(sin x + cos x) d x$.
   #answer-process(height: 7cm)[
     设 $I_1 = integral (cos x)/(sin x + cos x) d x$，$I_2 = integral (sin x)/(sin x + cos x) d x$
     
     则 $I_1 + I_2 = integral sin x + cos x/sin x + cos x d x = integral d x = x + C$
     
     $I_1 - I_2 = integral cos x - sin x/sin x + cos x d x$
     
     令 $u = sin x + cos x$，则 $d u = (cos x - sin x) d x$：
     
     $I_1 - I_2 = integral d u/u = ln |sin x + cos x| + C'$
     
     联立：$I_1 + I_2 = x + C$，$I_1 - I_2 = ln|sin x + cos x| + C'$
     
     解得 $I_1 = 1/2[x + ln|sin x + cos x|] + C$
   ]
