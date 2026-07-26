// 兼容层：新书一律走 lib/ + book-section。
// 章节文件应：#import "lib/render.typ": book-section / book-chapter
// 本文件仅保留少量符号，供 intro 等轻量引用。

#import "lib/style.typ": (
  mode, show-solutions, show-stems, answers-only,
  stem-color, answer-color, solution-color, muted,
  body-size, body-leading, par-spacing,
  gap-inner, gap-block, gap-item, practice-gap,
  apply-document-style, section-title, subsection-title, chapter-title,
)
#import "lib/ui.typ": (
  choices, choice-mark, blank-mark, blank-marks, subparts,
  solution-block, problem,
)
#import "lib/render.typ": (
  book-chapter, book-section, render-section, render-problems,
)

#let SHOW_ANSWERS = show-solutions
#let title(content) = text(weight: "bold", size: 2.0em, content)
