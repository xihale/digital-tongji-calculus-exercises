#import "../template.typ": *

#section[第一节 映射与函数]
#subsection[一、判断题]
1.  $f(x) = x,g(x) = sqrt(x^2)$  是两个相同的函数. (#h(2em))
   #answer-space
2.  $f(x) = 1, g(x) = sec^2 x - tan^2 x$  是两个相同的函数. (#h(2em))
   #answer-space
#subsection[二、选择题]
3. 设函数  $f(x) = cases(
		 -sin^3 x &"if" -pi <= x <= 0,
		 sin^3 x &"if" 0 < x <= pi,
	)$ 
   则此函数是(#h(2em)).
			#v(0.5em)
				#choices(
					[周期函数],
					[单调增函数],
					[奇函数],
					[偶函数]
				)
			 #answer-space
4. 设函数  $f(x) = e^x, g(x) = sin^2 x$ ，则  $f[g(x)] = (#h(2em))$ .
		 #v(0.5em)
		 #choices(
			$e^(sin^2 x)$,
			$sin^2 e^x$,
			$e^x sin^2 x$,
			$(sin^2 x)^(e^(x^2))$
		 )
			 #answer-space
#subsection[三、计算题]
5. 求下列函数的自然定义域：\
   (1)  $y = arctan (x - 3)$ ;
   #answer-space
   (2)  $y = sqrt(3 - x) + arctan (1/x)$ .
   #answer-space
6. 设函数  $f(x)$  的定义域为  $D = [0,1]$ ，求下列函数的定义域：\
   (1)  $f(x^2)$
   #answer-space
   (2)  $f(sin x)$ ;
   #answer-space
   (3)  $f(x + a) + f(x - a) quad (a > 0)$ .
   #answer-space
7. 下列函数中哪些是偶函数，哪些是奇函数，哪些既非偶函数又非奇函数？\
   (1)  $y = sin x - cos x + 1$ ;
   #answer-space
   (2)  $y = (a^x + a^(-x))/2$ .
   #answer-space
#subsection[四、证明题]
8. 设下列所考虑的函数都是定义在区间  $(-l, l)$  内的，证明：\
   (1)两个偶函数的和是偶函数，两个奇函数的和是奇函数；
   #answer-space
   (2)两个偶函数的乘积是偶函数，两个奇函数的乘积是偶函数，偶函数与奇函数的乘积是奇函数.
   #answer-space
