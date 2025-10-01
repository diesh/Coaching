#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")"

echo "🔧 Cleaning old build..."
bundle exec jekyll clean

# Make sure _site exists with git history from gh-pages
if [ ! -d "_site/.git" ]; then
  echo "🌐 Setting up _site git history..."
  rm -rf _site
  git clone --branch gh-pages https://github.com/diesh/Coaching.git _site
else
  echo "🔄 Updating existing _site git history..."
  cd _site
  git fetch origin gh-pages
  git reset --hard origin/gh-pages
  cd ..
fi

echo "⚙️ Building site..."
bundle exec jekyll build --config _config.yml

cd _site

# Safety: confirm homepage exists
if [ ! -s "index.html" ]; then
  echo "❌ ERROR: index.html missing after build. Aborting."
  exit 1
fi

git add -A
if git diff --cached --quiet; then
  echo "✅ No changes to deploy."
else
  git commit -m "Deploy $(date)"
  echo "🚀 Pushing changes..."
  git push origin gh-pages
fi

cd ..
echo "✅ Deploy complete. Live at https://diesh.ca"

