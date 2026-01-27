Profile: KenyaCoreCondition
Parent: Condition
Id: kenya-core-condition
Title: "KenyaCore Condition Profile"
Description: "Condition/diagnosis profile; bind to ICD/SNOMED where appropriate."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/condition|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/condition|1.0.0"

* code 1..1 MS
* code from http://id.who.int/icd/release/11-mms

* subject 1..1 MS
* subject only Reference(KenyaCorePatient)

* clinicalStatus 0..1 MS
* clinicalStatus from ConditionClinicalStatusVS

* verificationStatus 0..1 MS
* verificationStatus from ConditionVerificationStatusVS

* category 0..* 
* category from ConditionCategoryVS

* encounter 0..1 MS
* encounter only Reference(KenyaCoreEncounter)

* onset[x] 0..1 MS
* recordedDate 1..1 MS

* asserter 0..1  
* asserter only Reference(KenyaCorePractitioner)
