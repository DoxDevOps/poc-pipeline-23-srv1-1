#!/bin/bash --login
cluster=17
sed -i "35 acluster = get_xi_data('http://10.44.0.52:8000/sites/api/v1/get_single_cluster/$cluster')" /var/lib/jenkins/workspace/poc-pipeline-23-srv1-1/api_shippingx.py

sed -i "38 acluster = get_xi_data('http://10.44.0.52:8000/sites/api/v1/get_single_cluster/$cluster')" /var/lib/jenkins/workspace/poc-pipeline-23-srv1-1/core_shippingx.py

