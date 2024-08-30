FROM nodered/node-red:4.0.2-debian

# 切换到 root 用户以安装系统依赖
USER root

# 更新包列表并安装必要的系统依赖
RUN apt-get update && apt-get install -y \
    build-essential \
    libcairo2-dev \
    libpango1.0-dev \
    libjpeg-dev \
    libgif-dev \
    librsvg2-dev \
    pkg-config \
    ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 确保 Node-RED 目录的权限正确
RUN chown -R node-red:node-red /data

# 切换回 node-red 用户
USER node-red

# 暴露端口
EXPOSE 1880

# 启动 Node-RED
CMD ["npm", "start", "--", "--userDir", "/data"]
