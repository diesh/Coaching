#!/bin/bash

# --- Ensure correct Ruby environment (skip silently if not found) ---
if command -v rbenv >/dev/null 2>&1; then
  eval "$(rbenv init - bash)"
fi


set -e

# Ensure VS Code can find your user Ruby gems (fixes Bundler 2.6.8 error)
export PATH="$HOME/.gem/ruby/$(ruby -e 'print RUBY_VERSION')/bin:$PATH"

echo "🔧 Cleaning old build..."
bundle exec jekyll clean
bundle exec jekyll build --config _config.yml --quiet

echo "🌐 Setting up _site git history..."
cd _site

if [ ! -d ".git" ]; then
  git init
  git remote add origin https://github.com/diesh/Coaching.git
  git checkout -b gh-pages
else
  git checkout gh-pages || git checkout -b gh-pages
fi

echo "🔄 Syncing with remote gh-pages..."
git fetch origin gh-pages || true
git reset --soft origin/gh-pages || true

# Add & commit only changes
git add -A
if git diff --cached --quiet; then
  echo "✅ No changes to deploy."
else
  echo "📄 Changed files:"
  git diff --cached --name-only
  git commit -m "Deploy $(date)"
  echo "🚀 Pushing changes..."
  git push origin gh-pages --force
fi

cd ..
echo "✅ Deploy complete. Live at https://diesh.ca"
