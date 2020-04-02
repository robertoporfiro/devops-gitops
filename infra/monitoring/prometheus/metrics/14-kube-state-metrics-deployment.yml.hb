{{#if kubeStateMetrics.enabled}}
apiVersion: apps/v1
kind: Deployment
metadata:
  name: kube-state-metrics
  namespace: monitoring
spec:
  selector:
    matchLabels:
      name: kube-state-metrics
  replicas: 1
  template:
    metadata:
      labels:
        name: kube-state-metrics
    spec:
      affinity:
        nodeAffinity:
          requiredDuringSchedulingIgnoredDuringExecution:
            nodeSelectorTerms:
              - matchExpressions:
                - key: kubernetes.io/os
                  operator: In
                  values:
                  - linux
              - matchExpressions:
                - key: beta.kubernetes.io/os
                  operator: In
                  values:
                  - linux
      serviceAccountName: kube-state-metrics
      containers:
      - name: kube-state-metrics
        image: docker.io/kontenapharos/prometheus-kube-state-metrics:v1.6.0
        ports:
        - name: metrics
          containerPort: 8080
        readinessProbe:
          httpGet:
            path: /healthz
            port: 8080
          initialDelaySeconds: 5
          timeoutSeconds: 5
        resources:
          requests:
            cpu: 10m
            memory: 150Mi
          limits:
            cpu: 200m
            memory: 150Mi
{{/if}}
