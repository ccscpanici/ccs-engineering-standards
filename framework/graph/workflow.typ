#import "@preview/cetz:0.5.2"
#import "constants.typ": graph-unit
#import "primitives.typ": graph-node, graph-edge

#let review-label-color = rgb("#2f5597")
#let approval-label-color = rgb("#2e7d32")

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

    // QA Review Pending -> QA Hold
    graph-edge(
      "pending.south-west",
      "hold.north",
      label: review-to-hold,
      label-position: (7.0, 7.9),
      label-width: 1.55in,
      label-color: review-label-color,
    )

    // QA Review Pending -> QA Approved
    graph-edge(
      "pending.south-east",
      "approved.north",
      label: review-to-approved,
      label-position: (17.0, 7.9),
      label-width: 1.20in,
      label-color: approval-label-color,
    )

    // QA Hold -> QA Approved
    graph-edge(
      "hold.east",
      "approved.west",
      label: hold-to-approved,
      label-position: (12, 4.6),
      label-width: 2.25in,
      label-color: approval-label-color,
    )

    // QA Hold -> QA Review Pending
    graph-edge(
      "hold.west",
      "pending.west",
      via: (
        (1.75, 2.5),
        (1.75, 12),
      ),
      label: hold-to-review,
      label-position: (1.35, 7.2),
      label-anchor: "east",
      label-width: 1.35in,
      label-color: review-label-color,
    )
  },
)