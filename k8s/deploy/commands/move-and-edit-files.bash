# Copy file from local system to container
kubectl cp /local/path/to/file.txt <pod-name>:/container/path/to/file.txt -n <namespace>

# Edit file inside the container
kubectl exec -it <pod-name> -n <namespace> -- vi /container/path/to/file.txt

# Copy file back to local system after editing
kubectl cp <pod-name>:/container/path/to/file.txt /local/path/to/file.txt -n <namespace>
