#import "../components/info-panel.typ": info-panel

#let controller(
  name: "Controller",
  model: "",
  firmware: "",
  network: "",
  ip: "",
  description: none,
) = info-panel(
  name,
  (
    ("Model", model),
    ("Firmware", firmware),
    ("Network", network),
    ("IP Address", ip),
  ),
  description: description,
)