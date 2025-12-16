Profile: KenyaCoreCondition
Parent: Condition
Id: kenya-core-condition
Title: "KenyaCore Condition Profile"
Description: "Condition/diagnosis profile; bind to ICD/SNOMED where appropriate."

// Meta - Add profile reference
* meta.profile 1..1
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/condition|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/condition|1.0.0"

* code 1..1 
* code from http://id.who.int/icd/release/11-mms
* subject 1..1
* clinicalStatus 1..1 
* clinicalStatus from http://terminology.hl7.org/ValueSet/condition-clinical (required)
* verificationStatus 1..1 
* verificationStatus from http://terminology.hl7.org/CodeSystem/condition-ver-status (required)
* category 0..* 
* category from http://hl7.org/fhir/ValueSet/condition-category (extensible)
* encounter 0..1 
* onset[x] 0..1 MS
* recordedDate 0..1
* asserter 0..1  
