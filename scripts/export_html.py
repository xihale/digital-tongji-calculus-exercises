#!/usr/bin/env python3
"""
Export Typst files to HTML with navigation and table of contents.
"""

import os
import re
import subprocess
import json
import shutil
from pathlib import Path
from typing import List, Dict, Tuple
import html

REPO_ROOT = Path(__file__).parent.parent
OUTPUT_DIR = REPO_ROOT / "index"
OUTPUT_ANS_DIR = REPO_ROOT / "index_ans"

class Section:
    def __init__(self, filename: str, title: str):
        self.filename = filename
        self.title = title
        self.html_filename = self._generate_html_filename()
    
    def _generate_html_filename(self) -> str:
        """Generate a safe HTML filename from the section filename"""
        name = self.filename.replace('.typ', '.html')
        # Remove special characters and spaces
        name = re.sub(r'[^\w\u4e00-\u9fff.-]', '_', name)
        return name

class Chapter:
    def __init__(self, dirname: str, title: str):
        self.dirname = dirname
        self.title = title
        self.sections: List[Section] = []
    
    def add_section(self, section: Section):
        self.sections.append(section)

def parse_structure() -> List[Chapter]:
    """Parse the chapter and section structure from the repository"""
    chapters = []
    
    # Parse main index.typ to get chapter order
    main_index = REPO_ROOT / "index.typ"
    with open(main_index, 'r', encoding='utf-8') as f:
        content = f.read()
        chapter_includes = re.findall(r'#include "(.+?/index\.typ)"', content)
    
    for chapter_path in chapter_includes:
        chapter_dir = Path(chapter_path).parent
        chapter_name = chapter_dir.name
        
        # Extract chapter title
        chapter_match = re.search(r'第[一二三四五六七八九十]+章\s*(.+)', chapter_name)
        if chapter_match:
            chapter_title = chapter_name
        else:
            chapter_title = chapter_name
        
        chapter = Chapter(chapter_name, chapter_title)
        
        # Parse chapter index to get sections
        chapter_index = REPO_ROOT / chapter_dir / "index.typ"
        if chapter_index.exists():
            with open(chapter_index, 'r', encoding='utf-8') as f:
                chapter_content = f.read()
                section_includes = re.findall(r'#include "(.+?\.typ)"', chapter_content)
            
            for section_file in section_includes:
                # Extract section title from filename
                section_title = section_file.replace('.typ', '')
                section = Section(section_file, section_title)
                chapter.add_section(section)
        
        chapters.append(chapter)
    
    return chapters

def convert_typst_math_to_latex(math_content: str) -> str:
    """Convert Typst math syntax to LaTeX"""
    # Remove outer $ signs if present
    math_content = math_content.strip()
    
    # Typst uses similar syntax to LaTeX, but with some differences
    # Most basic math works the same, but we need to handle some differences
    
    # Convert Typst's dif to \mathrm{d}
    math_content = re.sub(r'\bdif\b', r'\\mathrm{d}', math_content)
    
    # Convert Typst's mathematical constants/sets
    math_content = re.sub(r'\bRR\b', r'\\mathbb{R}', math_content)
    math_content = re.sub(r'\bZZ\b', r'\\mathbb{Z}', math_content)
    math_content = re.sub(r'\bNN\b', r'\\mathbb{N}', math_content)
    math_content = re.sub(r'\bQQ\b', r'\\mathbb{Q}', math_content)
    math_content = re.sub(r'\bCC\b', r'\\mathbb{C}', math_content)
    
    return math_content

def convert_typst_to_html(typst_content: str, chapter_dir: Path, show_answers: bool) -> str:
    """Convert Typst content to HTML with math preserved"""
    
    # Remove imports
    typst_content = re.sub(r'#import\s+"[^"]+"\s*:\s*\*\s*', '', typst_content)
    
    html_parts = []
    lines = typst_content.split('\n')
    i = 0
    
    while i < len(lines):
        line = lines[i]
        
        # Skip empty lines
        if not line.strip():
            i += 1
            continue
        
        # Handle section headings
        if re.match(r'^\s*#section\[', line):
            title = re.search(r'#section\[(.*?)\]', line)
            if title:
                html_parts.append(f'<h1>{html.escape(title.group(1))}</h1>\n')
            i += 1
            continue
        
        # Handle subsection headings
        if re.match(r'^\s*#subsection\[', line):
            title = re.search(r'#subsection\[(.*?)\]', line)
            if title:
                html_parts.append(f'<h2>{html.escape(title.group(1))}</h2>\n')
            i += 1
            continue
        
        # Handle answer-choice (inline)
        if '#answer-choice[' in line:
            if show_answers:
                # Keep the answer choice
                line = re.sub(r'#answer-choice\[([^\]]+)\]', r'(\1)', line)
            else:
                # Remove the answer choice
                line = re.sub(r'\s*\(#answer-choice\[[^\]]+\]\)', '', line)
        
        # Handle answer-process blocks
        if re.match(r'^\s*#answer-process\[', line):
            if show_answers:
                # Multi-line answer block
                answer_lines = [line]
                bracket_count = line.count('[') - line.count(']')
                i += 1
                while i < len(lines) and bracket_count > 0:
                    answer_lines.append(lines[i])
                    bracket_count += lines[i].count('[') - lines[i].count(']')
                    i += 1
                
                # Extract content between brackets
                answer_content = '\n'.join(answer_lines)
                match = re.search(r'#answer-process\[(.*)\]', answer_content, re.DOTALL)
                if match:
                    answer_text = match.group(1).strip()
                    # Convert math in answer and process line by line
                    answer_lines = answer_text.split('\n')
                    answer_html_parts = []
                    for answer_line in answer_lines:
                        answer_line = answer_line.strip()
                        if answer_line:
                            answer_html_parts.append(f'<p>{convert_math_inline(answer_line)}</p>')
                    html_parts.append(f'<div class="answer">\n{"".join(answer_html_parts)}\n</div>\n')
            else:
                # Skip answer block
                bracket_count = line.count('[') - line.count(']')
                i += 1
                while i < len(lines) and bracket_count > 0:
                    bracket_count += lines[i].count('[') - lines[i].count(']')
                    i += 1
            continue
        
        # Handle choices
        if re.match(r'^\s*#choices\(', line):
            # Multi-line choices
            choice_lines = [line]
            paren_count = line.count('(') - line.count(')')
            i += 1
            while i < len(lines) and paren_count > 0:
                choice_lines.append(lines[i])
                paren_count += lines[i].count('(') - lines[i].count(')')
                i += 1
            
            # Parse choices
            choices_content = '\n'.join(choice_lines)
            choice_items = re.findall(r'\[([^\]]+)\]', choices_content)
            if choice_items:
                html_parts.append('<ol type="A" class="choices">\n')
                for choice in choice_items:
                    choice_html = convert_math_inline(choice)
                    html_parts.append(f'<li>{choice_html}</li>\n')
                html_parts.append('</ol>\n')
            continue
        
        # Regular content line
        if line.strip() and not line.strip().startswith('#'):
            line_html = convert_math_inline(line.strip())
            html_parts.append(f'<p>{line_html}</p>\n')
        
        i += 1
    
    return ''.join(html_parts)

def convert_math_inline(text: str) -> str:
    """Convert inline math expressions from Typst to MathJax format"""
    # Handle inline math $...$
    def replace_math(match):
        math = convert_typst_math_to_latex(match.group(1))
        return f'${math}$'
    
    text = re.sub(r'\$([^$]+?)\$', replace_math, text)
    return text

def create_section_typst(chapter: Chapter, section: Section, output_path: Path, temp_dir: Path):
    """Create a standalone Typst file for a section"""
    chapter_dir = REPO_ROOT / chapter.dirname
    section_path = chapter_dir / section.filename
    
    # Read template content inline to avoid import issues
    template_path = REPO_ROOT / 'template.typ'
    with open(template_path, 'r', encoding='utf-8') as f:
        template_content = f.read()
    
    # Read section content
    with open(section_path, 'r', encoding='utf-8') as f:
        section_content = f.read()
    
    # Replace relative imports in section content with absolute paths
    section_content = section_content.replace('#import "../template.typ"', '// template imported inline')
    
    # Copy images directory to temp location if it exists
    images_src = chapter_dir / "images"
    images_dest = temp_dir / "images"
    if images_src.exists() and not images_dest.exists():
        shutil.copytree(images_src, images_dest)
    
    # Create a standalone Typst file without page configuration
    typst_content = f"""
// Template content inlined
{template_content}

#set text(size: 1.3em, font: ("LXGW WenKai",))
#set image(width: 12em)

#set heading(numbering: none)
#show heading.where(level: 1): it => align(center)[
  #text(weight: "bold", size: 1.8em)[#it.body]
]
#show heading.where(level: 2): it => align(center)[
  #text(weight: "bold", size: 1.4em)[#it.body]
]

#chapter[{chapter.title}]

// Section content
{section_content}
"""
    
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(typst_content)

def compile_to_html(typst_file: Path, html_file: Path, show_answers: bool = False):
    """Compile a Typst file to HTML"""
    cmd = [
        'typst', 'compile',
        '--features', 'html',
        '--font-path', str(REPO_ROOT / 'fonts'),
        '--format', 'html'
    ]
    
    if show_answers:
        cmd.extend(['--input', 'SHOW_ANSWER=true'])
    
    cmd.extend([str(typst_file), str(html_file)])
    
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=60)
        if result.returncode != 0:
            print(f"Error compiling {typst_file}: {result.stderr}")
            return False
        return True
    except subprocess.TimeoutExpired:
        print(f"Timeout compiling {typst_file}")
        return False

def create_navigation_html(chapters: List[Chapter], current_chapter_idx: int, 
                          current_section_idx: int, show_answers: bool) -> Tuple[str, str, str]:
    """Generate navigation elements (sidebar, prev, next)"""
    # Generate sidebar
    sidebar_html = '<div class="sidebar" id="sidebar">\n'
    sidebar_html += '  <div class="sidebar-header">\n'
    sidebar_html += '    <h2>目录</h2>\n'
    sidebar_html += '    <button class="toggle-btn" onclick="toggleSidebar()">◀</button>\n'
    sidebar_html += '  </div>\n'
    sidebar_html += '  <nav class="toc">\n'
    
    for ch_idx, chapter in enumerate(chapters):
        sidebar_html += f'    <div class="chapter-item">\n'
        sidebar_html += f'      <div class="chapter-title">{chapter.title}</div>\n'
        sidebar_html += f'      <ul class="section-list">\n'
        
        for sec_idx, section in enumerate(chapter.sections):
            is_current = (ch_idx == current_chapter_idx and sec_idx == current_section_idx)
            active_class = ' class="active"' if is_current else ''
            # Use absolute path from root
            section_url = f"../{chapter.dirname}/{section.html_filename}"
            sidebar_html += f'        <li{active_class}><a href="{section_url}">{section.title}</a></li>\n'
        
        sidebar_html += f'      </ul>\n'
        sidebar_html += f'    </div>\n'
    
    sidebar_html += '  </nav>\n'
    sidebar_html += '</div>\n'
    
    # Generate prev/next buttons
    prev_html = ""
    next_html = ""
    
    # Find previous section
    if current_section_idx > 0:
        prev_section = chapters[current_chapter_idx].sections[current_section_idx - 1]
        prev_chapter = chapters[current_chapter_idx]
        # Use relative path within same chapter
        prev_url = f"{prev_section.html_filename}"
        prev_html = f'<a href="{prev_url}" class="nav-button prev-button">← {prev_section.title}</a>'
    elif current_chapter_idx > 0:
        prev_chapter = chapters[current_chapter_idx - 1]
        if prev_chapter.sections:
            prev_section = prev_chapter.sections[-1]
            # Use path to different chapter
            prev_url = f"../{prev_chapter.dirname}/{prev_section.html_filename}"
            prev_html = f'<a href="{prev_url}" class="nav-button prev-button">← {prev_section.title}</a>'
    
    # Find next section
    if current_section_idx < len(chapters[current_chapter_idx].sections) - 1:
        next_section = chapters[current_chapter_idx].sections[current_section_idx + 1]
        next_chapter = chapters[current_chapter_idx]
        # Use relative path within same chapter
        next_url = f"{next_section.html_filename}"
        next_html = f'<a href="{next_url}" class="nav-button next-button">{next_section.title} →</a>'
    elif current_chapter_idx < len(chapters) - 1:
        next_chapter = chapters[current_chapter_idx + 1]
        if next_chapter.sections:
            next_section = next_chapter.sections[0]
            # Use path to different chapter
            next_url = f"../{next_chapter.dirname}/{next_section.html_filename}"
            next_html = f'<a href="{next_url}" class="nav-button next-button">{next_section.title} →</a>'
    
    return sidebar_html, prev_html, next_html

def wrap_html_with_navigation(html_content: str, sidebar: str, prev_btn: str, 
                               next_btn: str, section_title: str) -> str:
    """Wrap the compiled HTML with navigation elements"""
    # Add MathJax configuration and library
    mathjax = """
    <script>
    MathJax = {
      tex: {
        inlineMath: [['$', '$'], ['\\\\(', '\\\\)']],
        displayMath: [['$$', '$$'], ['\\\\[', '\\\\]']],
        processEscapes: true,
        processEnvironments: true
      },
      options: {
        skipHtmlTags: ['script', 'noscript', 'style', 'textarea', 'pre']
      }
    };
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/3.2.2/es5/tex-mml-chtml.min.js" integrity="sha512-6FaAxxHuKuzaGHWnV00ftWqP3luSBRSopnNAA2RvQH1fOfnF/A1wOfiUWF7cLIOFcfb1dEhXwo5VG3DAisocRw==" crossorigin="anonymous" referrerpolicy="no-referrer" id="MathJax-script" async></script>
    """
    
    css = """
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: "LXGW WenKai", -apple-system, BlinkMacSystemFont, "Segoe UI", "Microsoft YaHei", sans-serif;
            display: flex;
            min-height: 100vh;
            background: #f5f5f5;
        }
        
        .sidebar {
            width: 280px;
            background: white;
            border-right: 1px solid #e0e0e0;
            overflow-y: auto;
            position: fixed;
            left: 0;
            top: 0;
            bottom: 0;
            transition: transform 0.3s ease;
            z-index: 1000;
        }
        
        .sidebar.collapsed {
            transform: translateX(-280px);
        }
        
        .sidebar-header {
            padding: 20px;
            border-bottom: 1px solid #e0e0e0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #fafafa;
        }
        
        .sidebar-header h2 {
            font-size: 1.2em;
            color: #333;
        }
        
        .toggle-btn {
            background: none;
            border: none;
            font-size: 1.2em;
            cursor: pointer;
            padding: 5px;
            color: #666;
        }
        
        .toggle-btn:hover {
            color: #333;
        }
        
        .toc {
            padding: 10px 0;
        }
        
        .chapter-item {
            margin-bottom: 15px;
        }
        
        .chapter-title {
            padding: 10px 20px;
            font-weight: bold;
            color: #333;
            background: #f8f8f8;
            border-left: 3px solid #0066cc;
        }
        
        .section-list {
            list-style: none;
            padding: 5px 0;
        }
        
        .section-list li {
            padding: 8px 20px 8px 35px;
        }
        
        .section-list li a {
            text-decoration: none;
            color: #666;
            display: block;
            transition: color 0.2s;
        }
        
        .section-list li a:hover {
            color: #0066cc;
        }
        
        .section-list li.active {
            background: #e3f2fd;
            border-left: 3px solid #0066cc;
        }
        
        .section-list li.active a {
            color: #0066cc;
            font-weight: bold;
        }
        
        .main-container {
            flex: 1;
            margin-left: 280px;
            transition: margin-left 0.3s ease;
            display: flex;
            flex-direction: column;
        }
        
        .main-container.expanded {
            margin-left: 0;
        }
        
        .toggle-sidebar-btn {
            position: fixed;
            left: 0;
            top: 20px;
            background: white;
            border: 1px solid #e0e0e0;
            border-left: none;
            padding: 10px 15px;
            cursor: pointer;
            z-index: 999;
            border-radius: 0 5px 5px 0;
            display: none;
            box-shadow: 2px 2px 5px rgba(0,0,0,0.1);
        }
        
        .main-container.expanded .toggle-sidebar-btn {
            display: block;
        }
        
        .content {
            flex: 1;
            max-width: 900px;
            margin: 0 auto;
            padding: 40px 20px;
            background: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.05);
            width: 100%;
        }
        
        .navigation {
            display: flex;
            justify-content: space-between;
            padding: 20px;
            border-top: 1px solid #e0e0e0;
            background: white;
            max-width: 900px;
            margin: 0 auto;
            width: 100%;
        }
        
        .nav-button {
            padding: 12px 24px;
            background: #0066cc;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
            max-width: 45%;
            text-align: center;
        }
        
        .nav-button:hover {
            background: #0052a3;
        }
        
        .prev-button {
            margin-right: auto;
        }
        
        .next-button {
            margin-left: auto;
        }
        
        /* Typst HTML content styling */
        .content img {
            max-width: 100%;
            height: auto;
        }
        
        .content h1, .content h2 {
            margin-top: 1.5em;
            margin-bottom: 0.5em;
        }
        
        .content p {
            margin-bottom: 1em;
            line-height: 1.6;
        }
        
        .content .answer {
            background: #f0f8ff;
            border-left: 3px solid #0066cc;
            padding: 15px;
            margin: 15px 0;
            border-radius: 4px;
        }
        
        .content .choices {
            margin-left: 20px;
            margin-bottom: 1em;
        }
        
        .content .choices li {
            margin-bottom: 0.5em;
        }
    </style>
    """
    
    js = """
    <script>
        function toggleSidebar() {
            const sidebar = document.getElementById('sidebar');
            const mainContainer = document.querySelector('.main-container');
            sidebar.classList.toggle('collapsed');
            mainContainer.classList.toggle('expanded');
        }
    </script>
    """
    
    return f"""<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{section_title} - 高等数学习题册</title>
    {mathjax}
    {css}
</head>
<body>
    {sidebar}
    <div class="main-container">
        <button class="toggle-sidebar-btn" onclick="toggleSidebar()">☰ 目录</button>
        <div class="content">
            {html_content}
        </div>
        <div class="navigation">
            {prev_btn}
            {next_btn}
        </div>
    </div>
    {js}
</body>
</html>
"""

def export_all(show_answers: bool = False):
    """Export all sections to HTML"""
    output_dir = OUTPUT_ANS_DIR if show_answers else OUTPUT_DIR
    
    # Clean and create output directory
    if output_dir.exists():
        shutil.rmtree(output_dir)
    output_dir.mkdir(parents=True)
    
    print(f"Parsing structure...")
    chapters = parse_structure()
    
    print(f"Exporting {'with' if show_answers else 'without'} answers to {output_dir}")
    
    for ch_idx, chapter in enumerate(chapters):
        print(f"Processing {chapter.title}...")
        chapter_output = output_dir / chapter.dirname
        chapter_output.mkdir(exist_ok=True)
        
        # Copy images if they exist for this chapter
        chapter_dir = REPO_ROOT / chapter.dirname
        images_src = chapter_dir / "images"
        images_dest = chapter_output / "images"
        if images_src.exists():
            shutil.copytree(images_src, images_dest, dirs_exist_ok=True)
        
        for sec_idx, section in enumerate(chapter.sections):
            print(f"  - {section.title}")
            
            # Read the section file
            section_path = chapter_dir / section.filename
            try:
                with open(section_path, 'r', encoding='utf-8') as f:
                    typst_content = f.read()
                
                # Convert Typst to HTML
                html_content = convert_typst_to_html(typst_content, chapter_dir, show_answers)
                
                # Generate navigation
                sidebar, prev_btn, next_btn = create_navigation_html(
                    chapters, ch_idx, sec_idx, show_answers
                )
                
                # Wrap with navigation
                final_html = wrap_html_with_navigation(
                    html_content, sidebar, prev_btn, next_btn, 
                    f"{chapter.title} - {section.title}"
                )
                
                # Write final HTML
                output_file = chapter_output / section.html_filename
                with open(output_file, 'w', encoding='utf-8') as f:
                    f.write(final_html)
            except Exception as e:
                print(f"    Error processing {section.title}: {e}")
    
    # Create index.html that redirects to first section
    if chapters and chapters[0].sections:
        first_section_url = f"{chapters[0].dirname}/{chapters[0].sections[0].html_filename}"
        index_html = f"""<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="0; url={first_section_url}">
    <title>高等数学习题册</title>
</head>
<body>
    <p>正在跳转... <a href="{first_section_url}">点击这里</a> 如果没有自动跳转。</p>
</body>
</html>
"""
        with open(output_dir / "index.html", 'w', encoding='utf-8') as f:
            f.write(index_html)
    
    print(f"Export completed to {output_dir}")

def main():
    import argparse
    parser = argparse.ArgumentParser(description='Export Typst to HTML')
    parser.add_argument('--answers', action='store_true', help='Export with answers')
    parser.add_argument('--both', action='store_true', help='Export both versions')
    args = parser.parse_args()
    
    if args.both:
        print("Exporting both versions...")
        export_all(show_answers=False)
        export_all(show_answers=True)
    else:
        export_all(show_answers=args.answers)

if __name__ == '__main__':
    main()
