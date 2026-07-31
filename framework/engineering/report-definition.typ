#import "../components/info-panel.typ": info-panel

#let report-definition(
  name: "Report",
  id: "",
  process-area: "",
  trigger: "",
  frequency: "",
  owner: "",
  approval: "",
  retention: "",
  description: none,
) = info-panel(
  name,
  (
    ("Report ID", id),
    ("Process Area", process-area),
    ("Trigger", trigger),
    ("Frequency", frequency),
    ("Owner", owner),
    ("Approval", approval),
    ("Retention", retention),
  ),
  description: description,
)