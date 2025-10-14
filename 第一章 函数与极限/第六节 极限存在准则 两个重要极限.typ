#import "../template.typ": answer-space, blank, choices, section, subsection

#section[第六节 极限存在准则 两个重要极限]
#subsection[一、选择题]
1. $lim_(x->0)(1/x sin x)/(cos x) = ()$
  #v(0.5em)
  #choices(
    1,
    $infinity$,
    [不存在],
    0,
  )
2. $lim_(x->infinity)(1 - 1/x)^(2x) = ()$
  #v(0.5em)
  #choices(
    $2 e$,
    $e^(-2)$,
    $e^2$,
    $2/e$,
  )
#subsection[二、填空题]
3. 设  $lim_(x -> infinity) (1 + k/x)^x = e^3$ ，则  $k =$  #blank().
4. 设  $lim_(x->infinity)((x + 2a)/(x - a))^x = 8$ ，则  $a =$  #blank().
#subsection[三、计算题]
5.计算下列极限：
(1)  $lim_(x->0)x cot x$;
#answer-space
(2)  $lim_(x->0)(1 - cos 2x)/(x sin x)$;
#answer-space
(3)  $lim_(n->infinity)2^n sin(x/2^n)$  ( $x$  为不等于零的常数)；
#answer-space
(4)  $lim_(x->0)(1 - x)^(1/x)$;
#answer-space
(5)  $lim_(x->0)(1 + x)^(1/x)$
#answer-space
(6)  $lim_(x->infinity)(1 - 1/x)^(k x) (k in N_+)$.
#answer-space
#subsection[四、证明题]
6. 利用极限存在准则，证明：
  (1)  $lim_(n->infinity)n(1/(n^2 + pi) + 1/(n^2 + 2pi) + dots + 1/(n^2 + n pi)) = 1$;
  #answer-space
  (2) 数列  $sqrt(2), sqrt(2 + sqrt(2)), sqrt(2 + sqrt(2 + sqrt(2))), dots$  的极限存在；
  #answer-space
  (3)  $lim_(x->0)root(n, 1 + x) = 1$.
  #answer-space
