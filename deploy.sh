docker build -t roullli/notejam:v2 .
docker push roullli/notejam:v2
kubectl apply -f k8s
