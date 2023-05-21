# Airflow Load Setup


## Quickstart
+ warning : check kubectx before running 
+ run `./setup.sh` 
+ refer to [this](https://github.com/apache/airflow/blob/main/chart/values.yaml) file for overriding default values for airflow !! 
+ refer [airflow-official-helmchart](https://airflow.apache.org/docs/helm-chart/stable/index.html) for more 
## Deploy jupyter notebook pod for analysis
+ `kubectl apply -f jupyter.yaml -n test`

## Setup Monitoring
+ `helm upgrade --install  kps prometheus-community/kube-prometheus-stack  --set nodeExporter.enabled=false -n test`
+ `kubectl apply -f kps/airflowServiceMon.yaml -n test`

## FAQ
+ how to use cloud postgresql?  -- for larger load db connection issues can occur !!
    + use data.metadataConnection:~ and disable postgres:~  in values.yaml

## References
+ https://github.com/apache/airflow/blob/main/chart/README.md
+ https://github.com/prometheus-community/helm-charts/blob/main/charts/kube-prometheus-stack/README.md
+ https://github.com/databand-ai/airflow-dashboards