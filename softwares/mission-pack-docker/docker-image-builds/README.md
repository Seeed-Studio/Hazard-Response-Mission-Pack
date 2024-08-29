清理未使用镜像
```
#!/bin/bash

docker image prune -a
```

推送所有镜像
```
#!/bin/bash

# 获取所有以 sensecraft 开头的镜像
images=$(docker images --format "{{.Repository}}:{{.Tag}}" | grep '^sensecraft')

for image in $images; do
    # 推送到目标仓库
    docker push $image

    echo "Pushed $image"
done
```