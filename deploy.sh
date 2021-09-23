docker build -t roullli/notejam:v3 .
docker push roullli/notejam:v3
kubectl apply -f k8s
