{{- define "hospital.servicemonitor" }}

{{- if .monitoring.enabled }}

apiVersion: monitoring.coreos.com/v1
kind: ServiceMonitor

metadata:
  name: {{ .name }}
  namespace: monitoring
  labels:
    release: monitoring

spec:
  selector:
    matchLabels:
      app: {{ .name }}

  namespaceSelector:
    matchNames:
      - {{ .namespace }}

  endpoints:
    - port: http
      path: /actuator/prometheus
      interval: 15s

{{- end }}

{{- end }};
