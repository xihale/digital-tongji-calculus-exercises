// 统一的标题样式模板
#let title(content) = text(weight: "bold", size: 2.3em, content)
#let chapter(content) = align(center)[#(text(weight: "bold", size: 1.8em, content))]
#let section(content) = align(center)[#(text(weight: "bold", size: 1.4em, content))]
#let subsection(content) = block(text(weight: "bold", size: 1.2em, content))

#let answer-space = v(8cm)
#let blank(length: 4em) = box(width: length, stroke: (bottom: 0.7pt))

#let choices(..opts) = {
    let labels = ([A], [B], [C], [D], [E], [F], [G])
    let opts = opts.pos()
    let n = opts.len()

    grid(rows: n)[
        #for i in range(n) {
            stack(dir: ltr, spacing: 1.5em)[
                #labels.at(i).
                #opts.at(i)
            ]
        }
    ]
}
