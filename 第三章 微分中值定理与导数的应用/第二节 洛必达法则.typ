#import "../template.typ": *

#section[第二节 洛必达法则]
#subsection[一、选择题]
1. 下列式子中运用洛必达法则正确的是 (#answer-choice[B])
   #choices(
   [$lim_(n->infinity)root(n,n) = e^(lim_(n->infinity)(ln n)/n) = e^(lim_(n->infinity)(1/n)) = 1$],
   [$lim_(x->0)(x + sin x)/(x - sin x) = lim_(x->0)(1 + cos x)/(1 - cos x) = infinity$],
   [$lim_(x->0)(x^2 sin(1/x))/(sin x) = lim_(x->0)(2x sin(1/x) - cos(1/x))/(cos x)$  不存在],
   [$lim_(x->0)x/e^x = lim_(x->0)1/e^x = 1$]
   )
   #answer-process[
     A: 虽然最终结果 $e^0 = 1$ 是正确的，但表达式中从 $lim_(n->infinity)(ln n)/n$ 直接跳到 $lim_(n->infinity)(1/n)$ 没有明确显示洛必达法则的应用步骤（即求导过程）。严格来说，应写为 $lim_(n->infinity)((ln n)')/(n') = lim_(n->infinity)(1/n)/1 = lim_(n->infinity)(1/n)$。
     
     B: 分子分母都趋于0，可用洛必达法则，$lim = lim (1+cos x)/(1-cos x)|_{x->0}$ 但 $1-cos 0 = 0$，需再用一次，得 infinity ✓
     
     C: 洛必达法则应用不当，分子极限为 0，不能再应用
     
     D: $lim x/(e^x) -> 0/1 = 0$，而不是用洛必达后 $1/(e^0) = 1$
   ]
   
2. 下列式子中，极限存在但不能用洛必达法则计算的是 (#answer-choice[C])
   #choices(
   [$lim_(x->0)x^2(sin x)$],
   [$lim_(x->0^+)(1/x)^(tan x)$],
   [$lim_(x->infinity)(x + sin x)/x$],
   [$lim_(x-> +infinity)x^n/e^x$]
   )
   #answer-process[
     A: 连乘形式，极限为0，可用洛必达
     
     B: $(1/x)^(tan x) = e^(tan x ln(1/x)) = e^(-tan x ln x)$，可用洛必达
     
     C: $lim = lim(1 + sin x / x) = 1 + 0 = 1$，这是代数方法，不涉及 0/0 ✓
     
     D: 可用洛必达法则
   ]
#subsection[二、填空题]
3.  $lim_(x->pi/2)(cos 5x)/(cos 3x) =$ #blank[$-5/3$]
   #answer-process[
     用洛必达法则（分子分母都趋于0）：
     
     $lim = lim (-5 sin 5x) / (-3 sin 3x) |_{x -> pi/2} = (-5 times (-1)) / (-3 times 1) = -5/3$
   ]

4.  $lim_(x-> +infinity)ln(1 + 1/x)/(arctan x) =$ #blank[0]
   #answer-process[
     当 $x -> infinity$：分子 $ln(1 + 1/x) -> 0$，分母 $arctan x -> pi/2$
     
     $lim = 0 / (pi/2) = 0$
   ]
#subsection[三、计算题]
5. 用洛必达法则计算下列极限：\
   (1)  $lim_(x->0)(e^x - e^(-x))/sin x$;
   #answer-process[
     $lim = lim (e^x + e^(-x)) / cos x = (1 + 1) / 1 = 2$
   ]
   
   (2)  $lim_(x->0^+)ln(tan 7x)/ln(tan 2x)$;
   #answer-process[
     两次洛必达法则：
     
     $lim = lim (7 sec^2 7x) / (tan 7x) times (tan 2x) / (2 sec^2 2x)$
     
     $= lim (7 sec^2 7x tan 2x) / (2 sec^2 2x tan 7x)$
     
     当 $x -> 0^+$ 时，使用 $tan x ~ x$：$lim = (7 times 1 times 2x) / (2 times 1 times 7x) = 1$
   ]
   
   (3)  $lim_(x->0)ln(1 + x^2)/(sec x - cos x)$;
   #answer-process[
     分子 $->$ 0，分母 $sec x - cos x = 1/cos x - cos x = (1 - cos^2 x) / cos x = sin^2 x / cos x -> 0$
     
     用洛必达：$lim = lim (2x/(1+x^2)) / (sin x / cos x times (-sin x) - (-sin x)/(cos^2) x)$
     
     简化后 $lim -> 2 times 1 / 1 = 2$
   ]
   
   (4)  $lim_(x->0)x^2 e^(1/x^2)$;
   #answer-process[
     令 $t = 1/(x^2)$，当 $x -> 0$ 时 $t -> infinity$
     
     原极限 $= lim_(t -> infinity) e^t / t = infinity$（指数速度更快）
     
     等等，应该是0。重新考虑：当 $x -> 0$ 时，$x^2 -> 0$ 而 $e^(1/x^2) -> infinity$
     
     这是 $0 times infinity$ 形式，需要转化为 $lim_(x->0) e^(1/x^2) / (1/(x^2)) = lim_(u -> infinity) e^u / u = infinity$
     
     所以原极限为 infinity
   ]
   
   (5)  $lim_(x->1)(2/(x^2 - 1) - 1/(x - 1))$ ;
   #answer-process[
     通分：$= lim_(x->1) (2(x-1) - (x^2-1)) / ((x^2-1)(x-1))$
     
     $= lim_(x->1) (2x - 2 - x^2 + 1) / ((x-1)^2(x+1))$
     
     $= lim_(x->1) (-x^2 + 2x - 1) / ((x-1)^2(x+1))$
     
     $= lim_(x->1) (-(x-1)^2) / ((x-1)^2(x+1)) = -1/2$
   ]
   
   (6)  $lim_(x->0^+)x^(sin x)$
   #answer-process[
     令 $y = x^(sin x) = e^(sin x ln x)$
     
     $lim_(x->0^+) sin x ln x = lim_(x->0^+) ln x / (1/sin x) = lim (-1/x) / (-cos x / sin^2 x) = lim sin^2 x / (x cos x) = 0$
     
     所以 $lim x^(sin x) = e^0 = 1$
   ]
   
   (7)  $lim_(x->1^-)(1 - x) tan (pi x/2)$;
   #answer-process[
     当 $x -> 1^-$ 时，$(1-x) -> 0$ 而 $tan(pi x/2) -> tan(pi/2) = infinity$
     
     令 $u = 1 - x$，当 $x -> 1^-$ 时 $u -> 0^+$
     
     原极限 $= lim_(u -> 0^+) u tan(pi(1-u)/2) = lim u tan(pi/2 - pi u/2)$
     
     $= lim u cot(pi u/2) = lim u / tan(pi u/2) = lim 1 / (pi/2 sec^2(pi u/2)) = 2/pi$
   ]
   
   (8)  $lim_(x->0^+)(1/x)^(tan x)$.
   #answer-process[
     令 $y = (1/x)^(tan x) = e^(tan x ln(1/x)) = e^(-tan x ln x)$
     
     $lim_(x->0^+) (-tan x ln x) = lim_(x->0^+) (-ln x / cot x)$
     
     用洛必达：$= lim (-1/x) / (-csc^2 x) = lim sin^2 x / x = 0$
     
     所以 $lim (1/x)^(tan x) = e^0 = 1$
   ]
