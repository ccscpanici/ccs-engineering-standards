#import "info-panel.typ": info-panel

#let ignition-gateway(
  name: "Primary Gateway",
  version: "",
  redundancy: "",
  tag-provider: "",
  database: "",
  description: none,
) = info-panel(
  name,

  (
    ("Version", version),
    ("Redundancy", redundancy),
    ("Tag Provider", tag-provider),
    ("Database", database),
  ),

  description: description,
)