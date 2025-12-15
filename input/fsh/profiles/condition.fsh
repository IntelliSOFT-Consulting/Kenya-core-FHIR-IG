Profile: KenyaCoreCondition
Parent: Condition
Id: kenya-core-condition
Title: "KenyaCore Condition"
Description: "Condition/diagnosis profile; bind to ICD/SNOMED where appropriate."

// Meta - Add profile reference
* meta.profile 1..1
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/condition|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/condition|1.0.0"

* identifier 0..* MS
* clinicalStatus 0..1 MS
* verificationStatus 0..1 MS
* code 0..1 MS
* subject 1..1 MS
* onset[x] 0..1 MS
