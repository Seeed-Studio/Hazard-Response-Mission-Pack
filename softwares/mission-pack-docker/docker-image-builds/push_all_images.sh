#!/bin/bash

# Get all images that start with "sensecraft"
images=$(docker images --format "{{.Repository}}:{{.Tag}}" | grep '^sensecraft')

for image in $images; do
    # Push the image to the target repository
    docker push $image
    echo "Pushed $image"

    # Extract the repository name and the original tag
    repo=$(echo $image | cut -d':' -f1)
    tag=$(echo $image | cut -d':' -f2)

    # Push the image with the original tag again
    docker push $repo:$tag
    echo "Pushed $repo:$tag"
done
