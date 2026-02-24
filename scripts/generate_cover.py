#!/usr/bin/env python3
"""
生成小红书封面图的简单脚本
使用Pillow库创建基础设计
"""

from PIL import Image, ImageDraw, ImageFont
import os

def create_xhs_cover():
    # 创建画布 (1080x1440像素，3:4比例)
    width, height = 1080, 1440
    image = Image.new('RGB', (width, height), color='white')
    draw = ImageDraw.Draw(image)
    
    # 颜色定义
    red = (255, 36, 66)      # 小红书红 #FF2442
    blue = (16, 163, 127)    # ChatGPT蓝 #10A37F
    dark_gray = (51, 51, 51) # 文字深灰
    light_gray = (240, 240, 240) # 背景浅灰
    
    # 绘制背景渐变
    for y in range(height):
        # 简单的从上到下的浅色渐变
        r = int(255 - y/height * 20)
        g = int(255 - y/height * 20)
        b = int(255 - y/height * 20)
        draw.line([(0, y), (width, y)], fill=(r, g, b))
    
    # 绘制左侧ChatGPT区域
    left_box = (50, 200, 515, 900)
    draw.rectangle(left_box, fill=(240, 250, 248), outline=blue, width=3)
    
    # ChatGPT标题
    draw.text((100, 220), "ChatGPT", fill=blue, font_size=40)
    draw.text((100, 270), "AI文案生成", fill=dark_gray, font_size=30)
    
    # 模拟ChatGPT对话
    chat_lines = [
        "💬 用户：帮我写一个小红书",
        "    爆款文案模板",
        "",
        "🤖 ChatGPT：",
        "1. 痛点开头：",
        "   '你是不是也想...'",
        "2. 解决方案：",
        "   '3个方法教你...'",
        "3. 行动号召：",
        "   '关注我获取...'",
        "",
        "💡 已生成10个变体"
    ]
    
    for i, line in enumerate(chat_lines):
        y_pos = 320 + i * 40
        draw.text((70, y_pos), line, fill=dark_gray, font_size=24)
    
    # 绘制右侧小红书区域
    right_box = (565, 200, 1030, 900)
    draw.rectangle(right_box, fill=(255, 240, 240), outline=red, width=3)
    
    # 小红书标题
    draw.text((615, 220), "小红书", fill=red, font_size=40)
    draw.text((615, 270), "爆款文案", fill=dark_gray, font_size=30)
    
    # 模拟小红书笔记
    note_lines = [
        "🔥 爆款笔记",
        "",
        "📈 数据：",
        "   👍 5000+ 点赞",
        "   💖 300+ 收藏",
        "   💬 200+ 评论",
        "",
        "📊 涨粉：500+",
        "",
        "💰 变现：月入5000+"
    ]
    
    for i, line in enumerate(note_lines):
        y_pos = 320 + i * 40
        draw.text((585, y_pos), line, fill=dark_gray, font_size=24)
    
    # 绘制连接箭头
    # 从左到右的箭头
    arrow_start = (515, 550)
    arrow_end = (565, 550)
    arrow_tip = (545, 550)
    
    # 箭头线
    draw.line([arrow_start, arrow_end], fill=blue, width=4)
    
    # 箭头头部
    draw.polygon([
        (545, 540),  # 上点
        (560, 550),  # 右点
        (545, 560)   # 下点
    ], fill=red)
    
    # 箭头文字
    draw.text((500, 500), "AI生成", fill=blue, font_size=24)
    draw.text((560, 500), "→", fill=dark_gray, font_size=30)
    draw.text((590, 500), "爆款文案", fill=red, font_size=24)
    
    # 主标题
    main_title = "🔥 我用ChatGPT一个月"
    sub_title = "写出100+爆款文案"
    draw.text((width//2 - 250, 950), main_title, fill=red, font_size=48)
    draw.text((width//2 - 200, 1010), sub_title, fill=dark_gray, font_size=42)
    
    # 副标题
    draw.text((width//2 - 150, 1080), "方法全公开！", fill=blue, font_size=36)
    draw.text((width//2 - 200, 1130), "小白也能学会", fill=dark_gray, font_size=32)
    
    # 底部装饰线
    draw.line([(100, 1250), (width-100, 1250)], fill=light_gray, width=2)
    
    # 底部提示
    draw.text((width//2 - 200, 1280), "关注我，获取更多AI赚钱技巧", fill=dark_gray, font_size=28)
    
    # 保存图片
    output_path = "docs/xiaohongshu_cover.png"
    image.save(output_path, 'PNG')
    print(f"封面图已生成: {output_path}")
    print(f"尺寸: {width}x{height}像素")
    
    return output_path

if __name__ == "__main__":
    try:
        cover_path = create_xhs_cover()
        print("✅ 封面图生成成功！")
        print(f"📁 文件位置: {os.path.abspath(cover_path)}")
    except Exception as e:
        print(f"❌ 生成失败: {e}")
        print("请安装Pillow库: pip install Pillow")