#!/bin/bash

# ルートディレクトリの作成
mkdir -p docs

# フォルダとファイルの作成
mkdir -p docs/introduction/anime-industry docs/introduction/ai-impact
touch docs/introduction/anime-industry/{market-size,production-challenges,global-challenges}.md
touch docs/introduction/ai-impact/{ai-progress,ai-applications}.md
touch docs/introduction/ai-challenges.md

mkdir -p docs/solutions
touch docs/solutions/{copyright-cleared-ai,anima-blockchain,aira,ai-orchestration}.md

mkdir -p docs/ai-technology/anime-ai
touch docs/ai-technology/ai-basics.md
touch docs/ai-technology/anime-ai/{image-generation,animation-generation,multimodal-generation,realtime-feedback,data-driven-improvement}.md
touch docs/ai-technology/{copyright-cleared-data,ai-orchestration,anime-production-workflow}.md

mkdir -p docs/blockchain-technology
touch docs/blockchain-technology/{data-traceability,layer2-solution,aira-rights-management}.md

mkdir -p docs/ecosystem
touch docs/ecosystem/{overview,token-utility,token-economy}.md

mkdir -p docs/roadmap
touch docs/roadmap/{technology-milestones,ecosystem-expansion}.md

touch docs/team.md

mkdir -p docs/risks
touch docs/risks/{regulatory,technical,market,disclaimer}.md

echo "フォルダ構造が作成されました。"
