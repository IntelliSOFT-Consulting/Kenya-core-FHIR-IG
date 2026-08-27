Profile: KenyaCoreServiceRequest
Parent: ServiceRequest
Id: kenya-core-servicerequest
Title: "Kenya Core ServiceRequest Profile"
Description: "Kenya Core base profile for a request for a service (lab order, referral, imaging order, procedure order, etc). Intended to be reused and further constrained by other Kenya implementation guides."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-servicerequest"

* insert IdentifierRequiredRule(identifier, 0..*)

* status 1..1 MS
* status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"

* intent 1..1 MS
* intent ^short = "proposal | plan | directive | order | ..."

* insert CodeableConceptRule(category, 0..*, MS)
* category ^short = "Classification of service"

* priority 0..1 MS
* priority ^short = "routine | urgent | asap | stat"

* insert CodeableConceptRule(code, 0..1, MS)
* code ^short = "What is being requested/ordered"

* insert ReferenceRule(subject, KenyaCorePatient, 1..1)
* subject ^short = "Patient the service is requested for"

* insert ReferenceRule(encounter, KenyaCoreEncounter, 0..1)
* encounter ^short = "Encounter during which request was created"

* occurrence[x] 0..1 MS
* occurrence[x] ^short = "When service should occur"

* authoredOn 1..1 MS
* authoredOn ^short = "Date request was created"

* requester 0..1 MS
* requester only Reference(KenyaCorePractitionerRole or KenyaCorePractitioner or KenyaCoreOrganization)
* requester ^short = "Who/what is requesting the service"

* performer 0..* MS
* performer only Reference(KenyaCoreOrganization or KenyaCorePractitionerRole or KenyaCorePractitioner)
* performer ^short = "Requested performer"

* insert CodeableConceptRule(reasonCode, 0..*, MS)
* reasonCode ^short = "Explanation/justification for procedure or service"

* reasonReference 0..* MS
* reasonReference only Reference(KenyaCoreCondition or KenyaCoreObservation or KenyaCoreDiagnosticReport or KenyaCoreDocumentReference)
* reasonReference ^short = "Explanation/justification for service or service"

* supportingInfo 0..* MS
* supportingInfo ^short = "Additional clinical information"

* note 0..* MS
* note ^short = "Comments made about the service request"
