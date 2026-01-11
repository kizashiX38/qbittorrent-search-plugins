#!/bin/bash
# Push qBittorrent Search Plugins Collection to GitHub
# Created by DXM369

echo "================================================"
echo "  qBittorrent Search Plugins - Push to GitHub"
echo "================================================"
echo ""

# Check if we're in the right directory
if [ ! -f "README.md" ]; then
    echo "❌ Error: Please run this script from the qbittorrent_search_plugins directory"
    exit 1
fi

echo "📋 Step 1: Create GitHub Repository"
echo "------------------------------------"
echo "1. Go to: https://github.com/new"
echo "2. Repository name: qbittorrent-search-plugins"
echo "3. Description: A comprehensive collection of 88 qBittorrent search engine plugins"
echo "4. Make it PUBLIC"
echo "5. DO NOT initialize with README, .gitignore, or license"
echo ""
read -p "Press ENTER once you've created the repository..."

echo ""
echo "📤 Step 2: Pushing to GitHub..."
echo "------------------------------------"

# Add remote
git remote add origin https://github.com/DXM369/qbittorrent-search-plugins.git 2>/dev/null || echo "Remote already exists, updating..."
git remote set-url origin https://github.com/DXM369/qbittorrent-search-plugins.git

# Rename branch to main
git branch -M main

# Push to GitHub
echo "Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ SUCCESS! Your repository is now live!"
    echo ""
    echo "🌐 View at: https://github.com/DXM369/qbittorrent-search-plugins"
    echo ""
    echo "📌 Next Steps:"
    echo "1. Add topics: qbittorrent, torrent, search-plugins, python"
    echo "2. Read LISTING_ON_OFFICIAL_WIKI.md to get listed on the official wiki"
    echo "3. Share your collection with the community!"
    echo ""
else
    echo ""
    echo "❌ Push failed. This might be because:"
    echo "1. You haven't created the GitHub repository yet"
    echo "2. You need to authenticate with GitHub"
    echo "3. The repository name is different"
    echo ""
    echo "💡 Try authenticating with:"
    echo "   git credential-manager configure"
    echo "   git push -u origin main"
    echo ""
fi

echo "================================================"
