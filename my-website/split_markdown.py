import re
import os
import shutil

def clean_filename(name):
    return re.sub(r'[^\w\-_\. ]', '_', name)

def create_sidebar_item(filename, title):
    return f"'animechain/{filename}'"

def split_markdown(filename):
    with open(filename, 'r', encoding='utf-8') as file:
        content = file.read()

    # 画像パスの修正
    content = re.sub(r'!\[(.+?)\]\(images/(.+?)\)', r'![image](@site/static/img/\2)', content)

    chapters = re.split(r'\n# ', content)
    
    if os.path.exists('docs/animechain'):
        shutil.rmtree('docs/animechain')
    os.makedirs('docs/animechain')

    sidebar_items = []

    for i, chapter in enumerate(chapters):
        if i == 0:  # イントロダクション
            filename = 'intro.md'
            title = "イントロダクション"
        else:
            chapter_lines = chapter.split('\n')
            title = chapter_lines[0].strip()
            filename = f'chapter{i}_{clean_filename(title)}.md'

        with open(f'docs/animechain/{filename}', 'w', encoding='utf-8') as f:
            content = f'---\nsidebar_position: {i+1}\ntitle: "{title}"\n---\n\n'
            if i == 0:
                content += chapter.strip()
            else:
                content += f'# {chapter.strip()}'
            f.write(content)

        sidebar_items.append(create_sidebar_item(filename, title))

    print(f'Split {len(chapters)} chapters.')
    return sidebar_items

def update_sidebar(items):
    sidebar_content = f"""
module.exports = {{
  animechainSidebar: [
    {{
      type: 'category',
      label: 'Animechain.ai White Paper',
      items: [
        {',\n        '.join(items)}
      ],
    }},
  ],
}};
"""
    with open('sidebars.js', 'w', encoding='utf-8') as f:
        f.write(sidebar_content)

# 画像ファイルの移動
if not os.path.exists('static/img'):
    os.makedirs('static/img')
for img in os.listdir('docs/images'):
    shutil.move(f'docs/images/{img}', f'static/img/{img}')

# Markdownの分割
sidebar_items = split_markdown('docs/animechain-whitepaper.md')

# サイドバーの更新
update_sidebar(sidebar_items)

print("処理が完了しました。")
