#import "@preview/cetz:0.5.2"
#import "constants.typ": graph-unit
#import "primitives.typ": graph-node, graph-edge

#let qa-workflow(
  pending: "QA Review Pending",
  hold: "QA Hold",
  approved: "QA Approved",

  review-to-hold: "Place report on hold",
  review-to-approved: "Approve report",
  hold-to-review: "Return for QA review",
  hold-to-approved: "Approve after corrective action",
) = cetz.canvas(
  length: graph-unit,
  {
    graph-node(
      "pending",
      (12, 12),
      pending,
    )

    graph-node(
      "hold",
      (6, 2.5),
      hold,
    )

    graph-node(
      "approved",
      (18, 2.5),
      approved,
    )

    graph-edge(
      "pending.south-west",
      "hold.north",
      label: review-to-hold,
      label-position: (7.5, 7.8),
      label-width: 1.65in,
    )

    graph-edge(
      "pending.south-east",
      "approved.north",
      label: review-to-approved,
      label-position: (16.5, 7.8),
      label-width: 1.25in,
    )

    graph-edge(
      "hold.east",
      "approved.west",
      label: hold-to-approved,
      label-position: (12, 4.6),
      label-width: 2.50in,
    )

    graph-edge(
      "hold.west",
      "pending.west",
      via: (
        (1, 2.5),
        (1, 12),
      ),
      label: hold-to-review,
      label-position: (0.6, 7.2),
      label-anchor: "east",
      label-width: 1.65in,
    )
  },
)