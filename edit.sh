#!/bin/bash --login
cluster=1
sed -i "36 acluster = get_xi_data('http://10.44.0.52:8000/sites/api/v1/get_single_cluster/$cluster')" /var/lib/jenkins/workspace/project-test-v2/api_shippingx.py

sed -i "41 acluster = get_xi_data('http://10.44.0.52:8000/sites/api/v1/get_single_cluster/$cluster')" /var/lib/jenkins/workspace/project-test-v2/core_shippingx.py

