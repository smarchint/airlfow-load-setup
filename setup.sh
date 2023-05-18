
kubectl create ns test
kubectl apply -f daggen.cfg.yaml -n test
helm upgrade --install airflow apache-airflow/airflow --namespace test --create-namespace  -f values.yaml