#import "../template.typ": *

#section[第三节 分部积分法]
#subsection[一、简答题]
1. 写出不定积分的分部积分公式及其推导过程(作业讲评时随机点名答辩).
   #answer-process[
     分部积分公式：$integral u dif v = u v - integral v dif u$
     
     推导过程：
     由乘积求导法则：$(u v)' = u' v + u v'$
     
     两边关于 $x$ 积分：
     $integral (u v)' dif x = integral u' v dif x + integral u v' dif x$
     
     $u v = integral u' v dif x + integral u v' dif x$
     
     移项得：$integral u v' dif x = u v - integral u' v dif x$
     
     写成微分形式：$integral u dif v = u v - integral v dif u$
     
     其中 $dif u = u' dif x$，$dif v = v' dif x$。
   ]
#subsection[二、计算题]
2. 计算下列不定积分：\
  (1)  $integral x e^(-x) dif x$
  #answer-process[
    令 $u = x$，$dif v = e^(-x) dif x$，则 $dif u = dif x$，$v = -e^(-x)$。
    
    $integral x e^(-x) dif x = -x e^(-x) - integral (-e^(-x)) dif x$
    $= -x e^(-x) + integral e^(-x) dif x$
    $= -x e^(-x) - e^(-x) + C = -(x+1) e^(-x) + C$
  ]

  (2)  $integral x cos(x/3) dif x$;
  #answer-process[
    令 $u = x$，$dif v = cos(x/3) dif x$，则 $dif u = dif x$，$v = 3 sin(x/3)$。
    
    $integral x cos(x/3) dif x = 3x sin(x/3) - 3 integral sin(x/3) dif x$
    $= 3x sin(x/3) - 3 · (-3 cos(x/3)) + C$
    $= 3x sin(x/3) + 9 cos(x/3) + C$
  ]

  (3)  $integral x^2 cos x dif x$;
  #answer-process[
    第一次分部积分：令 $u = x^2$，$dif v = cos x dif x$，则 $dif u = 2x dif x$，$v = sin x$。
    
    $integral x^2 cos x dif x = x^2 sin x - 2 integral x sin x dif x$
    
    对 $integral x sin x dif x$ 再分部积分：令 $u = x$，$dif v = sin x dif x$，则 $dif u = dif x$，$v = -cos x$。
    
    $integral x sin x dif x = -x cos x + integral cos x dif x = -x cos x + sin x + C$
    
    因此 $integral x^2 cos x dif x = x^2 sin x - 2(-x cos x + sin x) + C$
    $= x^2 sin x + 2x cos x - 2 sin x + C$
  ]

  (4)  $integral x^3 ln^2 x dif x$;
  #answer-process[
    令 $u = ln^2 x$，$dif v = x^3 dif x$，则 $dif u = 2 ln x · (1/x) dif x$，$v = x^4/4$。
    
    $integral x^3 ln^2 x dif x = frac(x^4, 4) ln^2 x - integral frac(x^4, 4) · frac(2 ln x, x) dif x$
    $= frac(x^4, 4) ln^2 x - frac(1, 2) integral x^3 ln x dif x$
    
    对 $integral x^3 ln x dif x$ 分部积分：令 $u = ln x$，$dif v = x^3 dif x$，则 $dif u = (1/x) dif x$，$v = x^4/4$。
    
    $integral x^3 ln x dif x = frac(x^4, 4) ln x - integral frac(x^4, 4) · frac(1, x) dif x$
    $= frac(x^4, 4) ln x - frac(1, 4) integral x^3 dif x$
    $= frac(x^4, 4) ln x - frac(x^4, 16) + C$
    
    因此 $integral x^3 ln^2 x dif x = frac(x^4, 4) ln^2 x - frac(1, 2)[frac(x^4, 4) ln x - frac(x^4, 16)] + C$
    $= frac(x^4, 4) ln^2 x - frac(x^4, 8) ln x + frac(x^4, 32) + C$
  ]

  (5)  $integral arcsin^2 x dif x$;
  #answer-process[
    令 $u = arcsin^2 x$，$dif v = dif x$，则 $dif u = 2 arcsin x · frac(1, sqrt(1 - x^2)) dif x$，$v = x$。
    
    $integral arcsin^2 x dif x = x arcsin^2 x - 2 integral frac(x arcsin x, sqrt(1 - x^2)) dif x$
    
    对 $integral frac(x arcsin x, sqrt(1 - x^2)) dif x$ 再分部积分：令 $u = arcsin x$，$dif v = frac(x, sqrt(1 - x^2)) dif x$，
    则 $dif u = frac(1, sqrt(1 - x^2)) dif x$，$v = -sqrt(1 - x^2)$。
    
    $integral frac(x arcsin x, sqrt(1 - x^2)) dif x = -arcsin x · sqrt(1 - x^2) + integral frac(sqrt(1 - x^2), sqrt(1 - x^2)) dif x$
    $= -arcsin x · sqrt(1 - x^2) + x + C$
    
    因此 $integral arcsin^2 x dif x = x arcsin^2 x - 2(-arcsin x sqrt(1 - x^2) + x) + C$
    $= x arcsin^2 x + 2 arcsin x sqrt(1 - x^2) - 2x + C$
  ]

  (6)  $integral cos ln x dif x$ ;
  #answer-process[
    令 $u = cos ln x$，$dif v = dif x$，则 $dif u = -sin ln x · (1/x) dif x$，$v = x$。
    
    $integral cos ln x dif x = x cos ln x + integral x · sin ln x · (1/x) dif x$
    $= x cos ln x + integral sin ln x dif x$  ...(1)
    
    对 $integral sin ln x dif x$ 同样分部积分：令 $u = sin ln x$，$dif v = dif x$，则 $dif u = cos ln x · (1/x) dif x$，$v = x$。
    
    $integral sin ln x dif x = x sin ln x - integral cos ln x dif x$  ...(2)
    
    由 (1)：$integral cos ln x dif x = x cos ln x + integral sin ln x dif x$
    
    代入 (2)：$integral cos ln x dif x = x cos ln x + x sin ln x - integral cos ln x dif x$
    
    $2 integral cos ln x dif x = x cos ln x + x sin ln x$
    
    $integral cos ln x dif x = frac(x(cos ln x + sin ln x), 2) + C$
  ]

  (7)  $integral e^(sqrt(3x + 9)) dif x$.
  #answer-process[
    令 $t = sqrt(3x + 9)$，则 $3x + 9 = t^2$，$x = (t^2 - 9)/3$，$dif x = (2t)/3 dif t$。
    
    $integral e^(sqrt(3x + 9)) dif x = integral e^t · frac(2t, 3) dif t = frac(2, 3) integral t e^t dif t$
    
    分部积分：令 $u = t$，$dif v = e^t dif t$，则 $dif u = dif t$，$v = e^t$。
    
    $integral t e^t dif t = t e^t - integral e^t dif t = t e^t - e^t + C = (t-1) e^t + C$
    
    因此 $integral e^(sqrt(3x + 9)) dif x = frac(2, 3) (sqrt(3x+9) - 1) e^(sqrt(3x+9)) + C$
  ]

3. 设函数  $f(x)$  的一个原函数是  $(sin x) / x$ , 求  $integral x f'(x) dif x$ .
  #answer-process[
    由题意，$integral f(x) dif x = frac(sin x, x) + C$，所以 $f(x) = (frac(sin x, x))' = frac(x cos x - sin x, x^2)$
     
    分部积分求 $integral x f'(x) dif x$：令 $u = x$，$dif v = f'(x) dif x$，则 $dif u = dif x$，$v = f(x)$。
     
    $integral x f'(x) dif x = x f(x) - integral f(x) dif x = x f(x) - frac(sin x, x) + C$
     
    $= x · frac(x cos x - sin x, x^2) - frac(sin x, x) + C$
     
    $= frac(x cos x - sin x, x) - frac(sin x, x) + C$
     
    $= frac(x cos x - sin x - sin x, x) + C = frac(x cos x - 2 sin x, x) + C$
  ]

4.(附加题)综合所学积分方法，计算下列不定积分：\
(1)  $integral (ln(2 + sqrt(x)))/(x + 2 sqrt(x)) dif x$;
#answer-process[
  令 $u = sqrt(x)$，则 $x = u^2$，$dif x = 2u dif u$。
  
  $x + 2 sqrt(x) = u^2 + 2u = u(u + 2)$
  
  $integral (ln(2 + sqrt(x)))/(x + 2 sqrt(x)) dif x = integral frac(ln(2+u), u(u+2)) · 2u dif u = 2 integral frac(ln(2+u), u+2) dif u$
  
  令 $v = 2 + u$，则 $u = v - 2$，$dif u = dif v$。
  
  $2 integral frac(ln(2+u), u+2) dif u = 2 integral frac(ln v, v) dif v$
  
  分部积分：令 $s = ln v$，$dif t = (1/v) dif v$，则 $dif s = (1/v) dif v$，$t = ln v$。
  
  $2 integral frac(ln v, v) dif v = 2 [ln^2 v / 2 - integral frac(ln v, v) dif v]$...这样会循环。
  
  直接：设 $integral frac(ln v, v) dif v$，令 $w = ln v$，$dif w = (1/v) dif v$。
  
  $integral frac(ln v, v) dif v = integral w dif w = frac(w^2, 2) + C = frac(ln^2 v, 2) + C = frac(ln^2(2+sqrt(x)), 2) + C$
  
  因此 $integral (ln(2 + sqrt(x)))/(x + 2 sqrt(x)) dif x = ln^2(2 + sqrt(x)) + C$
]

(2)  $integral (arctan e^x)/(e^(2x)) dif x$.
#answer-process[
  令 $u = e^x$，则 $dif u = e^x dif x$，$dif x = (dif u)/u$。
  
  $integral (arctan e^x)/(e^(2x)) dif x = integral frac(arctan u, u^2) · frac(dif u, u) = integral frac(arctan u, u^3) dif u$
  
  分部积分：令 $v = arctan u$，$dif w = (1/u^3) dif u$，则 $dif v = frac(1, 1+u^2) dif u$，$w = -frac(1, 2u^2)$。
  
  $integral frac(arctan u, u^3) dif u = -frac(arctan u, 2u^2) + integral frac(1, 2u^2(1+u^2)) dif u$
  
  对 $integral frac(1, 2u^2(1+u^2)) dif u$ 用部分分式：$frac(1, u^2(1+u^2)) = frac(A, u) + frac(B, u^2) + frac(C u + D, 1+u^2)$
  
  $1 = A u(1+u^2) + B(1+u^2) + (C u + D)u^2$
  
  令 $u = 0$：$1 = B$，所以 $B = 1$。
  
  比较系数可解得 $A = 0, B = 1, C = -1, D = 0$。
  
  $integral frac(1, 2u^2(1+u^2)) dif u = frac(1, 2)[-frac(1, u) - frac(1, 2) arctan u] + C = -frac(1, 2u) - frac(1, 4) arctan u + C$
  
  因此 $integral (arctan e^x)/(e^(2x)) dif x = -frac(arctan e^x, 2e^(2x)) - frac(1, 2e^x) - frac(1, 4) arctan e^x + C$
]
