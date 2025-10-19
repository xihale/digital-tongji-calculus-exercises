#import "../template.typ": *

#section[第六节 极限存在准则 两个重要极限]
#subsection[一、选择题]
1. $lim_(x->0)(1/x sin x)/(cos x)$ (#h(2em))
  #v(0.5em)
  #answer-choice[1]
  #choices(
    1,
    $infinity$,
    [不存在],
    0,
  )
  #answer-process[
    当 $x->0$ 时，$sin x approx x$，$cos x approx 1$，所以：
    $lim_(x-(>0)(1)/x sin x)/(cos x) = lim_(x-(>0)(1)/x dot x)/1 = lim_(x-(>0)1)/1 = 1$
  ]

2. $lim_(x->infinity)(1 - 1/x)^(2x)$ (#h(2em))
  #v(0.5em)
  #answer-choice[$e^(-2)$]
  #choices(
    $2 e$,
    $e^(-2)$,
    $e^2$,
    $2/e$,
  )
  #answer-process[
    我们知道 $lim_(x->infinity)(1 + 1/x)^x = e$，所以：
    $lim_(x->infinity)(1 - 1/x)^(2x) = lim_(x->infinity)[(1 - 1/x)^(-x)]^(-2) = e^(-2)$
  ]

#subsection[二、填空题]
3. 设  $lim_(x -> infinity) (1 + k/x)^x = e^3$ ，则  $k =$ #blank(3).
  #answer-process[
    我们知道 $lim_(x -> infinity) (1 + k/x)^x = e^k$，所以 $e^k = e^3$，因此 $k = 3$。
  ]

4. 设  $lim_(x->infinity)((x + 2a)/(x - a))^x = 8$ ，则  $a =$ #blank($ln 2$).
  #answer-process[
    将表达式变形：
    $lim_(x->infinity)((x + 2a)/(x - a))^x = lim_(x->infinity)(1 + 3a/(x - a))^x$
    
    令 $t = x - a$，则 $x = t + a$，当 $x->infinity$ 时，$t->infinity$，所以：
    $lim_(t->infinity)(1 + 3a/t)^(t + a) = lim_(t->infinity)(1 + 3a/t)^t dot (1 + 3a/t)^a = e^(3a) dot 1 = e^(3a)$
    
    所以 $e^(3a) = 8 = 2^3 = (e^(ln 2))^3 = e^(3 ln 2)$，因此 $3a = 3 ln 2$，即 $a = ln 2$。
  ]

#subsection[三、计算题]
5.计算下列极限：
(1)  $lim_(x->0)x cot x$;
  #answer-process[
    我们知道 $cot x = cos x / sin x$，所以：
    $lim_(x->0)x cot x = lim_(x->0)x dot (cos x / sin x) = lim_(x->0)(x / sin x) dot cos x$
    
    当 $x->0$ 时，$x / sin x -> 1$，$cos x -> 1$，所以：
    $lim_(x->0)(x / sin x) dot cos x = 1 dot 1 = 1$
  ]
  

(2)  $lim_(x->0)(1 - cos 2x)/(x sin x)$;
  #answer-process[
    使用三角恒等式 $1 - cos 2x = 2 sin^2 x$，所以：
    $lim_(x->0)(1 - cos 2x)/(x sin x) = lim_(x->0)(2 sin^2 x)/(x sin x) = lim_(x->0)(2 sin x)/x = 2 dot lim_(x->0)(sin x)/x = 2 dot 1 = 2$
  ]
  

(3)  $lim_(n->infinity)2^n sin(x/2^n)$  ( $x$  为不等于零的常数)；
  #answer-process[
    令 $t = x/(2^n)$，当 $n->infinity$ 时，$t->0$，所以：
    $lim_(n->infinity)2^n sin(x/2^n) = lim_(t-(>0)(x)/t) sin t = x dot lim_(t->0)(sin t)/t = x dot 1 = x$
  ]
  

(4)  $lim_(x->0)(1 - x)^(1/x)$;
  #answer-process[
    我们知道 $lim_(x->0)(1 + x)^(1/x) = e$，所以：
    $lim_(x->0)(1 - x)^(1/x) = lim_(x->0)[(1 + (-x))^(1/(-x))]^(-1) = e^(-1) = 1/e$
  ]
  

(5)  $lim_(x->0)(1 + x)^(1/x)$
  #answer-process[
    这是一个重要极限，直接得到：
    $lim_(x->0)(1 + x)^(1/x) = e$
  ]
  

(6)  $lim_(x->infinity)(1 - 1/x)^(k x) (k in N_+)$.
  #answer-process[
    我们可以变形：
    $lim_(x->infinity)(1 - 1/x)^(k x) = lim_(x->infinity)[(1 - 1/x)^(-x)]^(-k) = e^(-k)$
  ]
  

#subsection[四、证明题]
6. 利用极限存在准则，证明：\
  (1)  $lim_(n->infinity)n(1/(n^2 + pi) + 1/(n^2 + 2pi) + dots + 1/(n^2 + n pi)) = 1$;
  #answer-process[
    使用夹逼准则。设 $S_n = n(1/(n^2 + pi) + 1/(n^2 + 2pi) + dots + 1/(n^2 + n pi))$
    
    对于每一项 $1/(n^2 + k pi)$，其中 $k = 1, 2, ..., n$，我们有：
    $1/(n^2 + n pi) <= 1/(n^2 + k pi) <= 1/(n^2 + pi)$
    
    因此：
    $n dot n/(n^2 + n pi) <= S_n <= n dot n/(n^2 + pi)$
    
    即：
    $(n^2)/(n^2 + n pi) <= S_n <= (n^2)/(n^2 + pi)$
    
    当 $n->infinity$ 时：
    $lim_(n->infinity) (n^2)/(n^2 + n pi) = lim_(n->infinity) 1/(1 + pi/n) = 1$
    $lim_(n->infinity) (n^2)/(n^2 + pi) = lim_(n->infinity) 1/(1 + pi/(n^2)) = 1$
    
    根据夹逼准则，$lim_(n->infinity) S_n = 1$，证毕。
  ]
  

  (2) 数列  $sqrt(2), sqrt(2 + sqrt(2)), sqrt(2 + sqrt(2 + sqrt(2))), dots$  的极限存在；
  #answer-process[
    设数列为 ${a_n}$，其中 $a_1 = sqrt(2)$，$a_{n+1} = sqrt(2 + a_n)$。
    
    首先，证明数列有上界。显然，$a_1 = sqrt(2) < 2$。假设 $a_n < 2$，则 $a_{n+1} = sqrt(2 + a_n) < sqrt(2 + 2) = 2$。由数学归纳法，对所有 $n$，$a_n < 2$。
    
    其次，证明数列单调递增。$a_1 = sqrt(2) approx 1.414$，$a_2 = sqrt(2 + sqrt(2)) approx 1.848$，所以 $a_1 < a_2$。假设 $a_n > a_{n-1}$，则 $a_{n+1} = sqrt(2 + a_n) > sqrt(2 + a_{n-1}) = a_n$。由数学归纳法，数列 ${a_n}$ 单调递增。
    
    由于数列 ${a_n}$ 单调递增且有上界，根据单调有界准则，数列 ${a_n}$ 的极限存在。
  ]
  

  (3)  $lim_(x->0)root(n, 1 + x) = 1$.
  #answer-process[
    需要证明 $lim_(x->0)(1 + (x)(1)/n) = 1$。
    
    令 $f(x) = (1 + (x)(1)/n) - 1$，需要证明 $lim_(x->0) f(x) = 0$。
    
    当 $x > 0$ 时，$(1 + (x)(1)/n) > 1$，所以 $f(x) > 0$。
    当 $-1 < x < 0$ 时，$(1 + (x)(1)/n) < 1$，所以 $f(x) < 0$。
    
    考虑 $x > 0$ 的情况，有：
    $0 < (1 + (x)(1)/n) - 1 < (1 + x) - 1 = x$
    
    当 $x->0^+$ 时，$x->0$，根据夹逼准则，$lim_(x->0^+) f(x) = 0$。
    
    考虑 $-1 < x < 0$ 的情况，令 $x = -y$，其中 $0 < y < 1$，则：
    $f(x) = (1 - (y)(1)/n) - 1$
    
    由于 $0 < 1 - y < 1$，所以 $(1 - (y)(1)/n) > 1 - y$（因为 $1/n < 1$），因此：
    $1 - y - 1 < (1 - (y)(1)/n) - 1 < 0$
    即 $-y < f(x) < 0$
    
    当 $x->0^-$ 时，$y->0^+$，根据夹逼准则，$lim_(x->0^-) f(x) = 0$。
    
    综上所述，$lim_(x->0) f(x) = 0$，即 $lim_(x->0)(1 + (x)(1)/n) = 1$，证毕。
  ]
  