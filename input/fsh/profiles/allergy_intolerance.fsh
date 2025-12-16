Profile: KenyaCoreAllergyIntolerance
Parent: AllergyIntolerance
Id: kenya-core-allergyintolerance
Title: "Kenya Core AllergyIntolerance Profile"
Description: "Allergy or intolerance record."

* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-allergyintolerance|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-allergyintolerance|1.0.0"

* clinicalStatus 1..1 MS
* verificationStatus 1..1 MS
* code 1..1 MS
* patient 1..1 MS
* reaction 0..* MS
* reaction.manifestation 1..1 MS
* onset[x] 0..1 MS