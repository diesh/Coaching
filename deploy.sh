#!/bin/bash
set -e

echo "🔧 Cleaning and building site..."
bundle exec jekyll clean
bundle exec jekyll build --config _config.yml

# Safety check: make sure _site/index.html exists and isn't empty
if [ ! -s "_site/index.html" ]; then
  echo "❌ ERROR: _site/index.html missing or empty. Build failed. Aborting deploy."
  exit 1
fi

cd _site

echo "🌐 Preparing gh-pages branch..."
git init
git remote add origin https://github.com/diesh/Coaching.git || true
git checkout -B gh-pages

echo "📝 Verifying CNAME..."
if [ ! -s "CNAME" ]; then
  echo "❌ ERROR: CNAME file missing from _site. Did you add 'include: - CNAME' to _config.yml?"
  exit 1
fi

echo "🚀 Deploying to GitHub Pages..."
git add .
git commit -m "Deploy $(date)"
git push -f origin gh-pages

cd ..
echo "✅ Deploy complete. Live at https://diesh.ca"

