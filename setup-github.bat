@echo off
REM ===================================================================
REM Quick Start Script for GitHub Setup
REM This script helps you initialize and push your project to GitHub
REM ===================================================================

echo.
echo ========================================
echo   GitHub Repository Setup Script
echo ========================================
echo.

REM Check if Git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Git is not installed or not in PATH
    echo Please install Git from: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo [OK] Git is installed
echo.

REM Get user inputs
set /p GITHUB_USERNAME="Enter your GitHub username: "
set /p REPO_NAME="Enter repository name (e.g., devops-training-website): "

if "%GITHUB_USERNAME%"=="" (
    echo [ERROR] GitHub username is required
    pause
    exit /b 1
)

if "%REPO_NAME%"=="" (
    echo [ERROR] Repository name is required
    pause
    exit /b 1
)

echo.
echo ========================================
echo Configuration:
echo   Username: %GITHUB_USERNAME%
echo   Repository: %REPO_NAME%
echo   Remote URL: https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git
echo ========================================
echo.

set /p CONFIRM="Is this correct? (Y/N): "
if /i not "%CONFIRM%"=="Y" (
    echo Setup cancelled.
    pause
    exit /b 0
)

echo.
echo [STEP 1/5] Initializing Git repository...
git init
if %errorlevel% neq 0 (
    echo [ERROR] Failed to initialize Git repository
    pause
    exit /b 1
)
echo [OK] Git repository initialized

echo.
echo [STEP 2/5] Staging all files...
git add .
if %errorlevel% neq 0 (
    echo [ERROR] Failed to stage files
    pause
    exit /b 1
)
echo [OK] Files staged

echo.
echo [STEP 3/5] Creating initial commit...
git commit -m "Initial commit: DevOps Training Project with CI/CD"
if %errorlevel% neq 0 (
    echo [ERROR] Failed to create commit
    pause
    exit /b 1
)
echo [OK] Initial commit created

echo.
echo [STEP 4/5] Setting up remote origin...
git remote remove origin >nul 2>&1
git remote add origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git
if %errorlevel% neq 0 (
    echo [ERROR] Failed to add remote origin
    pause
    exit /b 1
)
echo [OK] Remote origin added

echo.
echo [STEP 5/5] Renaming branch to 'main'...
git branch -M main
if %errorlevel% neq 0 (
    echo [WARNING] Failed to rename branch (might already be 'main')
)
echo [OK] Branch renamed to 'main'

echo.
echo ========================================
echo Setup Complete!
echo ========================================
echo.
echo Next Steps:
echo   1. Create repository on GitHub: https://github.com/new
echo      - Repository name: %REPO_NAME%
echo      - DO NOT initialize with README
echo.
echo   2. After creating the repository, run:
echo      git push -u origin main
echo.
echo   3. Follow the DEPLOYMENT_GUIDE.md to:
echo      - Set up Netlify account
echo      - Configure GitHub Secrets
echo      - Deploy your site
echo.
echo ========================================

pause
