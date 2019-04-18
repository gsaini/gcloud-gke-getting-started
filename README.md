# gcloud-gke-getting-started

Google cloud platform - Kubernetes

## To start nginx server

`nginx -p ./ -c nginx.conf`

## To stop nginx server

`nginx -s stop -p ./ -c nginx.conf`

## Steps -

    1. Docker - build an image. `docker build -t gcr.io/gcloud-gke-getting-started/nginx-app:v1 .`
    2. Docker - push to google registry. `docker push gcr.io/gcloud-gke-getting-started/nginx-app:v1`
    3. Gcloud - Create a container cluster `gcloud container clusters create nginx-server-cluster --num-nodes=2 --region=europe-west2`
    4. Kubernetes
       1. Deploy your application `kubectl run nginx-webapp --image=gcr.io/gcloud-gke-getting-started/nginx-app:v1 --port 443`
       2. Expose the application to the Internet `kubectl expose deployment nginx-webapp --type=LoadBalancer --port 443 --target-port 443`
       3. kubectl get service
       4. kubectl scale deployment nginx-webapp --replicas=1
       5. kubectl get deployment hello-web
