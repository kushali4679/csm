FROM gitpod/workspace-full:latest

# Install Node.js using curl
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash \
    && export NVM_DIR="$HOME/.nvm" \
    && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" \
    && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" \
    && nvm install 14

# Install Yarn package manager
RUN npm install -g yarn

# Expose ports
EXPOSE 3000
EXPOSE 8000
