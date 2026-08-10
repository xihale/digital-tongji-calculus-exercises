// 渲染器：数据 + mode → 版面
// 垂直间距只使用 style 的 gap-inner / gap-block / gap-item
//
// 入口：
//   render-section(title, problems)  — 独立一节（自带页面样式）
//   book-chapter(title)              — 书内章标题（进入目录）
//   book-section(title, problems)    — 书内一节（进入目录，不重置页面）

#import "style.typ": *
#import "ui.typ": *
// 供题干内嵌空：#import "…/render.typ": book-section, blank, judge-blank
#let blank = blank
#let judge-blank = judge-blank

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
  // spacer 不在此渲染（由 render-problems 直接发 write-space）；
  // 兜底：若被别处误调，仍按高度给留白，不当作普通题渲染。
  if p.kind == "spacer" {
    // 固定高度、不可分页（与 write-space 同策略）
    if mode == "practice" {
      write-space(p.at("height", default: spacer-default))
    }
    return
  }

  let stem-parts = if "parts" in p { subparts(p.parts) } else { none }
  let sol = make-solution(p)
  let fig = {
    if "figure" in p { render-figure(p) }
  }

  if p.kind == "choice" or p.kind == "judge" {
    // 判断：answer 单空；answers 多空（「；」分隔语义）
    // 多空可在题干用 #judge-blank() 内嵌；未写则题末自动补括号。
    let judge-ans-list = if p.kind == "judge" {
      if "answers" in p {
        p.answers
      } else if "answer" in p {
        (p.answer,)
      } else {
        ()
      }
    } else {
      ()
    }
    problem(
      num,
      {
        if p.kind == "judge" and judge-ans-list.len() > 0 {
          blank-answers.update(judge-ans-list)
          blank-counter.update(0)
        }
        p.stem
        if p.kind == "choice" {
          if "answer" in p { choice-mark(p.answer) }
        } else if p.kind == "judge" {
          if "answers" in p {
            context {
              let used = blank-counter.get().first()
              let n = judge-ans-list.len()
              if n > 0 and used < n {
                if used == 0 {
                  choice-marks(judge-ans-list)
                } else {
                  choice-marks(judge-ans-list.slice(used))
                }
              }
            }
          } else if "answer" in p {
            choice-mark(p.answer)
          } else {
            // 既无 answer 也无 answers：题末兜底补一个空括号（避免判断题无括号）
            choice-mark([])
          }
        }
        // 选择/判断：只贴（　），括号后不加句号。
        // 题干本身勿再写句号。
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
    // 题干可用 #blank() 内嵌空位（按顺序消费 answer/answers）；
    // 未使用 #blank() 时仍在题末自动补空（兼容旧题）。
    // 若另有 parts（分项横线空位），题干处不重复贴答案，答案只在解/速查。
    let has-parts = "parts" in p
    let ans-list = if "answers" in p {
      p.answers
    } else if "answer" in p {
      (p.answer,)
    } else {
      ()
    }
    problem(
      num,
      {
        blank-answers.update(ans-list)
        blank-counter.update(0)
        p.stem
        // 题干内未写 #blank()：空位贴在末尾；
        // 若已写部分 #blank() 但仍少于答案数：剩余空位补在末尾。
        // 若既无 answer/answers 也未写 #blank()：仍画一个空位（避免「填空题无空」）。
        if not has-parts {
          context {
            let used = blank-counter.get().first()
            let n = ans-list.len()
            if n > 0 and used < n {
              if used == 0 {
                blank-marks(ans-list)
              } else {
                blank-marks(ans-list.slice(used))
              }
            } else if n == 0 and used == 0 {
              blank-mark([])
            }
          }
          // 填空题空位后不加句号
        }
      },
      extras: {
        fig
        if stem-parts != none { stem-parts }
        // 有 parts 的多空：详解前先给速查式答案行
        if show-solutions and has-parts and ans-list.len() > 0 {
          v(gap-block)
          block(width: 100%)[
            #set text(size: 0.97em, fill: solution-color)
            #text(weight: "bold", fill: answer-color)[答]#h(0.4em)
            #blank-marks(ans-list)
          ]
        }
        if sol != none { sol }
      },
    )
  } else {
    // compute / proof / short / …
    // 练习版：题干后固定高度作答留白（不可拆）；整题是否跨页由 problem 统一判断
    let want-space = mode == "practice" and p.at("practice-space", default: true)
    let show-sol = show-solutions and sol != none
    problem(
      num,
      p.stem,
      extras: {
        fig
        if stem-parts != none { stem-parts }
        if show-sol {
          sol
        } else if want-space {
          write-space(p.at("practice-gap", default: practice-gap))
        }
      },
    )
  }
}

// ---------- 题册主体 ----------
// 小节标题规则（按 problems 数组自动推断）：
//   - 默认：kind 变化时出标题，序号按本节 kind 首次出现顺序（一、二、三…）
//   - 同 kind 连续题只出一次标题（勿给每题写 kind-title）
//   - 可选 kind-title：仅在需要覆盖默认名时写在该组首题
//     （如「判断题（如果错误…）」、试卷分值、应用题/选答题等同 kind 另起一节）
#let render-problems(problems) = {
  // 题型首次出现顺序 → 一、二、三…（spacer 不参与）
  let kind-seq = ()
  for p in problems {
    if p.kind == "spacer" { continue }
    if not kind-seq.contains(p.kind) {
      kind-seq = kind-seq + (p.kind,)
    }
  }

  // 题号独立计数：spacer 不占题号，也不出小节标题。
  let last-kind = none
  let num = 0
  for p in problems {
    if p.kind == "spacer" {
      if mode == "practice" {
        write-space(p.at("height", default: spacer-default))
      }
      continue
    }

    // 显式 kind-title → 强制新小节（支持同 kind 拆成「计算题 / 应用题」等）；
    // 否则仅在 kind 变化时新开小节，自动生成「一、判断题」类标题。
    let new-section = "kind-title" in p or p.kind != last-kind
    if new-section {
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
      last-kind = p.kind
    }
    num += 1
    render-one(num, p)
  }
}

// ---------- 答案速查（无题干） ----------
#let problem-has-answer(p) = "answer" in p or "answers" in p

#let render-quick-answers(problems) = context {
  // 题号与正文一致：spacer 不占题号；非 spacer 题都计数（无论有无答案），
  // 但只对有答案的题输出条目。
  let entries = ()
  let num = 0
  for p in problems {
    if p.kind == "spacer" { continue }
    num += 1
    if not problem-has-answer(p) { continue }
    let ans = if p.kind == "choice" {
      text(fill: answer-color, weight: "bold")[#p.answer]
    } else if p.kind == "judge" {
      if "answers" in p {
        {
          for (i, a) in p.answers.enumerate() {
            if i > 0 [；]
            text(fill: answer-color, weight: "bold")[#a]
          }
        }
      } else {
        text(fill: answer-color, weight: "bold")[#p.answer]
      }
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
    entries.push((num, ans, w))
  }

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
  // 题号与正文一致：spacer 不占题号。
  let num = 0
  for p in problems {
    if p.kind == "spacer" { continue }
    num += 1
    if not has-solution(p) { continue }
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
    if problems.len() == 0 {
      // 占位：本节无题（与题目一致的间距节奏）
      block(width: 100%, above: gap-item, below: gap-item)[本节无题]
    } else {
      render-problems(problems)
    }
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
