{{- define "cluster.name" -}}
    {{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "metal3machinetemplate.controlplane.name" -}}
    {{- include "cluster.name" . }}-cp-mt
{{- end }}

{{- define "metal3datatemplate.name" -}}
    {{- include "cluster.name" . }}-dt
{{- end }}

{{- define "metal3machinetemplate.worker.name" -}}
    {{- include "cluster.name" . }}-worker-mt
{{- end }}

{{- define "k0scontrolplane.name" -}}
    {{- include "cluster.name" . }}-cp-templ
{{- end }}

{{- define "k0sworkerconfigtemplate.name" -}}
    {{- include "cluster.name" . }}-machine-config
{{- end }}

{{- define "machinedeployment.name" -}}
    {{- include "cluster.name" . }}-md
{{- end }}
