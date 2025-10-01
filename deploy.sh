#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")"

echo "🔧 Cleaning old build..."
bundle exec jekyll clean

echo "🌐 Setting up _site git history..."
rm -rf _site || true
git clone --branch gh-pages --depth=1 https://github.com/diesh/Coaching.git _site

echo "⚙️ Building site (suppressing Sass deprecation warnings)..."
bundle exec jekyll build --config _config.yml 2> >(grep -v "Deprecation Warning" >&2)

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
  echo "📝 Files changed in this deploy:"
  git diff --cached --name-status
  git commit -m "Deploy $(date)"
  echo "🚀 Pushing changes..."
  git push origin gh-pages
fi

cd ..
echo "✅ Deploy complete. Live at https://diesh.ca"

