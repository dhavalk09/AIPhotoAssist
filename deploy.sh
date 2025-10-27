#!/bin/bash

# AI Travel Photographer - Deployment Script
# This script helps deploy the production build to various hosting platforms

echo "🚀 AI Travel Photographer - Deployment Helper"
echo "=============================================="
echo ""

# Check if build folder exists
if [ ! -d "build" ]; then
    echo "❌ Build folder not found!"
    echo "Please run the build process first."
    exit 1
fi

echo "✅ Build folder found!"
echo ""

# Display deployment options
echo "📦 Deployment Options:"
echo "1. GitHub Pages"
echo "2. Netlify"
echo "3. Vercel"
echo "4. Firebase Hosting"
echo "5. Manual Upload"
echo ""

read -p "Choose deployment option (1-5): " choice

case $choice in
    1)
        echo ""
        echo "🔗 GitHub Pages Deployment:"
        echo "1. Create a new GitHub repository"
        echo "2. Upload the contents of the 'build' folder to your repository"
        echo "3. Go to Settings > Pages"
        echo "4. Select 'Deploy from a branch' and choose 'main'"
        echo "5. Your app will be available at: https://username.github.io/repository-name"
        echo ""
        echo "📁 Files to upload:"
        ls -la build/
        ;;
    2)
        echo ""
        echo "🌐 Netlify Deployment:"
        echo "1. Go to https://netlify.com"
        echo "2. Sign up/Login"
        echo "3. Drag and drop the 'build' folder to the deploy area"
        echo "4. Your app will be live instantly!"
        echo ""
        echo "📁 Ready to upload:"
        ls -la build/
        ;;
    3)
        echo ""
        echo "⚡ Vercel Deployment:"
        echo "1. Install Vercel CLI: npm i -g vercel"
        echo "2. Run: cd build && vercel --prod"
        echo "3. Follow the prompts"
        echo "4. Your app will be deployed!"
        ;;
    4)
        echo ""
        echo "🔥 Firebase Hosting Deployment:"
        echo "1. Install Firebase CLI: npm install -g firebase-tools"
        echo "2. Run: firebase login"
        echo "3. Run: firebase init hosting"
        echo "4. Set public directory to 'build'"
        echo "5. Run: firebase deploy"
        ;;
    5)
        echo ""
        echo "📤 Manual Upload Instructions:"
        echo "1. Upload the contents of the 'build' folder to your web server"
        echo "2. Ensure HTTPS is enabled (required for camera access)"
        echo "3. Make sure your server serves static files"
        echo "4. Your app will be available at your domain"
        echo ""
        echo "📁 Files to upload:"
        ls -la build/
        ;;
    *)
        echo "❌ Invalid option selected"
        exit 1
        ;;
esac

echo ""
echo "🎉 Deployment instructions provided!"
echo ""
echo "📋 Important Notes:"
echo "- HTTPS is required for camera access"
echo "- Modern browsers only (Chrome, Firefox, Safari, Edge)"
echo "- Users must allow camera permissions"
echo "- All analysis happens locally (no server required)"
echo ""
echo "🔗 Your AI Travel Photographer app is ready to go live! 📸"
