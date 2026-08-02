{{- define "hospital.service" }}

apiVersion: v1
kind: Service

metadata:
  name: {{ .name }}
  namespace: {{ .namespace }}

  labels:
    app: {{ .name }}
{{ include "hospital.labels" $ | nindent 4 }}

spec:
  selector:
    app: {{ .name }}

  type: {{ .service.type }}

  ports:
    - name: http
      port: {{ .service.port }}
      targetPort: {{ .service.port }}

{{- end }}
