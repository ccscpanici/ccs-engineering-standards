#import "../components/info-panel.typ": info-panel

#let network-switch(
  name: "Network Switch",
  manufacturer: "",
  model: "",
  firmware: "",
  ip: "",
  network: "",
  vlan: "",
  managed: "",
  description: none,
) = info-panel(
  name,
  (
    ("Manufacturer", manufacturer),
    ("Model", model),
    ("Firmware", firmware),
    ("IP Address", ip),
    ("Network", network),
    ("VLAN", vlan),
    ("Managed", managed),
  ),
  description: description,
)