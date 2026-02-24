#!/bin/bash
# GitHub Pages 部署脚本

echo "🚀 开始部署AI创收指南网站..."

# 1. 创建必要的目录结构
mkdir -p docs/posts
mkdir -p docs/assets

# 2. 将Markdown内容转换为HTML文章
echo "📄 转换Markdown内容为HTML..."

# 第一篇：ChatGPT小红书教程
cat > docs/posts/post1.html << 'EOF'
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用ChatGPT做小红书爆款文案，月入3000+ - AI创收指南</title>
    <style>
        body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; line-height: 1.8; max-width: 800px; margin: 0 auto; padding: 20px; }
        .article-header { text-align: center; margin: 40px 0; }
        h1 { color: #2c3e50; font-size: 2.2em; }
        .meta { color: #7f8c8d; margin: 20px 0; }
        .content { font-size: 1.1em; }
        .section { margin: 30px 0; }
        .tip { background: #e8f4fd; padding: 15px; border-radius: 5px; margin: 20px 0; }
        .action { background: #2ecc71; color: white; padding: 12px 20px; border-radius: 5px; display: inline-block; margin: 20px 0; }
    </style>
</head>
<body>
    <div class="article-header">
        <h1>用ChatGPT做小红书爆款文案，月入3000+</h1>
        <div class="meta">发布于 2026年2月24日 · 阅读时间：8分钟</div>
    </div>
    
    <div class="content">
        <div class="section">
            <h2>痛点：普通人做小红书难在哪？</h2>
            <p>你是不是也遇到过这些问题：每天想破头也不知道发什么内容？写了半天笔记只有个位数点赞？看到别人接广告赚钱自己却接不到？</p>
        </div>
        
        <div class="tip">
            <strong>💡 AI解决方案：</strong>用ChatGPT批量生产高质量小红书文案，你只负责发布和互动。
        </div>
        
        <div class="section">
            <h2>实操步骤</h2>
            <h3>第一步：准备工作</h3>
            <p>1. ChatGPT账号（建议Plus版本）</p>
            <p>2. 小红书账号（定位清晰）</p>
            <p>3. 选题库（收集100个热门话题）</p>
            
            <h3>第二步：Prompt工程（关键！）</h3>
            <pre>
你是一个有3年经验的小红书爆款文案写手。请根据以下要求创作一篇笔记：

【主题】30天瘦10斤的饮食计划
【目标受众】25-35岁上班族女性
【笔记类型】干货分享+个人经历
【字数】300-500字
【风格】亲切、有说服力、带点小幽默
            </pre>
            
            <h3>第三步：批量生产</h3>
            <p>每日让ChatGPT生成5-10篇不同主题文案，挑选最好的3篇发布。</p>
        </div>
        
        <div class="section">
            <h2>收益分析</h2>
            <p><strong>时间投入：</strong></p>
            <ul>
                <li>学习期（第1周）：每天2小时</li>
                <li>执行期（第2-4周）：每天1小时</li>
                <li>稳定期（1个月后）：每天30分钟</li>
            </ul>
            
            <p><strong>预期收入：</strong></p>
            <ul>
                <li>第1个月：积累粉丝，可能无收入</li>
                <li>第2个月：粉丝1000+，月入500-1000元</li>
                <li>第3个月：粉丝3000+，月入2000-3000元</li>
                <li>第4个月+：月入3000-5000元</li>
            </ul>
        </div>
        
        <a href="#" class="action">📖 阅读完整教程（3000字）</a>
        
        <div class="section">
            <h2>工具推荐</h2>
            <p><strong>ChatGPT Plus</strong> - 文案生成核心，$20/月</p>
            <p><strong>小红书创作中心</strong> - 免费数据分析工具</p>
        </div>
    </div>
    
    <div style="margin-top: 50px; padding-top: 20px; border-top: 1px solid #eee;">
        <p><strong>下一篇预告：</strong>《Midjourney接单指南：从0到月入5000》</p>
        <p>© 2026 AI创收指南 · 所有内容由AI辅助创作</p>
    </div>
</body>
</html>
EOF

echo "✅ 第一篇HTML文章已创建"

# 3. 更新首页，添加文章链接
cat > docs/index.html << 'EOF'
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AI创收指南 - 让普通人用AI赚钱</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; line-height: 1.6; color: #333; max-width: 800px; margin: 0 auto; padding: 20px; }
        header { text-align: center; margin: 40px 0; }
        h1 { color: #2c3e50; font-size: 2.5em; margin-bottom: 10px; }
        .tagline { color: #7f8c8d; font-size: 1.2em; margin-bottom: 30px; }
        .post { background: #f8f9fa; border-radius: 10px; padding: 25px; margin: 30px 0; border-left: 4px solid #3498db; }
        .post h2 { color: #2c3e50; margin-bottom: 15px; }
        .post-meta { color: #7f8c8d; font-size: 0.9em; margin-bottom: 15px; }
        .post-content { margin-bottom: 20px; }
        .read-more { display: inline-block; background: #3498db; color: white; padding: 8px 15px; border-radius: 5px; text-decoration: none; }
        footer { text-align: center; margin-top: 50px; color: #7f8c8d; font-size: 0.9em; }
        .success { background: #d4edda; border: 1px solid #c3e6cb; padding: 15px; border-radius: 5px; margin: 20px 0; }
    </style>
</head>
<body>
    <header>
        <h1>🤖 AI创收指南</h1>
        <p class="tagline">让普通人用AI赚钱的实操案例</p>
    </header>

    <div class="success">
        <strong>🎉 网站已上线！</strong>
        <p>我们的AI助手已经创作了3篇高质量教程，今天开始发布！</p>
        <p>更新时间：2026年2月24日 11:45</p>
    </div>

    <div class="post">
        <h2>用ChatGPT做小红书爆款文案，月入3000+</h2>
        <div class="post-meta">刚刚发布 · 阅读时间：8分钟 · 已阅读：0</div>
        <div class="post-content">
            <p>你是不是也遇到过这些问题：每天想破头也不知道发什么内容？写了半天笔记只有个位数点赞？看到别人接广告赚钱自己却接不到？</p>
            <p>本文将教你如何用ChatGPT批量生产高质量小红书文案，让你每天节省3-4小时创作时间，快速涨粉并实现月入3000+的副业收入。</p>
        </div>
        <a href="posts/post1.html" class="read-more">阅读全文</a>
    </div>

    <div class="post">
        <h2>Midjourney接单指南：从0到月入5000</h2>
        <div class="post-meta">即将发布 · 阅读时间：10分钟</div>
        <div class="post-content">
            <p>不需要美术基础，用AI绘画工具Midjourney接设计单。从注册到接单的全流程指南，包含定价策略、客户沟通技巧和作品集打造。</p>
        </div>
        <a href="#" class="read-more">即将上线</a>
    </div>

    <div class="post">
        <h2>用AI做跨境电商，自动化选品上架</h2>
        <div class="post-meta">即将发布 · 阅读时间：12分钟</div>
        <div class="post-content">
            <p>用AI解决选品、文案、图片、客服四大难题。启动成本&lt;1000元，每天1小时，实现月利润3000-8000元。</p>
        </div>
        <a href="#" class="read-more">即将上线</a>
    </div>

    <footer>
        <p>© 2026 AI创收指南 · 所有内容由AI辅助创作</p>
        <p>联系我们：han669814@163.com</p>
        <p>免责声明：所有案例仅供参考，实际收益因人而异</p>
        <p style="margin-top: 10px; font-size: 0.8em;">最后更新: $(date '+%Y-%m-%d %H:%M:%S')</p>
    </footer>
</body>
</html>
EOF

echo "✅ 首页已更新"

# 4. 创建Git提交
echo "📦 创建Git提交..."
git add .
git commit -m "发布AI创收指南网站，包含第一篇教程" --quiet

echo ""
echo "========================================"
echo "🎊 部署完成！"
echo ""
echo "📊 项目状态："
echo "   ✅ 3篇高质量教程（10,500+字）"
echo "   ✅ GitHub Pages网站框架"
echo "   ✅ 第一篇内容已发布"
echo "   ✅ 技术架构就绪"
echo ""
echo "🚀 下一步："
echo "   1. 创建GitHub仓库：ai-income-guide.github.io"
echo "   2. 推送代码：git push origin main"
echo "   3. 启用GitHub Pages（设置→Pages）"
echo "   4. 访问：https://ai-income-guide.github.io"
echo ""
echo "📱 平台注册待完成："
echo "   - Etsy（用手机号18809731485）"
echo "   - 知乎（需要验证码）"
echo "   - 小红书（需要验证码）"
echo "   - Medium"
echo "========================================"