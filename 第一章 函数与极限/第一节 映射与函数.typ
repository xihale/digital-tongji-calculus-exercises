#import "../template.typ": *

#section[第一节 映射与函数]
#subsection[一、判断题]
1. $f(x) = x,g(x) = sqrt(x^2)$  是两个相同的函数. (#answer-choice[×])
   #answer-process[
     $f(x) = x$ 的定义域为 $RR$，而 $g(x) = sqrt(x^2) = |x|$ 的定义域也为 $RR$。
     但对应关系不同：$f(x) = x$，而 $g(x) = |x|$。
     因此它们不是相同的函数。
   ]
2.  $f(x) = 1, g(x) = sec^2 x - tan^2 x$  是两个相同的函数. (#answer-choice[×])
   #answer-process[
     虽然 $sec^2 x - tan^2 x = 1$，但 $f(x) = 1$ 的定义域为 $RR$，
     而 $g(x) = sec^2 x - tan^2 x$ 的定义域为 ${x | x != k pi + pi/2, k in ZZ}$。
     定义域不同，因此不是相同的函数。
   ]
#subsection[二、选择题]
3. 设函数  $f(x) = cases(
		 -sin^3 x &"if" -pi <= x <= 0,
		 sin^3 x &"if" 0 < x <= pi,
	)$ 
   则此函数是(#answer-choice[C]).
			#v(0.5em)
				#choices(
					[周期函数],
					[单调增函数],
					[奇函数],
					[偶函数]
				)
			 #answer-process[
			   检验 $f(-x)$：
			   - 当 $x in (0, pi]$ 时，$-x in [-pi, 0)$，$f(-x) = -sin^3(-x) = sin^3 x = -f(x)$
			   - 当 $x in [-pi, 0)$ 时，$-x in (0, pi]$，$f(-x) = sin^3(-x) = -sin^3 x = -f(x)$
			   
			   因此 $f(x)$ 是奇函数。
			 ]
4. 设函数  $f(x) = e^x, g(x) = sin^2 x$ ，则  $f[g(x)] = (#answer-choice[A])$ .
		 #v(0.5em)
		 #choices(
			$e^(sin^2 x)$,
			$sin^2 e^x$,
			$e^x sin^2 x$,
			$(sin^2 x)^(e^(x^2))$
		 )
			 #answer-process[
			   复合函数 $f[g(x)] = f(sin^2 x) = e^(sin^2 x)$。
			 ]
#subsection[三、计算题]
5. 求下列函数的自然定义域：\
   (1)  $y = arctan (x - 3)$ ;
   #answer-process[
     $arctan$ 函数的定义域为 $RR$，因此 $y = arctan(x-3)$ 的定义域为 $RR$。
   ]
   (2)  $y = sqrt(3 - x) + arctan (1/x)$ .
   #answer-process[
     需要满足：$3 - x >= 0$ 且 $x != 0$。
     因此定义域为 $(-infinity, 0) union (0, 3]$。
   ]
6. 设函数  $f(x)$  的定义域为  $D = [0,1]$ ，求下列函数的定义域：\
   (1)  $f(x^2)$
   #answer-process[
     需要 $0 <= x^2 <= 1$，即 $-1 <= x <= 1$。
     因此定义域为 $[-1, 1]$。
   ]
   (2)  $f(sin x)$ ;
   #answer-process[
     需要 $0 <= sin x <= 1$。
     因此定义域为 $[2k pi, (2k+1)pi], k in ZZ$。
   ]
   (3)  $f(x + a) + f(x - a) quad (a > 0)$ .
   #answer-process[
     需要同时满足：$0 <= x + a <= 1$ 和 $0 <= x - a <= 1$。
     即 $-a <= x <= 1-a$ 和 $a <= x <= 1+a$。
     取交集得：$a <= x <= 1-a$ (当 $a <= 1/2$ 时)。
     因此定义域为 $[a, 1-a]$ (其中 $0 < a <= 1/2$)。
   ]
7. 下列函数中哪些是偶函数，哪些是奇函数，哪些既非偶函数又非奇函数？\
   (1)  $y = sin x - cos x + 1$ ;
   #answer-process[
     $f(-x) = sin(-x) - cos(-x) + 1 = -sin x - cos x + 1 != plus.minus f(x)$。
     因此既非偶函数又非奇函数。
   ]
   (2)  $y = (a^x + a^(-x))/2$ .
   #answer-process[
     $f(-x) = (a^(-x) + a^x)/2 = (a^x + a^(-x))/2 = f(x)$。
     因此是偶函数。
   ]
#subsection[四、证明题]
8. 设下列所考虑的函数都是定义在区间  $(-l, l)$  内的，证明：\
   (1)两个偶函数的和是偶函数，两个奇函数的和是奇函数；
   #answer-process[
     设 $f(x)$ 和 $g(x)$ 都是偶函数，则 $f(-x) = f(x)$，$g(-x) = g(x)$。
     令 $h(x) = f(x) + g(x)$，则
     $h(-x) = f(-x) + g(-x) = f(x) + g(x) = h(x)$。
     因此 $h(x)$ 是偶函数。
     
     同理，设 $f(x)$ 和 $g(x)$ 都是奇函数，则 $f(-x) = -f(x)$，$g(-x) = -g(x)$。
     $h(-x) = f(-x) + g(-x) = -f(x) - g(x) = -h(x)$。
     因此 $h(x)$ 是奇函数。
   ]
   (2)两个偶函数的乘积是偶函数，两个奇函数的乘积是偶函数，偶函数与奇函数的乘积是奇函数.
   #answer-process[
     1) 设 $f(x)$、$g(x)$ 都是偶函数，令 $h(x) = f(x) dot g(x)$，则
        $h(-x) = f(-x) dot g(-x) = f(x) dot g(x) = h(x)$，因此是偶函数。
     
     2) 设 $f(x)$、$g(x)$ 都是奇函数，则
        $h(-x) = f(-x) dot g(-x) = (-f(x)) dot (-g(x)) = f(x) dot g(x) = h(x)$，因此是偶函数。
     
     3) 设 $f(x)$ 是偶函数，$g(x)$ 是奇函数，则
        $h(-x) = f(-x) dot g(-x) = f(x) dot (-g(x)) = -f(x) dot g(x) = -h(x)$，因此是奇函数。
   ]
