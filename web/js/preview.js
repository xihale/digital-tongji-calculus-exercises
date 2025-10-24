// preview.js - 预览页面功能

// 章节结构
const CHAPTERS = [
    {
        title: "第一章 函数与极限",
        sections: [
            "第一节 映射与函数",
            "第二节 数列的极限",
            "第三节 函数的极限",
            "第四节 无穷小与无穷大",
            "第五节 极限运算法则",
            "第六节 极限存在准则 两个重要极限",
            "第七节 无穷小的比较",
            "第八节 函数的连续性与间断点",
            "第九节 连续函数的运算与初等函数的连续性",
            "第十节 闭区间上连续函数的性质",
            "总习题一"
        ]
    },
    {
        title: "第二章 导数与微分",
        sections: []
    },
    {
        title: "第三章 微分中值定理与导数的应用",
        sections: []
    },
    {
        title: "第四章 不定积分",
        sections: []
    },
    {
        title: "第五章 定积分",
        sections: []
    },
    {
        title: "第六章 定积分的应用",
        sections: []
    },
    {
        title: "第七章 微分方程",
        sections: []
    },
    {
        title: "模拟卷与真题",
        sections: []
    }
];

let showAnswers = true;
let currentPdfUrl = null;

document.addEventListener('DOMContentLoaded', () => {
    initializeTOC();
    initializeSidebar();
    initializeToolbar();
    loadPreview();
});

/**
 * 初始化目录
 */
function initializeTOC() {
    const tocContainer = document.getElementById('toc');
    tocContainer.innerHTML = '';

    CHAPTERS.forEach((chapter, chapterIndex) => {
        // 创建章节标题
        const chapterDiv = document.createElement('div');
        chapterDiv.className = 'toc-chapter';
        chapterDiv.textContent = chapter.title;
        chapterDiv.dataset.chapter = chapterIndex;

        // 如果有小节，允许展开/收起
        if (chapter.sections && chapter.sections.length > 0) {
            chapterDiv.classList.add('expandable');
            
            chapterDiv.addEventListener('click', (e) => {
                e.stopPropagation();
                chapterDiv.classList.toggle('expanded');
                const sectionsDiv = chapterDiv.nextElementSibling;
                if (sectionsDiv) {
                    sectionsDiv.classList.toggle('visible');
                }
            });

            tocContainer.appendChild(chapterDiv);

            // 创建小节容器
            const sectionsDiv = document.createElement('div');
            sectionsDiv.className = 'toc-sections';

            chapter.sections.forEach((section, sectionIndex) => {
                const sectionDiv = document.createElement('div');
                sectionDiv.className = 'toc-section';
                sectionDiv.textContent = section;
                sectionDiv.dataset.chapter = chapterIndex;
                sectionDiv.dataset.section = sectionIndex;

                sectionDiv.addEventListener('click', (e) => {
                    e.stopPropagation();
                    // 移除其他激活状态
                    document.querySelectorAll('.toc-section.active').forEach(el => {
                        el.classList.remove('active');
                    });
                    sectionDiv.classList.add('active');
                    
                    // 滚动到对应内容（暂时只更新状态）
                    updateStatus(`正在查看: ${chapter.title} - ${section}`);
                });

                sectionsDiv.appendChild(sectionDiv);
            });

            tocContainer.appendChild(sectionsDiv);
        } else {
            chapterDiv.addEventListener('click', (e) => {
                e.stopPropagation();
                // 移除其他激活状态
                document.querySelectorAll('.toc-chapter.active').forEach(el => {
                    el.classList.remove('active');
                });
                chapterDiv.classList.add('active');
                updateStatus(`正在查看: ${chapter.title}`);
            });
            
            tocContainer.appendChild(chapterDiv);
        }
    });
}

/**
 * 初始化侧边栏切换
 */
function initializeSidebar() {
    const toggleBtn = document.getElementById('toggle-sidebar');
    const sidebar = document.getElementById('sidebar');

    toggleBtn.addEventListener('click', () => {
        sidebar.classList.toggle('collapsed');
    });
}

/**
 * 初始化工具栏
 */
function initializeToolbar() {
    const generatePdfBtn = document.getElementById('generate-pdf');
    const toggleAnswersBtn = document.getElementById('toggle-answers');

    generatePdfBtn.addEventListener('click', async () => {
        updateStatus('正在生成 PDF...');
        await generatePDF();
    });

    toggleAnswersBtn.addEventListener('click', () => {
        showAnswers = !showAnswers;
        updateStatus(showAnswers ? '答案已显示' : '答案已隐藏');
        loadPreview();
    });
}

/**
 * 加载预览内容
 */
async function loadPreview() {
    const previewContent = document.getElementById('preview-content');
    
    // 显示加载消息
    previewContent.innerHTML = `
        <div class="loading-message">
            <div class="spinner"></div>
            <p>正在加载内容...</p>
            <p class="loading-detail">基于 WebAssembly 编译 Typst 文档</p>
        </div>
    `;

    try {
        // 模拟加载延迟
        await new Promise(resolve => setTimeout(resolve, 1000));

        // 由于实际的 typst-wasm 实现需要额外的库和资源，
        // 这里先展示一个说明页面
        previewContent.innerHTML = `
            <div style="max-width: 800px; margin: 0 auto; padding: 2rem;">
                <h2 style="color: var(--primary-color);">📚 高等数学习题册答案预览</h2>
                
                <div style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 2rem 0;">
                    <h3>✨ 功能说明</h3>
                    <p>本页面支持在线预览习题册答案内容，主要功能包括：</p>
                    <ul style="margin-left: 2rem; line-height: 2;">
                        <li><strong>实时预览</strong>：基于 WebAssembly 技术实时编译和渲染 Typst 文档</li>
                        <li><strong>可折叠目录</strong>：左侧目录支持展开/收起章节和小节</li>
                        <li><strong>PDF 生成</strong>：一键生成 PDF 文档供下载</li>
                        <li><strong>答案切换</strong>：可选择显示或隐藏答案内容</li>
                    </ul>
                </div>

                <div style="background: #fff3cd; border: 2px solid #ffc107; padding: 1.5rem; border-radius: 8px; margin: 2rem 0;">
                    <h3>⚠️ 当前状态</h3>
                    <p>Typst WebAssembly 渲染引擎正在集成中。完整的文档预览功能将在后续更新中提供。</p>
                    <p>目前您可以：</p>
                    <ul style="margin-left: 2rem; line-height: 2;">
                        <li>浏览左侧目录结构</li>
                        <li>查看章节组织方式</li>
                        <li>体验界面交互功能</li>
                    </ul>
                </div>

                <div style="background: #e3f2fd; padding: 1.5rem; border-radius: 8px; margin: 2rem 0;">
                    <h3>🔧 技术实现</h3>
                    <p>本项目使用的技术栈：</p>
                    <ul style="margin-left: 2rem; line-height: 2;">
                        <li><strong>Typst</strong>：现代化的排版系统</li>
                        <li><strong>WebAssembly</strong>：高性能的 Web 编译执行</li>
                        <li><strong>PDF.js</strong>：PDF 渲染和生成</li>
                        <li><strong>GitHub Actions</strong>：自动化构建和部署</li>
                    </ul>
                </div>

                <div style="background: #f0f8ff; padding: 1.5rem; border-radius: 8px; margin: 2rem 0;">
                    <h3>📖 示例内容预览</h3>
                    <p style="color: #666;">以下是习题册内容的文本示例：</p>
                    <div style="background: white; padding: 1rem; border-left: 3px solid var(--primary-color); margin: 1rem 0;">
                        <h4>第一章 函数与极限</h4>
                        <p><strong>第一节 映射与函数</strong></p>
                        <p>本节包含函数的基本概念、定义域、值域等内容的习题和详细解答。</p>
                        ${showAnswers ? `
                        <div style="background: #f0f8ff; padding: 1rem; margin-top: 1rem; border: 1px dashed #0066cc; border-radius: 4px;">
                            <p style="color: #0066cc; margin: 0;"><strong>答案示例：</strong></p>
                            <p style="margin: 0.5rem 0;">详细的解答步骤和过程将在此显示...</p>
                        </div>
                        ` : ''}
                    </div>
                </div>

                <div style="text-align: center; margin: 2rem 0;">
                    <a href="https://github.com/xihale/digital-tongji-calculus-exercises" 
                       target="_blank" 
                       class="btn btn-primary"
                       style="display: inline-block; padding: 0.8rem 1.5rem; background: var(--primary-color); color: white; text-decoration: none; border-radius: 4px;">
                        📦 访问 GitHub 仓库
                    </a>
                </div>
            </div>
        `;

        updateStatus('预览准备就绪');
    } catch (error) {
        console.error('加载预览失败:', error);
        previewContent.innerHTML = `
            <div style="text-align: center; padding: 3rem; color: #dc3545;">
                <h2>❌ 加载失败</h2>
                <p>${error.message}</p>
            </div>
        `;
        updateStatus('加载失败');
    }
}

/**
 * 生成 PDF
 */
async function generatePDF() {
    try {
        // 这里将来会集成实际的 PDF 生成功能
        // 使用 typst-wasm 编译文档为 PDF
        
        updateStatus('PDF 生成功能正在开发中...');
        
        // 模拟延迟
        await new Promise(resolve => setTimeout(resolve, 1500));
        
        alert('PDF 生成功能将在完整版本中提供。\n目前请使用命令行工具生成 PDF：\n\ntypst compile --input SHOW_ANSWER=true index.typ 高等数学习题册上册_带答案.pdf');
        
        updateStatus('准备就绪');
    } catch (error) {
        console.error('生成 PDF 失败:', error);
        updateStatus('PDF 生成失败');
    }
}

/**
 * 更新状态栏
 */
function updateStatus(message) {
    const statusMessage = document.getElementById('status-message');
    statusMessage.textContent = message;
}
