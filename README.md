# HCL GUVI DevOps Training Program Website

A comprehensive website showcasing the DevOps Training Program conducted at Kongu Engineering College in collaboration with HCL and GUVI.

[![Deploy to Netlify](https://img.shields.io/badge/Deploy-Netlify-00C7B7?style=flat&logo=netlify)](https://www.netlify.com/)
[![GitHub Actions](https://img.shields.io/badge/CI/CD-GitHub%20Actions-2088FF?style=flat&logo=github-actions)](https://github.com/features/actions)
[![Security](https://img.shields.io/badge/Security-Scanned-success?style=flat&logo=security)](/)

## 🌟 Features

- **Modern Design**: Clean and responsive UI built with HTML5 and CSS3
- **Training Content**: Comprehensive DevOps curriculum information
- **Automated Deployment**: CI/CD pipeline with GitHub Actions
- **Security Hardened**: Multiple security checks and headers
- **Fast Performance**: Optimized for speed and SEO

## 🚀 Live Demo

Visit the live site: [Your Netlify URL]

## 📋 Table of Contents

- [About](#about)
- [Technologies Used](#technologies-used)
- [Security Features](#security-features)
- [Getting Started](#getting-started)
- [Deployment](#deployment)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)

## 🎯 About

This project is a static website created for the HCL GUVI DevOps Training Program at Kongu Engineering College. It provides information about:

- DevOps fundamentals and methodologies
- Training curriculum and schedule
- Resources and documentation
- Contact information

## 🛠️ Technologies Used

- **Frontend**: HTML5, CSS3, JavaScript
- **Fonts**: Google Fonts (Inter, Poppins)
- **Hosting**: Netlify
- **CI/CD**: GitHub Actions
- **Security**: Trivy, TruffleHog

## 🛡️ Security Features

This website implements multiple security measures:

- ✅ **Automated Security Scanning**: Trivy vulnerability scanner
- ✅ **Secret Detection**: TruffleHog for credential scanning
- ✅ **Security Headers**: X-Frame-Options, CSP, X-XSS-Protection
- ✅ **HTML Validation**: Automated HTML structure validation
- ✅ **File Permission Checks**: Monitors executable files
- ✅ **HTTPS Enforcement**: Secure connection via Netlify

## 🚦 Getting Started

### Prerequisites

- Git installed
- GitHub account
- Netlify account
- Text editor (VS Code recommended)

### Local Development

1. Clone the repository:
```bash
git clone https://github.com/YOUR_USERNAME/devops-training-website.git
cd devops-training-website
```

2. Open `index.html` in your browser:
```bash
# On Windows
start index.html

# On macOS
open index.html

# On Linux
xdg-open index.html
```

3. For live server (optional):
```bash
# Using Python
python -m http.server 8000

# Using Node.js (install http-server first)
npx http-server -p 8000
```

4. Visit `http://localhost:8000` in your browser

## 📦 Deployment

### Automated Deployment

This project uses GitHub Actions for automated deployment to Netlify.

**Quick Start:**

1. Follow the comprehensive guide: [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md)
2. Use the checklist: [DEPLOYMENT_CHECKLIST.md](DEPLOYMENT_CHECKLIST.md)

**Summary Steps:**

1. Push code to GitHub
2. Set up Netlify account and get credentials
3. Add `NETLIFY_AUTH_TOKEN` and `NETLIFY_SITE_ID` to GitHub Secrets
4. Push changes to trigger deployment

### Manual Deployment

You can also deploy manually through Netlify's web interface:

1. Log in to Netlify
2. Drag and drop your project folder
3. Your site will be live instantly

## 📁 Project Structure

```
devops-training-website/
├── .github/
│   └── workflows/
│       └── deploy.yml              # GitHub Actions workflow
├── DEVOPS_TRAINING/                # Training materials
├── KEC_Presentation,.../           # Presentations & code
├── index.html                      # Main website file
├── netlify.toml                    # Netlify configuration
├── .gitignore                      # Git ignore rules
├── DEPLOYMENT_GUIDE.md             # Detailed deployment guide
├── DEPLOYMENT_CHECKLIST.md         # Setup checklist
└── README.md                       # This file
```

## 🔄 CI/CD Pipeline

The workflow automatically:

1. **Security Scan**: Runs vulnerability and secret scanning
2. **Build & Test**: Validates HTML and checks links
3. **Deploy**: Deploys to Netlify on push to main branch
4. **Verify**: Performs post-deployment health checks

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 👥 Authors

- **Your Name** - *Initial work* - [YourGitHub](https://github.com/YOUR_USERNAME)

## 🙏 Acknowledgments

- HCL Technologies
- GUVI
- Kongu Engineering College
- All trainers and participants

## 📞 Contact

For questions or support:

- **Email**: your.email@example.com
- **GitHub**: [@YOUR_USERNAME](https://github.com/YOUR_USERNAME)
- **LinkedIn**: [Your LinkedIn](https://linkedin.com/in/your-profile)

## 📊 Project Status

![GitHub last commit](https://img.shields.io/github/last-commit/YOUR_USERNAME/devops-training-website)
![GitHub issues](https://img.shields.io/github/issues/YOUR_USERNAME/devops-training-website)
![GitHub pull requests](https://img.shields.io/github/issues-pr/YOUR_USERNAME/devops-training-website)

---

**⭐ If you find this project useful, please consider giving it a star!**

---

*Made with ❤️ for DevOps enthusiasts*
