#!/bin/bash

# Setup script for GitHub repository
echo "=== Word to Strapi Converter - GitHub Setup ==="
echo ""
echo "This script will help you set up the GitHub repository."
echo ""

# Check if git is configured
if ! git config --get user.name > /dev/null 2>&1; then
    echo "Git user name not configured. Please set it up:"
    echo "git config --global user.name 'Your Name'"
    echo "git config --global user.email 'your.email@example.com'"
    echo ""
    exit 1
fi

if ! git config --get user.email > /dev/null 2>&1; then
    echo "Git user email not configured. Please set it up:"
    echo "git config --global user.email 'your.email@example.com'"
    echo ""
    exit 1
fi

echo "Git is properly configured."
echo ""

echo "To create the GitHub repository and push your code:"
echo ""
echo "1. Go to https://github.com/new"
echo "2. Repository name: word-to-strapi"
echo "3. Description: Convert Word documents following blog template to Strapi layouts"
echo "4. Make it Public or Private (your choice)"
echo "5. DO NOT initialize with README, .gitignore, or license (we already have these)"
echo "6. Click 'Create repository'"
echo ""
echo "7. After creating the repository, run these commands:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/word-to-strapi.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "Replace YOUR_USERNAME with your actual GitHub username."
echo ""
echo "Alternatively, if you have GitHub CLI installed:"
echo "   brew install gh"
echo "   gh auth login"
echo "   gh repo create word-to-strapi --public --source=. --remote=origin --push"
echo ""

echo "Current repository status:"
git status
echo ""
echo "Files ready to be pushed:"
git ls-files 