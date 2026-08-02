#import "state.typ": state-diagram

#let qa-workflow(
    pending: "QA Review Pending",
    hold: "QA Hold",
    approved: "QA Approved",

    review-to-hold: "Place report on hold",
    review-to-approved: "Approve report",
    hold-to-review: "Return for QA review",
    hold-to-approved: "Approve after corrective action",
  ) = state-diagram(
    pending: pending,
    hold: hold,
    approved: approved,

    review-to-hold: review-to-hold,
    review-to-approved: review-to-approved,
    hold-to-review: hold-to-review,
    hold-to-approved: hold-to-approved,
  )