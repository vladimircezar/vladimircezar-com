// Sample articles data - replace with your own articles
const articles = [
    {
        title: 'Welcome to My Blog',
        filename: 'welcome.md'
    },
    {
        title: 'Getting Started with Markdown',
        filename: 'markdown-guide.md'
    }
];

// Initialize the application
function init() {
    displayArticleList();
    // Load the first article by default
    if (articles.length > 0) {
        loadArticle(articles[0].filename);
    }
}

// Display the list of articles in the sidebar
function displayArticleList() {
    const articleList = document.getElementById('article-list');
    articleList.innerHTML = articles.map(article => `
        <a href="#" onclick="loadArticle('${article.filename}'); return false;">
            ${article.title}
        </a>
    `).join('');
}

// Load and display an article
async function loadArticle(filename) {
    try {
        const response = await fetch(`articles/${filename}`);
        if (!response.ok) throw new Error('Article not found');
        
        const markdown = await response.text();
        const articleContent = document.getElementById('article-content');
        articleContent.innerHTML = marked.parse(markdown);
    } catch (error) {
        console.error('Error loading article:', error);
        document.getElementById('article-content').innerHTML = `
            <h1>Error</h1>
            <p>Could not load the article. Please try again later.</p>
        `;
    }
}

// Initialize the app when the page loads
window.addEventListener('load', init);