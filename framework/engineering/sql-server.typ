#import "../components/info-panel.typ": info-panel

#let sql-server(
  name: "SQL Server",
  version: "",
  database: "",
  authentication: "",
  backup: "",
  description: none,
) = info-panel(
  name,

  (
    ("Version", version),
    ("Database", database),
    ("Authentication", authentication),
    ("Backup", backup),
  ),

  description: description,
)