docker build -t roullli/notejam:v1 .
docker push roullli/notejam:v1
kubectl apply -f k8s
