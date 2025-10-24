// main.js - 主页功能

document.addEventListener('DOMContentLoaded', async () => {
    // 更新最后更新时间
    updateLastUpdateTime();
});

/**
 * 更新最后更新时间
 */
async function updateLastUpdateTime() {
    try {
        // 尝试从 GitHub API 获取最新提交信息
        const response = await fetch('https://api.github.com/repos/xihale/digital-tongji-calculus-exercises/commits?per_page=1');
        
        if (response.ok) {
            const commits = await response.json();
            if (commits.length > 0) {
                const lastCommitDate = new Date(commits[0].commit.author.date);
                const formattedDate = formatDate(lastCommitDate);
                document.getElementById('last-update').textContent = formattedDate;
            }
        } else {
            // 如果 API 请求失败，使用当前日期
            document.getElementById('last-update').textContent = formatDate(new Date());
        }
    } catch (error) {
        console.error('获取更新时间失败:', error);
        document.getElementById('last-update').textContent = '未知';
    }
}

/**
 * 格式化日期
 */
function formatDate(date) {
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const day = String(date.getDate()).padStart(2, '0');
    return `${year}-${month}-${day}`;
}
