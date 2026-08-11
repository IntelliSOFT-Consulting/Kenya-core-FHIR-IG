Profile: KenyaCoreCommunicationRequest
Parent: CommunicationRequest
Id: kenya-core-communicationrequest
Title: "Kenya Core CommunicationRequest Profile"
Description: "Kenya Core profile for a request to convey information, e.g. a request to notify a patient of results, or to arrange a follow-up call."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-communicationrequest|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-communicationrequest|1.0.0"

* insert IdentifierRequiredRule(identifier, 0..*)

* status 1..1 MS
* status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"

* insert CodeableConceptRule(category, 0..*, MS)
* category ^short = "Message category"

* priority 0..1 MS
* priority ^short = "routine | urgent | asap | stat"

* insert ReferenceRule(subject, KenyaCorePatient, 1..1)
* subject ^short = "Patient the communication request is about"

* insert ReferenceRule(encounter, KenyaCoreEncounter, 0..1)
* encounter ^short = "Encounter created as part of communication request"

* payload 0..* MS
* payload ^short = "Message content to send"

* occurrence[x] 0..1 MS
* occurrence[x] ^short = "When scheduled to occur"

* authoredOn 0..1 MS
* authoredOn ^short = "When request transitioned to being actionable"

* requester 0..1 MS
* requester only Reference(KenyaCorePractitioner or KenyaCorePractitionerRole or KenyaCoreOrganization or KenyaCorePatient)
* requester ^short = "Who/what is requesting the communication"

* recipient 0..* MS
* recipient only Reference(KenyaCorePractitioner or KenyaCorePractitionerRole or KenyaCoreOrganization or KenyaCorePatient or KenyaCoreRelatedPerson)
* recipient ^short = "Message recipient"

* sender 0..1 MS
* sender only Reference(KenyaCorePractitioner or KenyaCorePractitionerRole or KenyaCoreOrganization)
* sender ^short = "Message sender"

* insert CodeableConceptRule(reasonCode, 0..*, MS)
* reasonCode ^short = "Why is communication needed"

* note 0..* MS
* note ^short = "Comments made about communication request"
