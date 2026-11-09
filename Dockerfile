FROM node:20-slim
WORKDIR /app
COPY package.json .
RUN npm install --no-audit --no-fund
COPY boot.js .
CMD ["node", "--max-old-space-size=384", "boot.js"]
