docker build -t roullli/notejam:v4 .
docker push roullli/notejam:v4
kubectl apply -f k8s
