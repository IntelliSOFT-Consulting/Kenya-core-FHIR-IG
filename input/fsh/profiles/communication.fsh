Profile: KenyaCoreCommunication
Parent: Communication
Id: kenya-core-communication
Title: "Kenya Core Communication Profile"
Description: "Kenya Core profile for recording a communication that has occurred between a patient, care team members, and/or systems, e.g. referral follow-up calls, SMS notifications, care coordination messages."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.dha.go.ke/ig/core/StructureDefinition/kenya-core-communication"

* insert IdentifierRequiredRule(identifier, 0..*)

* status 1..1 MS
* status ^short = "preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown"

* insert CodeableConceptRule(category, 0..*, MS)
* category ^short = "Message category, e.g. alert, notification, reminder"

* priority 0..1 MS
* priority ^short = "routine | urgent | asap | stat"

* insert ReferenceRule(subject, KenyaCorePatient, 1..1)
* subject ^short = "Patient the communication is about"

* insert ReferenceRule(encounter, KenyaCoreEncounter, 0..1)
* encounter ^short = "Encounter created as part of communication"

* insert ReferenceRule(basedOn, KenyaCoreServiceRequest, 0..*)
* basedOn ^short = "Request fulfilled by this communication"

* sent 0..1 MS
* sent ^short = "When sent"

* received 0..1 MS
* received ^short = "When received"

* sender 0..1 MS
* sender only Reference(KenyaCorePractitioner or KenyaCorePractitionerRole or KenyaCoreOrganization or KenyaCorePatient or KenyaCoreRelatedPerson)
* sender ^short = "Who shares the information"

* recipient 0..* MS
* recipient only Reference(KenyaCorePractitioner or KenyaCorePractitionerRole or KenyaCoreOrganization or KenyaCorePatient or KenyaCoreRelatedPerson)
* recipient ^short = "Who the information is shared with"

* insert CodeableConceptRule(reasonCode, 0..*, MS)
* reasonCode ^short = "Indication for message"

* payload 0..* MS
* payload ^short = "Message content"

* note 0..* MS
* note ^short = "Comments made about the communication"
