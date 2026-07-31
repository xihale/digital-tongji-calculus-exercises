// 渲染器：数据 + mode → 版面
// 垂直间距只使用 style 的 gap-inner / gap-block / gap-item
//
// 入口：
//   render-section(title, problems)  — 独立一节（自带页面样式）
//   book-chapter(title)              — 书内章标题（进入目录）
//   book-section(title, problems)    — 书内一节（进入目录，不重置页面）

#import "style.typ": *
#import "ui.typ": *

// 题型显示名（序号按本节首次出现顺序自动编：一、二、三…）
#let kind-names = (
  judge: [判断题],
  choice: [选择题],
  blank: [填空题],
  compute: [计算题],
  short: [简答题],
  proof: [证明题],
)

#let cn-ordinals = (
  [一], [二], [三], [四], [五], [六], [七], [八], [九], [十],
)

#let has-solution(p) = "solution" in p or "solution-parts" in p

// 默认：有 parts（分项）就给小问编号，否则不编
#let solution-numbered(p) = p.at(
  "solution-numbered",
  default: "parts" in p or "solution-parts" in p,
)

#let make-solution(p) = {
  if not has-solution(p) { return none }
  solution-block(
    body: p.at("solution", default: none),
    parts: p.at("solution-parts", default: none),
    numbered: solution-numbered(p),
  )
}

#let render-figure(p) = {
  if "figure" not in p { return }
  v(gap-inner)
  align(center)[
    #p.figure
    #if "figure-caption" in p {
      v(0.35em)
      text(size: 0.9em, fill: muted)[#p.figure-caption]
    }
  ]
}

// ---------- 单题（full / practice） ----------
#let render-one(num, p) = {
  let stem-parts = if "parts" in p { subparts(p.parts) } else { none }
  let sol = make-solution(p)
  let fig = {
    if "figure" in p { render-figure(p) }
  }

  if p.kind == "choice" or p.kind == "judge" {
    problem(
      num,
      {
        p.stem
        if "answer" in p { choice-mark(p.answer) }
        if p.kind == "choice" or p.kind == "judge" [。]
      },
      extras: {
        fig
        if stem-parts != none { stem-parts }
        if "options" in p { choices(..p.options) }
        if sol != none { sol }
      },
    )
  } else if p.kind == "blank" {
    // answer 单空；answers 多空（「；」分隔语义）
    // 若另有 parts（分项空位如 square），题干处不重复贴答案，答案只在解/速查
    let has-parts = "parts" in p
    let blank = if has-parts {
      none
    } else if "answers" in p {
      blank-marks(p.answers)
    } else if "answer" in p {
      blank-mark(p.answer)
    } else {
      none
    }
    problem(
      num,
      {
        p.stem
        if blank != none { blank }
        // 有 parts 时题干常以「：」收束，不再叠句号；否则统一「。」
        if not has-parts [。]
      },
      extras: {
        fig
        if stem-parts != none { stem-parts }
        // 有 parts 的多空：详解前先给速查式答案行
        if show-solutions and has-parts and ("answers" in p or "answer" in p) {
          v(gap-block)
          block(width: 100%)[
            #set text(size: 0.97em, fill: solution-color)
            #text(weight: "bold", fill: answer-color)[答]#h(0.4em)
            #if "answers" in p {
              blank-marks(p.answers)
            } else {
              blank-mark(p.answer)
            }
          ]
        }
        if sol != none { sol }
      },
    )
  } else {
    // compute / proof / short / …
    problem(
      num,
      p.stem,
      extras: {
        fig
        if stem-parts != none { stem-parts }
        if show-solutions and sol != none {
          sol
        } else if mode == "practice" and p.at("practice-space", default: true) {
          v(p.at("practice-gap", default: practice-gap))
        }
      },
    )
  }
}

// ---------- 题册主体 ----------
#let render-problems(problems) = {
  // 题型首次出现顺序 → 一、二、三…
  let kind-seq = ()
  for p in problems {
    if "kind-title" not in p and not kind-seq.contains(p.kind) {
      kind-seq = kind-seq + (p.kind,)
    }
  }

  let last-key = none
  for (i, p) in problems.enumerate() {
    let key = if "kind-title" in p {
      "t:" + repr(p.kind-title)
    } else {
      "k:" + p.kind
    }

    if key != last-key {
      let title = if "kind-title" in p {
        p.kind-title
      } else {
        let idx = kind-seq.position(k => k == p.kind)
        let ord = cn-ordinals.at(calc.min(idx, cn-ordinals.len() - 1))
        let name = if p.kind in kind-names {
          kind-names.at(p.kind)
        } else {
          [#p.kind]
        }
        [#ord、#name]
      }
      subsection-title(title)
      last-key = key
    }
    render-one(i + 1, p)
  }
}

// ---------- 答案速查（无题干） ----------
#let problem-has-answer(p) = "answer" in p or "answers" in p

#let render-quick-answers(problems) = context {
  let entries = problems
    .enumerate()
    .filter(((i, p)) => problem-has-answer(p))
    .map(((i, p)) => {
      let num = i + 1
      let ans = if p.kind == "choice" or p.kind == "judge" {
        text(fill: answer-color, weight: "bold")[#p.answer]
      } else if p.kind == "blank" {
        if "answers" in p {
          blank-marks(p.answers)
        } else {
          blank-mark(p.answer)
        }
      } else {
        text(fill: answer-color)[#p.answer]
      }
      let w = (measure[#num. #ans].width + 2.2em).abs
      (num, ans, w)
    })

  if entries.len() == 0 { return }

  let max-w = calc.max(..entries.map(e => e.at(2)))
  let avail = content-width.abs
  let cols = calc.clamp(
    calc.floor(avail / max-w),
    1,
    calc.min(entries.len(), 4),
  )

  block(width: 100%, below: gap-inner)[
    #set text(size: body-size)
    #set par(leading: body-leading, spacing: par-spacing)
    #grid(
      columns: (auto,) * cols,
      column-gutter: 2.6em,
      row-gutter: gap-block,
      align: horizon,
      ..entries.map(e => [
        #text(weight: "bold", fill: stem-color)[#e.at(0).]
        #h(0.4em)
        #e.at(1)
      ]),
    )
  ]
}

// ---------- 详解（answers 模式） ----------
#let render-solutions(problems) = {
  for (i, p) in problems.enumerate() {
    if not has-solution(p) { continue }
    let num = i + 1
    let body = p.at("solution", default: none)
    let parts = p.at("solution-parts", default: none)
    block(width: 100%, above: gap-item, below: 0em, breakable: true)[
      #set text(size: 0.97em, fill: solution-color)
      #set par(leading: body-leading, spacing: par-spacing, first-line-indent: 0em)
      #text(weight: "bold", fill: stem-color)[#num.]
      #h(0.35em)
      #text(weight: "bold", fill: answer-color)[解]
      #h(0.4em)
      #if body != none { body }
      #if parts != none {
        subparts(parts, numbered: solution-numbered(p))
      }
    ]
  }
}

// ---------- 节内容（不含页面 set；书内 / 独立共用） ----------
#let section-body(title-content, problems) = {
  section-title(title-content)

  if show-stems {
    render-problems(problems)
  }

  if answers-only and problems.len() > 0 {
    let has-ans = problems.any(p => problem-has-answer(p))
    let has-sol = problems.any(p => has-solution(p))
    if has-ans {
      subsection-title([答案速查])
      render-quick-answers(problems)
    }
    if has-sol {
      subsection-title([详解])
      render-solutions(problems)
    }
  }
}

// ---------- 书内：章 ----------
#let book-chapter(title) = {
  chapter-title[
    #heading(level: 1, numbering: none)[#title]
  ]
}

// ---------- 书内：节（写入目录，不重置页面） ----------
#let book-section(title, problems) = {
  section-body(
    heading(level: 2, numbering: none)[#title],
    problems,
  )
}

// ---------- 独立编译一节 ----------
#let render-section(title, problems) = {
  apply-document-style()
  section-body(title, problems)
}
