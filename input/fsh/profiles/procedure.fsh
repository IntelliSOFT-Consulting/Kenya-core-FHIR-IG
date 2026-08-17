Profile: KenyaCoreProcedure
Parent: Procedure
Id: kenya-core-procedure
Title: "Kenya Core Procedure Profile"
Description: "Procedure profile for clinical and surgical procedures."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.dha.go.ke/ig/core/StructureDefinition/kenya-core-procedure"
* status 1..1 MS
* code 0..1 MS

* subject 1..1 MS
* subject only Reference(KenyaCorePatient)

* encounter 0..1 MS
* encounter only Reference(KenyaCoreEncounter)

* performed[x] 0..1 MS

* performer 0..* MS
* performer.actor 1..1 MS
* performer.actor only Reference(KenyaCorePractitioner)

* reasonReference 0..* MS