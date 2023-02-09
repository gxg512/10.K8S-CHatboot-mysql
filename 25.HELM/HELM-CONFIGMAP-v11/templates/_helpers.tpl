{{- define "mychart.systemlables" }}
  labels:
    drive: ssd2
    machine: frontdrive2
    rack: 4c2
    vcard: 8g2
    app.kubernetes.io/managed-by: "{{ $.Release.Service }}"
{{- end }}
