{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "app_fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s-app" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "service_fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s-service" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "ingress_fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s-ingress" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "redis_fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s-redis" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "redis_service_fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s-redis-service" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
