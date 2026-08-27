Profile: KenyaCoreOperationOutcome
Parent: OperationOutcome
Id: kenya-core-operationoutcome
Title: "Kenya Core OperationOutcome Profile"
Description: "Kenya Core profile for OperationOutcome, used to report the outcome of an operation, typically errors, warnings, or informational messages returned by a system when processing a request."

* id 0..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-operationoutcome"

* issue 1..* MS
* issue ^short = "A single issue associated with the action"

* issue.severity 1..1 MS
* issue.severity ^short = "fatal | error | warning | information"

* issue.code 1..1 MS
* issue.code ^short = "Error or warning code, from the IssueType value set"

* insert CodeableConceptRule(issue.details, 0..1, MS)
* issue.details ^short = "Additional details about the error, e.g. a local code or message"

* issue.diagnostics 0..1 MS
* issue.diagnostics ^short = "Additional diagnostic information about the issue"

* issue.location 0..* MS
* issue.location ^short = "Path of element(s) related to the issue"

* issue.expression 0..* MS
* issue.expression ^short = "FHIRPath of element(s) related to the issue"
