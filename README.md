# challenge-qdzujc8mwmykntl

First build the nginx and php-fpm images and push them to the kubernetes cluster (In a real scenario the images should be pushed to a private docker registry like ECR (https://docs.aws.amazon.com/AmazonECR/latest/userguide/ECR_on_EKS.html). For example in minikube:
```
  $ make images
  $ minikube image load challenge-qdzujc8mwmykntl-nginx:latest
  $ minikube image load challenge-qdzujc8mwmykntl-php-fpm:latest
```
Then create the new namespace:
```
  $ kubectl apply -f k8s-manifests/namespace.yaml
```
And finally apply the rest of the manifests:
```
  $ kubectl apply -f k8s-manifests
```
