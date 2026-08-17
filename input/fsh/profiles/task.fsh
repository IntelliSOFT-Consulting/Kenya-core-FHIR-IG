Profile: KenyaCoreTask
Parent: Task
Id: kenya-core-task
Title: "Kenya Core Task Profile"
Description: "Kenya Core base profile for a Task representing a piece of work to be performed in a clinical or administrative workflow, e.g. referral coordination, order fulfilment tracking. Intended to be reused and further constrained by other Kenya implementation guides."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.dha.go.ke/ig/core/StructureDefinition/kenya-core-task"

* insert IdentifierRequiredRule(identifier, 0..*)

* status 1..1 MS
* status ^short = "draft | requested | received | accepted | ... | completed | entered-in-error"

* intent 1..1 MS
* intent ^short = "unknown | proposal | plan | order | ..."

* priority 0..1 MS
* priority ^short = "routine | urgent | asap | stat"

* insert CodeableConceptRule(code, 0..1, MS)
* code ^short = "What action is being requested/ordered"

* description 0..1 MS
* description ^short = "Human-readable explanation of task"

* focus 0..1 MS
* focus only Reference(KenyaCoreServiceRequest)
* focus ^short = "What request fulfilled by this task"

* insert ReferenceRule(for, KenyaCorePatient, 0..1)
* for ^short = "Beneficiary of the Task"

* insert ReferenceRule(encounter, KenyaCoreEncounter, 0..1)
* encounter ^short = "Healthcare event during which this task originated"

* authoredOn 0..1 MS
* authoredOn ^short = "Task creation date"

* lastModified 0..1 MS
* lastModified ^short = "Task last modified date"

* requester 0..1 MS
* requester only Reference(KenyaCoreOrganization or KenyaCorePractitionerRole or KenyaCorePractitioner)
* requester ^short = "Who is asking for task to be done"

* insert ReferenceRule(owner, KenyaCoreOrganization or KenyaCorePractitionerRole or KenyaCorePractitioner, 0..1)
* owner ^short = "Responsible individual/organization for task execution"

* executionPeriod 0..1 MS
* executionPeriod ^short = "Start and end time of execution"

* input 0..* MS
* input ^short = "Information used to perform task"

* output 0..* MS
* output ^short = "Information produced as part of task"
