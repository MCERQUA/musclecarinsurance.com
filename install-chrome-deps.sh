#!/bin/bash
# Install Chrome dependencies for Puppeteer

echo "Installing Chrome dependencies..."

# Install required libraries directly from packages
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - || echo "Could not add Google key"

# Try installing Chrome directly
wget -q -O google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
if [ -f "google-chrome-stable_current_amd64.deb" ]; then
    echo "Downloaded Chrome package, attempting to install..."
    dpkg -i google-chrome-stable_current_amd64.deb 2>/dev/null || echo "Chrome installation failed, continuing..."
    rm google-chrome-stable_current_amd64.deb
fi

# Alternative: use snap
snap install chromium 2>/dev/null || echo "Snap install failed"

echo "Dependency installation complete. Testing Puppeteer..."