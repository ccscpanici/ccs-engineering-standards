#import "../components/info-panel.typ": info-panel

#let historian(
  name: "Historian",
  platform: "",
  version: "",
  tag-provider: "",
  retention: "",
  storage: "",
  redundancy: "",
  description: none,
) = info-panel(
  name,
  (
    ("Platform", platform),
    ("Version", version),
    ("Tag Provider", tag-provider),
    ("Retention", retention),
    ("Storage", storage),
    ("Redundancy", redundancy),
  ),
  description: description,
)