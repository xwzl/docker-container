kubectl apply -f recommended.yaml --validate=false

kubectl apply -f dashboard-admin.yaml

kubectl -n kubernetes-dashboard create token admin-user

kubectl -n kubernetes-dashboard edit svc kubernetes-dashboard

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
