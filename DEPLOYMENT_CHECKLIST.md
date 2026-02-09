# ✅ Deployment Checklist

Use this checklist to ensure you've completed all steps for GitHub and Netlify deployment.

## Pre-Deployment Setup

- [ ] Git is installed on your computer
- [ ] You have a GitHub account
- [ ] You have a Netlify account
- [ ] Project files are in `d:\Devops`

---

## GitHub Setup

- [ ] Initialize Git repository (`git init`)
- [ ] Add all files (`git add .`)
- [ ] Create initial commit (`git commit -m "Initial commit"`)
- [ ] Create GitHub repository at https://github.com/new
- [ ] Add remote origin (`git remote add origin [URL]`)
- [ ] Push to GitHub (`git push -u origin main`)
- [ ] Verify files appear on GitHub

---

## Netlify Setup

- [ ] Create Netlify account (or log in)
- [ ] Get Netlify Auth Token from User Settings → Applications
- [ ] Save Netlify Auth Token securely
- [ ] Create new Netlify site (manual or CLI)
- [ ] Get Netlify Site ID from Site Settings
- [ ] Save Netlify Site ID securely

---

## GitHub Secrets Configuration

- [ ] Go to GitHub repository Settings
- [ ] Navigate to Secrets and variables → Actions
- [ ] Add secret: `NETLIFY_AUTH_TOKEN`
- [ ] Add secret: `NETLIFY_SITE_ID`
- [ ] Verify both secrets are saved

---

## Workflow Files

- [ ] `.github/workflows/deploy.yml` exists
- [ ] `.gitignore` file exists
- [ ] `netlify.toml` file exists
- [ ] `DEPLOYMENT_GUIDE.md` exists (optional)

---

## Deployment Test

- [ ] Go to GitHub Actions tab
- [ ] Manually trigger workflow (or make a commit)
- [ ] Security scan completes successfully
- [ ] Build and test completes successfully
- [ ] Deploy to Netlify completes successfully
- [ ] Verify deployment completes successfully

---

## Post-Deployment Verification

- [ ] Open Netlify dashboard
- [ ] Find your site URL
- [ ] Visit your live site
- [ ] Verify site loads correctly
- [ ] Check all pages/links work
- [ ] Test on mobile device (optional)

---

## Security Verification

- [ ] Review security scan results in GitHub Actions
- [ ] Check for any critical vulnerabilities
- [ ] Verify no secrets/credentials in code
- [ ] Confirm security headers are applied

---

## Optional Enhancements

- [ ] Set up custom domain in Netlify
- [ ] Configure DNS for custom domain
- [ ] Enable Netlify Forms (if using forms)
- [ ] Set up Netlify Analytics
- [ ] Configure branch deploys
- [ ] Set up deploy notifications (Slack, email, etc.)

---

## Maintenance

- [ ] Document your site URL
- [ ] Share site URL with team/stakeholders
- [ ] Set up monitoring/uptime checks
- [ ] Plan regular content updates
- [ ] Schedule security reviews

---

## Quick Commands Reference

```bash
# Check status
git status

# Stage changes
git add .

# Commit changes
git commit -m "Your message"

# Push to GitHub (triggers deployment)
git push origin main

# View remote
git remote -v

# View logs
git log --oneline -5
```

---

## Troubleshooting Checklist

If deployment fails, check:

- [ ] Secrets are correctly set in GitHub (no extra spaces)
- [ ] Netlify Auth Token is valid (not expired)
- [ ] Netlify Site ID is correct
- [ ] GitHub Actions is enabled for the repository
- [ ] Workflow file has no syntax errors
- [ ] You've pushed the workflow file to GitHub
- [ ] Main branch name is correct (main vs master)

---

## Success Criteria

Your deployment is successful when:

✅ GitHub Actions workflow completes without errors
✅ No critical security issues found
✅ Site is live on Netlify
✅ All pages load correctly
✅ Security headers are applied

---

**🎉 Once all items are checked, your site is live!**

Your site URL: `https://_______________________.netlify.app`

---

*Print this checklist or keep it open while deploying*
