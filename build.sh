docker build . -t hitcount -t gcr.io/broadcast2patients/hitcount
docker push gcr.io/broadcast2patients/hitcount
gcloud config set project broadcast2patients
gcloud config set run/region us-east1
gcloud run deploy hitcount --image gcr.io/broadcast2patients/hitcount:latest --platform managed
