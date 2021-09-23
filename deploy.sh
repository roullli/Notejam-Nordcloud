docker build -t roullli/notejam:latest -t roullli/notejam:$SHA_V .
docker push roullli/notejam:latest
docker push roullli/notejam:$SHA_V
kubectl apply -f k8s
kubectl set image deployment/notejam-deployment notejam=roullli/notejam:$SHA_V
