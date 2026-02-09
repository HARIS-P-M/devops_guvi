#!/bin/bash
# ===================================================================
# Quick Start Script for GitHub Setup (Linux/Mac)
# This script helps you initialize and push your project to GitHub
# ===================================================================

echo ""
echo "========================================"
echo "   GitHub Repository Setup Script"
echo "========================================"
echo ""

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "[ERROR] Git is not installed"
    echo "Please install Git first"
    exit 1
fi

echo "[OK] Git is installed"
echo ""

# Get user inputs
read -p "Enter your GitHub username: " GITHUB_USERNAME
read -p "Enter repository name (e.g., devops-training-website): " REPO_NAME

if [ -z "$GITHUB_USERNAME" ]; then
    echo "[ERROR] GitHub username is required"
    exit 1
fi

if [ -z "$REPO_NAME" ]; then
    echo "[ERROR] Repository name is required"
    exit 1
fi

echo ""
echo "========================================"
echo "Configuration:"
echo "  Username: $GITHUB_USERNAME"
echo "  Repository: $REPO_NAME"
echo "  Remote URL: https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
echo "========================================"
echo ""

read -p "Is this correct? (Y/N): " CONFIRM
if [ "${CONFIRM^^}" != "Y" ]; then
    echo "Setup cancelled."
    exit 0
fi

echo ""
echo "[STEP 1/5] Initializing Git repository..."
git init
if [ $? -ne 0 ]; then
    echo "[ERROR] Failed to initialize Git repository"
    exit 1
fi
echo "[OK] Git repository initialized"

echo ""
echo "[STEP 2/5] Staging all files..."
git add .
if [ $? -ne 0 ]; then
    echo "[ERROR] Failed to stage files"
    exit 1
fi
echo "[OK] Files staged"

echo ""
echo "[STEP 3/5] Creating initial commit..."
git commit -m "Initial commit: DevOps Training Project with CI/CD"
if [ $? -ne 0 ]; then
    echo "[ERROR] Failed to create commit"
    exit 1
fi
echo "[OK] Initial commit created"

echo ""
echo "[STEP 4/5] Setting up remote origin..."
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
if [ $? -ne 0 ]; then
    echo "[ERROR] Failed to add remote origin"
    exit 1
fi
echo "[OK] Remote origin added"

echo ""
echo "[STEP 5/5] Renaming branch to 'main'..."
git branch -M main
if [ $? -ne 0 ]; then
    echo "[WARNING] Failed to rename branch (might already be 'main')"
fi
echo "[OK] Branch renamed to 'main'"

echo ""
echo "========================================"
echo "Setup Complete!"
echo "========================================"
echo ""
echo "Next Steps:"
echo "  1. Create repository on GitHub: https://github.com/new"
echo "     - Repository name: $REPO_NAME"
echo "     - DO NOT initialize with README"
echo ""
echo "  2. After creating the repository, run:"
echo "     git push -u origin main"
echo ""
echo "  3. Follow the DEPLOYMENT_GUIDE.md to:"
echo "     - Set up Netlify account"
echo "     - Configure GitHub Secrets"
echo "     - Deploy your site"
echo ""
echo "========================================"
