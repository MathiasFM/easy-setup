kubectl create secret docker-registry github-container-registry \
  --docker-server=<registry>[ghcr.io] \
  --docker-username=<username> \
  --docker-password=<registry-token> \
  --docker-email=<e-mail>
