# Dockerfile

# 從 [Docker Hub](https://hub.docker.com/) 安裝 Node.js image。
FROM node:6.9.1

# 設定 container 的預設目錄位置
WORKDIR /circleci

# 將專案根目錄的檔案加入至 container
# 安裝 npm package
ADD . /circleci
RUN npm install

# 開放 container 的 3000 port
EXPOSE 3000
CMD npm start
