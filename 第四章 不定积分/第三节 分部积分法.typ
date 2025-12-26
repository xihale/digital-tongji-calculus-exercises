#import "../template.typ": *

#section[第三节 分部积分法]
#subsection[一、简答题]
1. 写出不定积分的分部积分公式及其推导过程(作业讲评时随机点名答辩).
   #answer-process[
     分部积分公式：$integral u d v = u v - integral v d u$
     
     推导过程：
     由乘积求导法则：$(u v)' = u' v + u v'$
     
     两边关于 $x$ 积分：
     $integral (u v)' d x = integral u' v d x + integral u v' d x$
     
     $u v = integral u' v d x + integral u v' d x$
     
     移项得：$integral u v' d x = u v - integral u' v d x$
     
     写成微分形式：$integral u d v = u v - integral v d u$
     
     其中 $d u = u' d x$，$d v = v' d x$。
   ]
#subsection[二、计算题]
2. 计算下列不定积分：\
  (1)  $integral x e^(-x) d x$
  #answer-process[
    令 $u = x$，$d v = e^(-x) d x$，则 $d u = d x$，$v = -e^(-x)$。
    
    $integral x e^(-x) d x = -x e^(-x) - integral (-e^(-x)) d x$
    $= -x e^(-x) + integral e^(-x) d x$
    $= -x e^(-x) - e^(-x) + C = -(x+1) e^(-x) + C$
  ]

  (2)  $integral x cos(x/3) d x$;
  #answer-process[
    令 $u = x$，$d v = cos(x/3) d x$，则 $d u = d x$，$v = 3 sin(x/3)$。
    
    $integral x cos(x/3) d x = 3x sin(x/3) - 3 integral sin(x/3) d x$
    $= 3x sin(x/3) - 3 · (-3 cos(x/3)) + C$
    $= 3x sin(x/3) + 9 cos(x/3) + C$
  ]

  (3)  $integral x^2 cos x d x$;
  #answer-process[
    第一次分部积分：令 $u = x^2$，$d v = cos x d x$，则 $d u = 2x d x$，$v = sin x$。
    
    $integral x^2 cos x d x = x^2 sin x - 2 integral x sin x d x$
    
    对 $integral x sin x d x$ 再分部积分：令 $u = x$，$d v = sin x d x$，则 $d u = d x$，$v = -cos x$。
    
    $integral x sin x d x = -x cos x + integral cos x d x = -x cos x + sin x + C$
    
    因此 $integral x^2 cos x d x = x^2 sin x - 2(-x cos x + sin x) + C$
    $= x^2 sin x + 2x cos x - 2 sin x + C$
  ]

  (4)  $integral x^3 ln^2 x d x$;
  #answer-process[
    令 $u = ln^2 x$，$d v = x^3 d x$，则 $d u = 2 ln x · (1/x) d x$，$v = (x^4)/4$。
    
    $integral x^3 ln^2 x d x = x^4/4 ln^2 x - integral x^4/4 · 2 ln x/x d x$
    $= x^4/4 ln^2 x - 1/2 integral x^3 ln x d x$
    
    对 $integral x^3 ln x d x$ 分部积分：令 $u = ln x$，$d v = x^3 d x$，则 $d u = (1/x) d x$，$v = (x^4)/4$。
    
    $integral x^3 ln x d x = x^4/4 ln x - integral x^4/4 · 1/x d x$
    $= x^4/4 ln x - 1/4 integral x^3 d x$
    $= x^4/4 ln x - x^4/16 + C$
    
    因此 $integral x^3 ln^2 x d x = x^4/4 ln^2 x - 1/2[x^4/4 ln x - x^4/16] + C$
    $= x^4/4 ln^2 x - x^4/8 ln x + x^4/32 + C$
  ]

  (5)  $integral arcsin^2 x d x$;
  #answer-process[
    令 $u = arcsin^2 x$，$d v = d x$，则 $d u = 2 arcsin x · 1/sqrt(1 - x^2) d x$，$v = x$。
    
    $integral arcsin^2 x d x = x arcsin^2 x - 2 integral x arcsin x/sqrt(1 - x^2) d x$
    
    对 $integral x arcsin x/sqrt(1 - x^2) d x$ 再分部积分：令 $u = arcsin x$，$d v = x/sqrt(1 - x^2) d x$，
    则 $d u = 1/sqrt(1 - x^2) d x$，$v = -sqrt(1 - x^2)$。
    
    $integral x arcsin x/sqrt(1 - x^2) d x = -arcsin x · sqrt(1 - x^2) + integral (sqrt(1 - x^2)/sqrt(1 - x^2)) d x$
    $= -arcsin x · sqrt(1 - x^2) + x + C$
    
    因此 $integral arcsin^2 x d x = x arcsin^2 x - 2(-arcsin x sqrt(1 - x^2) + x) + C$
    $= x arcsin^2 x + 2 arcsin x sqrt(1 - x^2) - 2x + C$
  ]

  (6)  $integral cos ln x d x$ ;
  #answer-process[
    令 $u = cos ln x$，$d v = d x$，则 $d u = -sin ln x · (1/x) d x$，$v = x$。
    
    $integral cos ln x d x = x cos ln x + integral x · sin ln x · (1/x) d x$
    $= x cos ln x + integral sin ln x d x$  ...(1)
    
    对 $integral sin ln x d x$ 同样分部积分：令 $u = sin ln x$，$d v = d x$，则 $d u = cos ln x · (1/x) d x$，$v = x$。
    
    $integral sin ln x d x = x sin ln x - integral cos ln x d x$  ...(2)
    
    由 (1)：$integral cos ln x d x = x cos ln x + integral sin ln x d x$
    
    代入 (2)：$integral cos ln x d x = x cos ln x + x sin ln x - integral cos ln x d x$
    
    $2 integral cos ln x d x = x cos ln x + x sin ln x$
    
    $integral cos ln x d x = (x(cos ln x + sin ln x)/2) + C$
  ]

  (7)  $integral e^(sqrt(3x + 9)) d x$.
  #answer-process[
    令 $t = sqrt(3x + 9)$，则 $3x + 9 = t^2$，$x = (t^2 - 9)/3$，$d x = (2t)/3 d t$。
    
    $integral e^(sqrt(3x + 9)) d x = integral e^t · 2t/3 d t = 2/3 integral t e^t d t$
    
    分部积分：令 $u = t$，$d v = e^t d t$，则 $d u = d t$，$v = e^t$。
    
    $integral t e^t d t = t e^t - integral e^t d t = t e^t - e^t + C = (t-1) e^t + C$
    
    因此 $integral e^(sqrt(3x + 9)) d x = 2/3 (sqrt(3x+9) - 1) e^(sqrt(3x+9)) + C$
  ]

3. 设函数  $f(x)$  的一个原函数是  $(sin x) / x$ , 求  $integral x f'(x) d x$ .
  #answer-process[
    由题意，$integral f(x) d x = sin x/x + C$，所以 $f(x) = (sin x/x)' = x cos x - sin x/x^2$
     
    分部积分求 $integral x f'(x) d x$：令 $u = x$，$d v = f'(x) d x$，则 $d u = d x$，$v = f(x)$。
     
    $integral x f'(x) d x = x f(x) - integral f(x) d x = x f(x) - sin x/x + C$
     
    $= x · x cos x - sin x/x^2 - sin x/x + C$
     
    $= x cos x - sin x/x - sin x/x + C$
     
    $= x cos x - sin x - sin x/x + C = x cos x - 2 sin x/x + C$
  ]

4.(附加题)综合所学积分方法，计算下列不定积分：\
(1)  $integral (ln(2 + sqrt(x)))/(x + 2 sqrt(x)) d x$;
#answer-process[
  令 $u = sqrt(x)$，则 $x = u^2$，$d x = 2u d u$。
  
  $x + 2 sqrt(x) = u^2 + 2u = u(u + 2)$
  
  $integral (ln(2 + sqrt(x)))/(x + 2 sqrt(x)) d x = integral (ln(2+u)/u(u+2)) · 2u d u = 2 integral (ln(2+u)/u+2) d u$
  
  令 $v = 2 + u$，则 $u = v - 2$，$d u = d v$。
  
  $2 integral (ln(2+u)/u+2) d u = 2 integral ln v/v d v$
  
  分部积分：令 $s = ln v$，$d t = (1/v) d v$，则 $d s = (1/v) d v$，$t = ln v$。
  
  $2 integral ln v/v d v = 2 [ln^2 v / 2 - integral ln v/v d v]$...这样会循环。
  
  直接：设 $integral ln v/v d v$，令 $w = ln v$，$d w = (1/v) d v$。
  
  $integral ln v/v d v = integral w d w = w^2/2 + C = ln^2 v/2 + C = (ln^2(2+sqrt(x))/2) + C$
  
  因此 $integral (ln(2 + sqrt(x)))/(x + 2 sqrt(x)) d x = ln^2(2 + sqrt(x)) + C$
]

(2)  $integral (arctan e^x)/(e^(2x)) d x$.
#answer-process[
  令 $u = e^x$，则 $d u = e^x d x$，$d x = (d u)/u$。
  
  $integral (arctan e^x)/(e^(2x)) d x = integral arctan u/u^2 · d u/u = integral arctan u/u^3 d u$
  
  分部积分：令 $v = arctan u$，$d w = (1/(u^3)) d u$，则 $d v = 1/1+u^2 d u$，$w = -1/2u^2$。
  
  $integral arctan u/u^3 d u = -arctan u/2u^2 + integral 1/2u^2(1+u^2) d u$
  
  对 $integral 1/2u^2(1+u^2) d u$ 用部分分式：$1/u^2(1+u^2) = A/u + B/u^2 + C u + D/1+u^2$
  
  $1 = A u(1+u^2) + B(1+u^2) + (C u + D)u^2$
  
  令 $u = 0$：$1 = B$，所以 $B = 1$。
  
  比较系数可解得 $A = 0, B = 1, C = -1, D = 0$。
  
  $integral 1/2u^2(1+u^2) d u = 1/2[-1/u - 1/2 arctan u] + C = -1/2u - 1/4 arctan u + C$
  
  因此 $integral (arctan e^x)/(e^(2x)) d x = -arctan e^x/2e^(2x) - 1/2e^x - 1/4 arctan e^x + C$
]
