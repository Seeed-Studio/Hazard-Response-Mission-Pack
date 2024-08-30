#!/bin/bash

# 获取所有以 sensecraft 开头的镜像
images=$(docker images --format "{{.Repository}}:{{.Tag}}" | grep '^sensecraft')

for image in $images; do
    # 推送到目标仓库
    docker push $image
    echo "Pushed $image"

    # 获取镜像的仓库名和原来的标签
    repo=$(echo $image | cut -d':' -f1)
    tag=$(echo $image | cut -d':' -f2)

    # 重新打上原来的标签并推送
    docker push $repo:$tag
    echo "pushed $repo:$tag"
done
