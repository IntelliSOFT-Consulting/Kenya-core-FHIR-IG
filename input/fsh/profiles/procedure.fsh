Profile: KenyaCoreProcedure
Parent: Procedure
Id: kenya-core-procedure
Title: "Kenya Core Procedure Profile"
Description: "Procedure profile for clinical and surgical procedures."
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-procedure|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-procedure|1.0.0"
* status 1..1 MS
* code 0..1 MS
* subject 1..1 MS
* encounter 0..1 MS
* performed[x] 0..1 MS
* performer 0..* MS
* performer.actor 1..1 MS
* reasonReference 0..* MS