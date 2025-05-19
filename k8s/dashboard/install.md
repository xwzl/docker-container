kubectl apply -f recommended.yaml --validate=false

kubectl apply -f dashboard-admin.yaml

kubectl -n kubernetes-dashboard create token admin-user

kubectl -n kubernetes-dashboard edit svc kubernetes-dashboard

scp /opt/k8s-offline/images/dashboard.tar root@192.168.110.124:/opt/k8s-offline/images/dashboard.tar
scp /opt/k8s-offline/images/metrics-scraper.tar root@192.168.110.124:/opt/k8s-offline/images/metrics-scraper.tar
ctr -n k8s.io images import /opt/k8s-offline/images/metrics-scraper.tar
ctr -n k8s.io images import /opt/k8s-offline/images/dashboard.tar
ctr -n k8s.io images tag docker.io/kubernetesui/dashboard:v2.7.0 kubernetesui/dashboard:v2.7.0
ctr -n k8s.io images tag docker.io/kubernetesui/metrics-scraper:v1.0.8 kubernetesui/metrics-scraper:v1.0.8

 修改 type 和 nodePort
```yaml
spec:
  type: NodePort
  ports:
    - port: 443
      targetPort: 8443
      protocol: TCP
      nodePort: 30965 
```
