{{- /* Helm helpers for naming */ -}}
{{- define "nginx-app.name" -}}
{{- default .Chart.Name .Values.nameOverride }}
{{- end -}}

{{- define "nginx-app.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride }}
{{- else }}
{{- printf "%s-%s" (include "nginx-app.name" .) .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end -}}
{{- end -}}
