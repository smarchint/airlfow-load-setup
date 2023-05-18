# airflow-load-setup


## quickstart
+ warning : check kubectx before running 
+ run `./setup.sh` 
+ refer to [this](https://github.com/apache/airflow/blob/main/chart/values.yaml) file for overriding default values for airflow !! 
+ refer [airflow-official-helmchart](https://airflow.apache.org/docs/helm-chart/stable/index.html) for more 
## deploy jupyter notebook pod for analysis
+ `kubectl apply -f jupyter.yaml -n test`

## FAQ
+ how to use cloud postgresql?  -- for larger load can face db connection issues !!
    + use data.metadataConnection:~ and disable postgres:~  in values.yaml