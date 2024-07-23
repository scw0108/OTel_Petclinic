# How to Build in GKE
## Docker
1. Create Images
2. Tag Images and Push to Artifact Registry
```
    docker tag xxx:xxx location/xxx:xxx
    docker push location/xxx:xxx
```
https://cloud.google.com/artifact-registry/docs/docker/store-docker-container-images
## GKE
1. Change Docker Compose into kubectl and setup the permission in yml
```
curl -L https://github.com/kubernetes/kompose/releases/ download/v1.34.0/kompose-linux-amd64 -o kompose && chmod +x kompose && sudo mv ./kompose /usr/local/bin/kompose
```

``` 
    kompose convert   
``` 
https://kubernetes.io/zh-cn/docs/tasks/configure-pod-container/translate-compose-kubernetes/

2. Set up IAM permission
3. Build up GKE cluster and Set GKE Config
```
    kubectl apply -f ...
```
4. Setup the permission in yml and images
5. Useful command
```
    kubectl get pods
    kubectl get services
    kubectl logs deployment/...
```
