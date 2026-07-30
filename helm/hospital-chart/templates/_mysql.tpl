{{- define "hospital.mysql.statefulset" }}

apiVersion: apps/v1
kind: StatefulSet

metadata:
  name: mysql-{{ .name }}
  namespace: {{ .namespace }}

  labels:
{{ include "hospital.labels" . | nindent 4 }}

spec:

  serviceName: mysql-{{ .name }}

  replicas: 1

  selector:
    matchLabels:
      app: mysql-{{ .name }}

  template:

    metadata:
      labels:
        app: mysql-{{ .name }}

    spec:

      containers:

        - name: mysql

          image: mysql:8.4

          ports:
            - containerPort: 3306

          env:

            - name: MYSQL_ROOT_PASSWORD
              value: root

            - name: MYSQL_DATABASE
              value: {{ .database }}

          volumeMounts:

            - name: mysql-storage
              mountPath: /var/lib/mysql

  volumeClaimTemplates:

    - metadata:
        name: mysql-storage

      spec:

        accessModes:
          - ReadWriteOnce

        resources:
          requests:
            storage: 5Gi

{{- end }}

{{- define "hospital.mysql.service" }}

apiVersion: v1
kind: Service

metadata:
  name: mysql-{{ .name }}
  namespace: {{ .namespace }}

  labels:
{{ include "hospital.labels" . | nindent 4 }}

spec:

  clusterIP: None

  selector:
    app: mysql-{{ .name }}

  ports:
    - port: 3306
      targetPort: 3306

{{- end }}
