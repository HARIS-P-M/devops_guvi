# 🚀 GitHub & Netlify Deployment Guide

## 📋 Prerequisites
- Git installed on your computer
- GitHub account
- Netlify account (free tier works)
- Your project ready in: `d:\Devops`

---

## 🔧 Step 1: Initialize Git Repository (If Not Already Done)

Open terminal/command prompt in your project directory and run:

```bash
cd d:\Devops
git init
git add .
git commit -m "Initial commit: DevOps Training Project"
```

---

## 🌐 Step 2: Create GitHub Repository

### Option A: Using GitHub Website
1. Go to https://github.com/new
2. Repository name: `devops-training-website` (or your preferred name)
3. Description: "HCL GUVI DevOps Training Program Website"
4. Choose: **Public** (recommended) or Private
5. **DO NOT** initialize with README, .gitignore, or license
6. Click "Create repository"

### Option B: Using GitHub CLI
```bash
gh repo create devops-training-website --public --source=. --remote=origin
```

---

## 🔗 Step 3: Connect Local Repository to GitHub

After creating the GitHub repository, run these commands:

```bash
# Add the remote repository (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/devops-training-website.git

# Verify the remote was added
git remote -v

# Push your code to GitHub
git branch -M main
git push -u origin main
```

---

## 🎯 Step 4: Set Up Netlify

### 4.1 Create Netlify Account
1. Go to https://www.netlify.com/
2. Sign up (use GitHub to sign in for easier integration)

### 4.2 Get Netlify Credentials

#### Get Netlify Auth Token:
1. Log in to Netlify
2. Click your profile picture → "User settings"
3. Go to "Applications" → "Personal access tokens"
4. Click "New access token"
5. Name it: "GitHub Actions Deploy"
6. Copy the token (save it securely - you'll only see it once!)

#### Get Netlify Site ID:
**Method 1: Create new site manually**
1. In Netlify dashboard, click "Add new site" → "Deploy manually"
2. Drag and drop your `index.html` or `DEVOPS_TRAINING` folder
3. Once deployed, go to "Site settings"
4. Copy the "Site ID" (under Site details)

**Method 2: Use Netlify CLI**
```bash
npm install -g netlify-cli
netlify login
netlify init
# Follow the prompts
# Your Site ID will be shown and saved in .netlify/state.json
```

---

## 🔐 Step 5: Add Secrets to GitHub Repository

1. Go to your GitHub repository page
2. Click "Settings" tab
3. In the left sidebar, click "Secrets and variables" → "Actions"
4. Click "New repository secret"

### Add these two secrets:

**Secret 1: NETLIFY_AUTH_TOKEN**
- Name: `NETLIFY_AUTH_TOKEN`
- Value: [Paste your Netlify personal access token]
- Click "Add secret"

**Secret 2: NETLIFY_SITE_ID**
- Name: `NETLIFY_SITE_ID`
- Value: [Paste your Netlify site ID]
- Click "Add secret"

---

## ✅ Step 6: Enable GitHub Actions

1. Go to your repository's "Actions" tab
2. If prompted, click "I understand my workflows, go ahead and enable them"
3. The workflow will automatically run on the next push

---

## 🚀 Step 7: Deploy Your Site

### Automatic Deployment (Recommended)
Any push to the `main` branch will automatically trigger deployment:

```bash
# Make any change
git add .
git commit -m "Update: Configure deployment workflow"
git push origin main
```

### Manual Deployment
1. Go to your repository on GitHub
2. Click "Actions" tab
3. Select "Deploy to Netlify with Security Checks" workflow
4. Click "Run workflow" → "Run workflow"

---

## 📊 Step 8: Monitor Deployment

### Check GitHub Actions
1. Go to "Actions" tab in your repository
2. Click on the latest workflow run
3. You'll see three jobs:
   - ✅ Security Checks
   - ✅ Build and Test
   - ✅ Deploy to Netlify

### View Your Live Site
1. Go to your Netlify dashboard
2. Click on your site
3. Your site URL will be displayed (e.g., `https://your-site-name.netlify.app`)
4. You can customize the domain in Netlify settings

---

## 🛡️ Security Checks Included

The workflow automatically performs these security checks:

1. **Trivy Security Scanner** - Scans for vulnerabilities in files and dependencies
2. **TruffleHog** - Detects secrets and credentials in your code
3. **HTML Validation** - Ensures your HTML is properly formatted
4. **Security Headers Check** - Verifies security best practices
5. **File Permissions Check** - Identifies executable files
6. **Link Validation** - Checks for broken links (optional)

---

## 🔄 Workflow Triggers

The deployment workflow runs automatically when:
- ✅ You push code to `main` or `master` branch
- ✅ You create a pull request to `main` or `master`
- ✅ You manually trigger it from GitHub Actions tab

---

## 🎨 Step 9: Custom Domain (Optional)

### Add Custom Domain to Netlify:
1. In Netlify dashboard, go to your site
2. Click "Domain settings"
3. Click "Add custom domain"
4. Enter your domain name
5. Follow Netlify's instructions to configure DNS

---

## 📝 Project Structure

```
d:\Devops/
├── .github/
│   └── workflows/
│       └── deploy.yml          # GitHub Actions workflow
├── DEVOPS_TRAINING/            # Training materials
├── KEC_Presentation,.../       # Presentations & code
├── index.html                  # Main website file
└── DEPLOYMENT_GUIDE.md         # This file
```

---

## 🐛 Troubleshooting

### Issue: Workflow fails at security scan
**Solution**: This is usually just a warning. Check the "Actions" tab for details. You can continue with deployment.

### Issue: Netlify deployment fails
**Solutions**:
1. Verify `NETLIFY_AUTH_TOKEN` and `NETLIFY_SITE_ID` are correctly set in GitHub secrets
2. Check that secrets have no extra spaces
3. Ensure your Netlify account is active

### Issue: Site doesn't update after push
**Solutions**:
1. Check the "Actions" tab for workflow status
2. Verify the workflow completed successfully
3. Clear your browser cache (Ctrl + F5)
4. Wait 1-2 minutes for CDN propagation

### Issue: Git push fails
**Solutions**:
```bash
# Check your remote
git remote -v

# If remote is wrong, remove and re-add
git remote remove origin
git remote add origin https://github.com/YOUR_USERNAME/your-repo.git

# Try pushing again
git push -u origin main
```

---

## 📚 Additional Resources

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Netlify Documentation](https://docs.netlify.com/)
- [Git Documentation](https://git-scm.com/doc)

---

## ✨ Quick Command Reference

```bash
# Stage all changes
git add .

# Commit changes
git commit -m "Your commit message"

# Push to GitHub (triggers deployment)
git push origin main

# Check git status
git status

# View commit history
git log --oneline

# Create and switch to new branch
git checkout -b feature-branch

# Switch back to main
git checkout main
```

---

## 🎯 Next Steps

1. ✅ Initialize Git repository
2. ✅ Create GitHub repository
3. ✅ Push code to GitHub
4. ✅ Set up Netlify account
5. ✅ Add secrets to GitHub
6. ✅ Trigger deployment
7. ✅ Share your live site URL!

---

## 📞 Need Help?

If you encounter issues:
1. Check the GitHub Actions logs in the "Actions" tab
2. Review Netlify deploy logs in Netlify dashboard
3. Ensure all secrets are correctly configured
4. Verify your repository structure matches the expected layout

---

**🎉 Congratulations!** Your DevOps training website is now set up for automated deployment with security checks!

**Your live site will be available at**: `https://[your-site-name].netlify.app`

---

*Last Updated: February 9, 2026*
