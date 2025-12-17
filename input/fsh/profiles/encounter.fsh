Profile: KenyaCoreEncounter
Parent: Encounter
Id: kenya-core-encounter
Title: "Kenya Core Encounter Profile"
Description: "Kenya Core FHIR profile for Encounter resource, aligned with Kenya Core specifications."
 
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-encounter|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-encounter|1.0.0"
* status 1..1 
* status from http://hl7.org/fhir/ValueSet/encounter-status (required)
* class 1..1 
* class from http://hl7.org/fhir/ValueSet/v3-ActEncounterCode (required)
* type 0..* 
* type from https://nhts.dha.go.ke/orgs/MOH-KENYA/sources/bill/concepts/claim%20subtype/
* subject 1..1  MS
* participant 0..*
* participant.individual 1..1
* period 0..1
* serviceProvider 0..1 
* location 0..* 
* location.location 1..1
* reasonCode 0..*
* diagnosis 0..*
* diagnosis.condition 1..1
