#!/bin/bash

REGISTRY="asia-east1-docker.pkg.dev/careful-striker-429807-p1/quickstart-docker-repo"

declare -A images=(
    ["jaegertracing/all-in-one"]="latest"
    ["grafana/tempo"]="latest"
    ["prom/prometheus"]="latest"
    ["grafana/loki"]="latest"
    ["mysql"]="latest"
    ["grafana/grafana"]="latest"
    ["openzipkin/zipkin"]="latest"
    ["otel/opentelemetry-collector-contrib"]="0.91.0"
    ["spring-petclinic"]="10.10.10"
)

for image in "${!images[@]}"; do
    tag=${images[$image]}
    echo "Processing $image:$tag"
    docker tag "$image:$tag" "$REGISTRY/$image:$tag"
    docker push "$REGISTRY/$image:$tag"
done
