{{/*
Return chart name
*/}}
{{- define "hospital.name" -}}
{{- .Chart.Name -}}
{{- end }}

{{/*
Common Labels
*/}}
{{- define "hospital.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}
