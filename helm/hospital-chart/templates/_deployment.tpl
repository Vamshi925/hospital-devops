{{- define "hospital.deployment" }}

apiVersion: apps/v1
kind: Deployment

metadata:
  name: {{ .name }}
  namespace: {{ .namespace }}

  labels:
{{ include "hospital.labels" $ | nindent 4 }}

spec:

  replicas: {{ .replicaCount }}

  selector:
    matchLabels:
      app: {{ .name }}

  template:

    metadata:
      labels:
        app: {{ .name }}

    spec:

      containers:

      - name: {{ .name }}

        image: "{{ .image.repository }}:{{ .image.tag }}"

        imagePullPolicy: {{ .image.pullPolicy }}

        ports:
        - containerPort: {{ .service.port }}

        envFrom:
        - configMapRef:
            name: {{ .configMap }}

        resources:
{{ toYaml .resources | nindent 10 }}

        startupProbe:
          httpGet:
            path: /actuator/health
            port: {{ .service.port }}
          failureThreshold: {{ .probes.startup.failureThreshold }}
          periodSeconds: {{ .probes.startup.periodSeconds }}

        readinessProbe:
          httpGet:
            path: /actuator/health
            port: {{ .service.port }}
          initialDelaySeconds: {{ .probes.readiness.initialDelaySeconds }}
          periodSeconds: {{ .probes.readiness.periodSeconds }}

        livenessProbe:
          httpGet:
            path: /actuator/health
            port: {{ .service.port }}
          initialDelaySeconds: {{ .probes.liveness.initialDelaySeconds }}
          periodSeconds: {{ .probes.liveness.periodSeconds }}

{{- end }}
