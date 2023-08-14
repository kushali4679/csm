FROM gitpod/workspace-full:latest

# Install Node.js
RUN nvm install 14

# Set Node.js version
RUN nvm alias default 14

# Install Yarn package manager
RUN npm install -g yarn

# Expose ports
EXPOSE 3000
EXPOSE 8000
