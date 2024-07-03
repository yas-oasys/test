#!/bin/bash

# 既存のdocsディレクトリの内容を削除
rm -rf docs/*

# 以下、既存のコード
# フロントマターを追加する関数
add_frontmatter() {
    local file=$1
    local id=$(basename "$file" .md)
    local title=$2
    local sidebar_label=$3
    local sidebar_position=$4

    echo "---" > "$file"
    echo "id: $id" >> "$file"
    echo "title: \"$title\"" >> "$file"
    echo "sidebar_label: \"$sidebar_label\"" >> "$file"
    echo "sidebar_position: $sidebar_position" >> "$file"
    echo "---" >> "$file"
    echo "" >> "$file"
    echo "ここにコンテンツを記述してください。" >> "$file"
}

# ルートディレクトリの作成
mkdir -p docs

# イントロダクション
mkdir -p docs/introduction/anime-industry docs/introduction/ai-impact
add_frontmatter "docs/introduction/anime-industry/market-size.md" "1.1.1 市場規模と成長予測" "市場規模と成長予測" 1
add_frontmatter "docs/introduction/anime-industry/production-challenges.md" "1.1.2 制作現場の人手不足と効率化の必要性" "制作現場の課題" 2
add_frontmatter "docs/introduction/anime-industry/global-challenges.md" "1.1.3 グローバル展開における課題" "グローバル展開の課題" 3
add_frontmatter "docs/introduction/ai-impact/ai-progress.md" "1.2.1 生成AI技術の急速な進歩" "生成AI技術の進歩" 1
add_frontmatter "docs/introduction/ai-impact/ai-applications.md" "1.2.2 アニメ制作現場への生成AIの応用可能性" "生成AIの応用" 2
add_frontmatter "docs/introduction/ai-challenges.md" "1.3 生成AIがもたらす課題" "生成AIの課題" 3

# ソリューション
mkdir -p docs/solutions
add_frontmatter "docs/solutions/copyright-cleared-ai.md" "2.1 著作権をクリアしたアニメ生成AI技術とツール" "著作権クリアAI" 1
add_frontmatter "docs/solutions/anima-blockchain.md" "2.2 Anima Blockchain: 独自Layer 2ソリューションによるブロックチェーン革新" "Anima Blockchain" 2
add_frontmatter "docs/solutions/aira.md" "2.3 AIRA: トークン技術で実現するAI生成コンテンツの権利保護と収益化" "AIRA" 3
add_frontmatter "docs/solutions/ai-orchestration.md" "2.4 AI Orchestration Frameworks: アニメクリエイター向け制作支援プラットフォーム" "AI Orchestration" 4

# AIテクノロジー
mkdir -p docs/ai-technology/anime-ai
add_frontmatter "docs/ai-technology/ai-basics.md" "3.0 画像/動画生成AIとは" "生成AIの基礎" 1
add_frontmatter "docs/ai-technology/anime-ai/image-generation.md" "3.1.1 高品質なアニメ画像生成モデル" "画像生成モデル" 1
add_frontmatter "docs/ai-technology/anime-ai/animation-generation.md" "3.1.2 アニメーション生成のための時系列モデル" "アニメーション生成" 2
add_frontmatter "docs/ai-technology/anime-ai/multimodal-generation.md" "3.1.3 マルチモーダル生成技術" "マルチモーダル生成" 3
add_frontmatter "docs/ai-technology/anime-ai/realtime-feedback.md" "3.1.4 AIによるリアルタイムフィードバックと修正" "リアルタイムフィードバック" 4
add_frontmatter "docs/ai-technology/anime-ai/data-driven-improvement.md" "3.1.5 データ駆動型のモデル改良" "データ駆動型改良" 5
add_frontmatter "docs/ai-technology/copyright-cleared-data.md" "3.2 Animechain.aiが用いる著作権クリアした学習データ" "著作権クリアデータ" 2
add_frontmatter "docs/ai-technology/ai-orchestration.md" "3.3 AIオーケストレーション: AIを活用したアニメ制作ワークフローの効率化" "AIオーケストレーション" 3
add_frontmatter "docs/ai-technology/anime-production-workflow.md" "3.4 Animechain.aiを活用したアニメ制作ワークフロー" "制作ワークフロー" 4

# Blockchainテクノロジー
mkdir -p docs/blockchain-technology
add_frontmatter "docs/blockchain-technology/data-traceability.md" "4.1 ブロックチェーンを活用したデータトレーサビリティの確保" "データトレーサビリティ" 1
add_frontmatter "docs/blockchain-technology/layer2-solution.md" "4.2 独自のLayer 2 Scaling Solution" "Layer 2 ソリューション" 2
add_frontmatter "docs/blockchain-technology/aira-rights-management.md" "4.3 AIRA(AI Rights Asset)を活用した生成AIデータの権利管理" "AIRA権利管理" 3

# エコシステムとトークンエコノミー
mkdir -p docs/ecosystem
add_frontmatter "docs/ecosystem/overview.md" "5.1 Animechain.aiエコシステムの概要" "エコシステム概要" 1
add_frontmatter "docs/ecosystem/token-utility.md" "5.2 トークンユーティリティ" "トークンユーティリティ" 2
add_frontmatter "docs/ecosystem/token-economy.md" "5.3 トークンエコノミーの設計" "トークンエコノミー" 3

# ロードマップ
mkdir -p docs/roadmap
add_frontmatter "docs/roadmap/technology-milestones.md" "6.1 技術開発のマイルストーン" "技術開発マイルストーン" 1
add_frontmatter "docs/roadmap/ecosystem-expansion.md" "6.2 エコシステム拡大の戦略" "エコシステム拡大戦略" 2

# チーム
add_frontmatter "docs/team.md" "7. チーム" "チーム" 7

# リスクと免責事項
mkdir -p docs/risks
add_frontmatter "docs/risks/regulatory.md" "8.1 規制リスク" "規制リスク" 1
add_frontmatter "docs/risks/technical.md" "8.2 技術的リスク" "技術的リスク" 2
add_frontmatter "docs/risks/market.md" "8.3 市場リスク" "市場リスク" 3
add_frontmatter "docs/risks/disclaimer.md" "8.4 免責事項" "免責事項" 4

echo "フォルダ構造とフロントマター付きのMarkdownファイルが作成されました。"

