#!/bin/bash -e

registry="registry.cn-hangzhou.aliyuncs.com"
v=1.1.0
v="${v}-$(date '+%Y%m%d')-$(git rev-parse --short HEAD)"
image="${registry}/dice-third-party/addon-grafana-bypass:${v}"

docker build -t "${image}" \
    --label "branch=$(git rev-parse --abbrev-ref HEAD)" \
    --label "commit=$(git rev-parse HEAD)" \
    --label "build-time=$(date '+%Y-%m-%d %T%z')" \
    -f "Dockerfile" .

docker login -u "${TERMINUS_DOCKERHUB_ALIYUN_USERNAME}" -p "${TERMINUS_DOCKERHUB_ALIYUN_PASSWORD}" ${registry}
docker push "${image}"