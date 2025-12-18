Profile: KenyaCoreAllergyIntolerance
Parent: AllergyIntolerance
Id: kenya-core-allergyintolerance
Title: "Kenya Core AllergyIntolerance Profile"
Description: "Allergy or intolerance record."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-allergyintolerance|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-allergyintolerance|1.0.0"
* clinicalStatus 1..1 MS
* clinicalStatus from ConditionClinicalStatusVS
* verificationStatus 1..1 MS
* verificationStatus from ConditionVerificationStatusVS
* code 1..1 MS
* code from http://hl7.org/fhir/ValueSet/substance-code
* patient 1..1 MS
* patient only Reference(KenyaCorePatient)
* reaction 0..* MS
* reaction.manifestation 1..1 MS
* onset[x] 0..1 MS