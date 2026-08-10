// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第六节 一般周期函数的傅里叶级数]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      函数 $f(x) = cases(cos((pi x)/(l)) & "if" 0 <= x <=(l)/(2),(0 & "if" l)/(2)< x <= l)$ 展开成余弦级数时，应对 $f(x)$ 进行
    ],
    options: (
      [周期为 $2 l$ 的延拓],
      [偶延拓],
      [周期为 $l$ 的延拓],
      [奇延拓],
    ),
    answer: [B],
  ),
  (
    kind: "choice",
    stem: [
      函数 $f(x) = cases(2x + 1 & "if" -3 <= x <= 0, x & "if" 0 < x <= 3)$ 展开成傅里叶级数时，应
    ],
    options: (
      [在区间 $[-3, 3)$ 外进行周期延拓，级数在区间 $(-3, 0) union (0, 3)$ 内收敛于 $f(x)$],
      [进行奇延拓，级数在区间 $(-3, 0) union (0, 3)$ 内收敛于 $f(x)$],
      [进行偶延拓，级数在区间 $[-3, 3]$ 上收敛于 $f(x)$],
      [在区间 $[-3, 3)$ 外进行周期延拓，级数在区间 $(-3, 3)$ 上收敛于 $f(x)$，且在端点处收敛于均值。],
    ),
    answer: [D],
    solution: [
      函数定义在 $[-3,3]$ 上，只需作周期延拓（周期为 6）。由狄利克雷收敛定理，在连续点处级数收敛于 $f(x)$，在间断点处收敛于左右极限均值。选项 D 正确描述了这一过程。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      将函数 $f(x) = cases(0 & "if" 0 <= x <= 1, 2x & "if" 1 < x <= 2)$ 在 $[0, 2]$ 上展开成余弦级数，其和函数在 $x=1$ 处的值为
    ],
    answer: [$1$],
    solution: [
      余弦级数对应偶延拓后在间断点取左右极限平均值。 \
          在 $x=1$ 处有 \
          $f(1-0)=0, f(1+0)=2$。 \
          故 \
          $S(1)=(1)/(2(0+2))=1$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      将函数 $f(x) = x$ ($0 < x < 2$) 展开成正弦级数
    ],
    solution: [
      在 $(0,2)$ 上作正弦展开： \
          $f(x)=sum_(n=1)^oo b_n sin((n pi x)/(2))$， \
          其中 \
          $b_n=(2)/(2 int_0^2 x sin((n pi x)/(2)) dif x)=int_0^2 x sin((n pi x)/(2)) dif x$。 \
          分部积分得 \
          $b_n=(4)/(pi (-1)^(n+1))/(n)$。 \
          故 \
          $x=(4)/(pi sum_(n=1)^oo (-1)^(n+1))/(n sin((n pi x)/(2))), 0 < x < 2$。
    ],
  ),
)

#book-section(section-title, problems)
