#let plc-interface() = [
    
  = PLC Interface

  == Overview

  The PLC control system is responsible for detecting report boundaries,
  collecting production data, timestamping events, and buffering records for
  transfer to the reporting system.

  The PLC remains the authoritative source for process values and event timing.

  The reporting system shall not calculate process values that are already
  available within the PLC.

  == PLC Responsibilities

  The PLC shall:

  - Detect report start conditions.
  - Detect report completion conditions.
  - Collect all required report data.
  - Timestamp report events.
  - Buffer report records until acknowledged.
  - Detect communication failures.
  - Retry failed report transfers.
  - Prevent duplicate report generation.

  == Report Lifecycle

  Each report progresses through the following states:

  1. Report Initialized
  2. Data Collection
  3. Report Complete
  4. Awaiting Transfer
  5. Transfer Complete
  6. Report Archived

  Only completed reports shall be transferred to the SQL database.

  == Buffered Records

  The PLC shall buffer report records before transfer.

  Each buffered record shall contain:

  - Report Type
  - Report Sequence Number
  - PLC Timestamp
  - Equipment Identifier
  - Batch Identifier (if applicable)
  - Operator Identifier
  - Event Identifier
  - Process Values
  - Alarm Status
  - Quality Status

  Buffered records shall remain in PLC memory until acknowledged by Ignition.

  == Time Synchronization

  All PLC timestamps shall be synchronized to the plant Network Time Server.

  Timestamp synchronization is required to ensure:

  - Accurate report chronology
  - Event sequencing
  - Historical traceability
  - QA compliance

  == Communication

  Ignition shall periodically poll the PLC for completed report records.

  The communication protocol shall support:

  - Positive acknowledgement
  - Retry after communication failure
  - Duplicate detection
  - Record integrity verification

  The PLC shall not delete buffered records until acknowledgement has been received.

  == Error Handling

  The PLC shall detect and report:

  - Buffer overflow
  - Failed report transfer
  - Timestamp synchronization failure
  - Invalid report data
  - Communication timeout

  Errors shall be logged and presented to operators through Ignition.

  == Performance Requirements

  The PLC reporting functions shall not adversely affect production control.

  Report generation shall execute with lower priority than critical process control tasks.

  Buffered reporting shall ensure that temporary network interruptions do not result in report data loss.

]