#import "../template.typ": *

#section[第四节 有理函数的积分]
#subsection[一、判断题(如果错误，请加以改正)]
1.有理函数也称为有理分式，整式也是有理分式的一种 (#answer-choice[正确])

2.有理分式  $(x^3 + x^2 - x - 1)/(2x^3 + 3x^2 + 6x)$  是真分式  (#answer-choice[错误])
   #answer-process[
     分子最高次数为 3，分母最高次数也为 3。当分子和分母的次数相同或分子次数更高时，该分式是假分式。
     
     真分式要求分子的次数严格小于分母的次数。这里分子次数 = 分母次数，所以是假分式。
   ]

3. 令  $t = tan(x/2)$ , 则  $integral (tan x)/(sin x + cos x - 1) d x = integral (A)/((1 - t)(1 - t^2)) d t$  中  $A = 2$ (#answer-choice[正确])
    #answer-process[
      当 $t = tan(x/2)$ 时：
      - $sin x = 2t/(1+t^2)$，$cos x = (1-t^2)/(1+t^2)$，$tan x = 2t/(1-t^2)$
      - $d x = 2 d t/(1+t^2)$
      
   $sin x + cos x - 1 = (2t + 1 - t^2 - 1 - t^2)/(1+t^2) = (2t - 2t^2)/(1+t^2) = (2t(1-t))/(1+t^2)$
      
   $integral (tan x)/(sin x + cos x - 1) d x = integral (2t/(1-t^2))/(2t(1-t)/(1+t^2)) · (2/(1+t^2)) d t$
      
   $= integral 2/(1-t)(1-t^2) d t$
    ]

4. 在计算三角函数有理式的不定积分  $integral R(sin x, cos x) d x$  时，一般使用变换  $t = tan(x/2)$ (#answer-choice[正确])
   #answer-process[
     这是三角函数有理式的标准处理方法。
   ]

5.所有连续函数均存在初等函数的原函数 (#answer-choice[错误])
   #answer-process[
     反例：$e^(-x^2)$ 是连续函数，但其原函数（涉及误差函数）不能用初等函数表示。
     
     根据 Liouville 定理，并非所有初等函数的原函数都是初等函数。
   ]
#subsection[二、计算题]
6. 计算下列不定积分：\
   (1)  $integral (x^3)/(x + 3) d x$ ;  
   #answer-process[
  用长除法：$x^3/x+3 = x^2 - 3x + 9 - 27/x+3$
     
     验证：$(x^2 - 3x + 9)(x + 3) - 27 = x^3 + 3x^2 - 3x^2 - 9x + 9x + 27 - 27 = x^3$ ✓
     
  $integral (x^3)/(x + 3) d x = integral (x^2 - 3x + 9) d x - 27 integral d x/x+3$
     
     $= x^3/3 - 3x^2/2 + 9x - 27 ln|x + 3| + C$
   ]

   (2)  $integral (2x + 3)/(x^2 + 3x - 10) d x$;
   #answer-process[
     分母分解：$x^2 + 3x - 10 = (x+5)(x-2)$
     
  部分分式分解：$2x+3/(x+5(x-2)) = A/x+5 + B/x-2$
     
     $2x + 3 = A(x - 2) + B(x + 5)$
     
     令 $x = 2$：$7 = 7B$，得 $B = 1$。
     令 $x = -5$：$-7 = -7A$，得 $A = 1$。
     
     $integral (2x + 3)/(x^2 + 3x - 10) d x = integral (1/(x+5) + 1/(x-2)) d x$
     
     $= ln|x + 5| + ln|x - 2| + C = ln|(x+5)(x-2)| + C$
   ]

   (3)  $integral (x + 1)/(x^2 + 2x + 5) d x$ ;
   #answer-process[
     注意分母 $x^2 + 2x + 5 = (x+1)^2 + 4$ 无实根。
     
  分子改写：$x + 1 = 1/2(2x + 2) = 1/2 · 2(x+1)$
     
  $integral (x + 1)/(x^2 + 2x + 5) d x = 1/2 integral (2(x+1)/(x+1)^2 + 4) d x$
     
     令 $u = x^2 + 2x + 5$，则 $d u = (2x+2) d x$：
     
  $= 1/2 integral d u/u = 1/2 ln|x^2 + 2x + 5| + C$
   ]

   (4)  $integral (d x)/(x(x^2 + 1))$ ;  
   #answer-process[
   部分分式分解：$1/x(x^2+1) = A/x + B x + C/x^2+1$
     
   $1 = A(x^2 + 1) + (B x + C) x$
     
     令 $x = 0$：$1 = A$，得 $A = 1$。
     
     比较 $x^2$ 系数：$0 = A + B = 1 + B$，得 $B = -1$。
     比较常数项：$1 = A = 1$ ✓
     比较 $x$ 系数：$0 = C$，得 $C = 0$。
     
  $integral (d x)/(x(x^2 + 1)) = integral (1/x - x/(x^2+1)) d x$
     
  $= ln|x| - 1/2 ln(x^2 + 1) + C = ln |x|/sqrt(x^2+1) + C$
   ]

    (5)  $integral (d x)/((x^2 + 1)(x^2 + x + 1))$ ;
    #answer-process[
    利用 $1/((x^2+1)(x^2+x+1)) = (x^2+x+1 - (x^2+1))/x[(x^2+1)(x^2+x+1)] = 1/x[1/(x^2+1) - 1/(x^2+x+1)]$
      
    $integral (d x)/((x^2+1)(x^2+x+1)) = integral [1/x(x^2+1) - 1/x(x^2+x+1)] d x$
      
    对第一项：令 $u = x^2+1$，$d u = 2x d x$，得 $1/2 ln(x^2+1)$
    对第二项：配方 $x^2+x+1 = (x+1/2)^2 + 3/4$，令 $v = x+1/2$，得 $(2/sqrt(3))arctan((2x+1)/sqrt(3))$
      
    综合结果：$= 1/2 ln(x^2+1) - (2/sqrt(3))arctan((2x+1)/sqrt(3)) + C$
    ]

   (6)  $integral (d x)/(3 + sin^2 x)$ .
   #answer-process[
     令 $t = tan(x/2)$，则 $sin x = 2t/(1+t^2)$，$d x = 2 d t/(1+t^2)$。
     
     $sin^2 x = (4t^2)/(1+t^2)^2$
     
   $3 + sin^2 x = (3(1+t^2)^2 + 4t^2/(1+t^2)^2) = (3(1+2t^2+t^4) + 4t^2/(1+t^2)^2)$
     
   $= 3 + 10t^2 + 3t^4/(1+t^2^2) = (3(1+t^2)^2 + t^2/(1+t^2)^2)$... 计算较复杂。
     
     换法：用三角恒等式 $sin^2 x = (1 - cos 2x)/2$。
     
     $3 + sin^2 x = 3 + (1-cos 2x)/2 = (7 - cos 2x)/2$
     
   令 $u = 2x$：$integral (d x)/(3+sin^2x) = integral d x/(7-cos 2x/2) = 1/2 integral d u/7 - cos u$ （其中 $d u = 2 d x$）
     
   实际上 $= integral d x/(7-cos 2x/2)$... 需要标准答案。
     
     使用Weierstrass代换 $t = tan x$：$sin^2 x = (t^2)/(1+t^2)$，$d x = d t/(1+t^2)$。
     
   $integral (d x)/(3+sin^2x) = integral (d t/(1+t^2)/3 + (t^2)/(1+t^2)) = integral d t/3(1+t^2+t^2)$
     
   $= integral d t/3 + 4t^2 = 1/4 integral d t/3/4 + t^2$
     
   $= 1/4 · 1/sqrt(3/4) arctan(t/sqrt(3/4)) + C = 1/4 · 2/sqrt(3) arctan(2t/sqrt(3)) + C$
     
   $= 1/2 sqrt(3) arctan(2 tan x/sqrt(3)) + C$
   ]

7.(附加题)试用两种方法计算不定积分  $integral (d x)/(sin 2x + 2 sin x)$
   #answer-process[
     方法一（用 $sin 2x = 2 sin x cos x$）：
     
  $integral (d x)/(2sin x cos x + 2 sin x) = integral d x/2 sin x(cos x + 1)$
     
  部分分式：$1/2 sin x(cos x + 1) = A/sin x + B/cos x + 1$
     
     $1 = 2A(cos x + 1) + 2B sin x$
     
     令 $x = 0$：$1 = 4A$，得 $A = 1/4$。
     
     令 $cos x = -1$ (即 $x = pi$)：$1 = 2 · 0 = 0$... 这个方法不适用于 $x = pi$。
     
     改用 $cos x = -1 + epsilon$，或用三角恒等式 $1 + cos x = 2 cos^2(x/2)$，$sin x = 2 sin(x/2) cos(x/2)$。
     
  $integral d x/2 sin x(1+cos x) = integral d x/2 · 2 sin(x/2 cos(x/2) · 2 cos^2(x/2))$
     
  $= 1/8 integral d x/sin(x/2 cos^3(x/2))$
     
  令 $u = x/2$，$d u = d x/2$：$= 1/4 integral d u/sin u cos^3 u$
     
     方法二（用Weierstrass代换）：
     
     令 $t = tan(x/2)$，则 $sin x = 2t/(1+t^2)$，$cos x = (1-t^2)/(1+t^2)$，$d x = 2 d t/(1+t^2)$。
     
  $sin 2x + 2 sin x = 2 sin x cos x + 2 sin x = 2 sin x(cos x + 1)$
     
  $= 2 · 2t/1+t^2 · [1-t^2/1+t^2 + 1] = 4t/1+t^2 · 2/1+t^2$
     
  $= 8t/(1+t^2^2)$
     
  $integral (d x)/(sin 2x + 2 sin x) = integral (2 d t/(1+t^2)/8t/(1+t^2)^2) = integral 1+t^2/4t d t$
     
  $= 1/4 integral 1+t^2/t d t = 1/4 integral (1/t + t) d t$
     
  $= 1/4 [ln|t| + t^2/2] + C = 1/4 ln|tan(x/2)| + 1/8 tan^2(x/2) + C$
   ]
