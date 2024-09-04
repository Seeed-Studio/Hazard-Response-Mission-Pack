Clean Up Unused Images:

```
#!/bin/bash

docker image prune -a
```

Push All Images:

```
#!/bin/bash

# Get all images starting with 'sensecraft'
images=$(docker images --format "{{.Repository}}:{{.Tag}}" | grep '^sensecraft')

for image in $images; do
    # Push to target repository
    docker push $image

    echo "Pushed $image"
done
```
