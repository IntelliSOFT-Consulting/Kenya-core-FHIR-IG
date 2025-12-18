Profile: KenyaCoreEncounter
Parent: Encounter
Id: kenya-core-encounter
Title: "Kenya Core Encounter Profile"
Description: "Kenya Core FHIR profile for Encounter resource, aligned with Kenya Core specifications."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-encounter|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-encounter|1.0.0"

* status 1..1 MS
* status from EncounterStatusVS (required)

* class 1..1  MS
* class from http://hl7.org/fhir/ValueSet/v3-ActEncounterCode (required)

* type 0..* 
* type from EncounterTypeVS

* serviceProvider 0..1 MS
* serviceProvider only Reference(KenyaCoreOrganization)

* participant 0..*
* participant.individual 1..1 MS
* participant.individual only Reference(Practitioner or PractitionerRole or RelatedPerson)

* period 0..1

* location 0..* MS
* location.location 1..1 
* location.location only Reference(KenyaCoreLocation)

* reasonCode 0..*

* diagnosis 0..* MS
* diagnosis.condition 1..1 

* subject 1..1  MS
* subject only Reference(KenyaCorePatient)

