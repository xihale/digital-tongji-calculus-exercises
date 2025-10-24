// 版本管理配置文件
// Version Management Configuration

// 题目版本 (Question versions for each chapter)
#let CHAPTER_VERSIONS = (
  "第一章 函数与极限": "1.0.0",
  "第二章 导数与微分": "1.0.0",
  "第三章 微分中值定理与导数的应用": "1.0.0",
  "第四章 不定积分": "1.0.0",
  "第五章 定积分": "1.0.0",
  "第六章 定积分的应用": "1.0.0",
  "第七章 微分方程": "1.0.0",
  "模拟卷与真题": "1.0.0",
)

// 答案版本 (Answer versions for each chapter)
#let ANSWER_VERSIONS = (
  "第一章 函数与极限": "1.0.0",
  "第二章 导数与微分": "1.0.0",
  "第三章 微分中值定理与导数的应用": "1.0.0",
  "第四章 不定积分": "1.0.0",
  "第五章 定积分": "1.0.0",
  "第六章 定积分的应用": "1.0.0",
  "第七章 微分方程": "1.0.0",
  "模拟卷与真题": "1.0.0",
)

// 获取最新版本号
// Get the latest version from all chapters
#let get-latest-version() = {
  let all-versions = CHAPTER_VERSIONS.values() + ANSWER_VERSIONS.values()
  let latest = "1.0.0"
  
  for v in all-versions {
    // Parse version strings for proper comparison
    let v-parts = v.split(".")
    let latest-parts = latest.split(".")
    
    let is-newer = false
    if int(v-parts.at(0)) > int(latest-parts.at(0)) {
      is-newer = true
    } else if int(v-parts.at(0)) == int(latest-parts.at(0)) {
      if int(v-parts.at(1)) > int(latest-parts.at(1)) {
        is-newer = true
      } else if int(v-parts.at(1)) == int(latest-parts.at(1)) {
        if int(v-parts.at(2)) > int(latest-parts.at(2)) {
          is-newer = true
        }
      }
    }
    
    if is-newer {
      latest = v
    }
  }
  
  latest
}

// 获取章节的题目版本
// Get question version for a chapter
#let get-chapter-version(chapter-name) = {
  CHAPTER_VERSIONS.at(chapter-name, default: "1.0.0")
}

// 获取章节的答案版本
// Get answer version for a chapter
#let get-answer-version(chapter-name) = {
  ANSWER_VERSIONS.at(chapter-name, default: "1.0.0")
}

// 主文件版本（自动获取最新版本）
// Main file version (automatically gets latest version)
#let MAIN_VERSION = get-latest-version()
