kubectl apply -f recommended.yaml --validate=false

kubectl create serviceaccount my-permanent-sa -n kube-system

kubectl create clusterrolebinding my-permanent-sa-binding \
--clusterrole=cluster-admin \
--serviceaccount=kube-system:my-permanent-sa

kubectl apply -f my-permanent-sa-secret.yaml

# 获取 token
kubectl -n kube-system get secret my-permanent-sa-token -o jsonpath="{.data.token}" | base64 -d



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
