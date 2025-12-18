Profile: KenyaCoreObservation
Parent: Observation
Id: kenya-core-observation
Title: "Kenya Core Observation Profile"
Description: "Observation profile for vitals and lab results."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-observation|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-observation|1.0.0"
* status 1..1 MS
* category 1..* MS
* code 1..1 MS

* subject 1..1 MS
* subject only Reference(KenyaCorePatient)

* encounter 0..1 MS
* encounter only Reference(KenyaCoreEncounter)

* effective[x] 1..1 MS
* value[x] 0..1 MS

* performer 0..* MS
* performer only Reference(KenyaCorePractitioner)