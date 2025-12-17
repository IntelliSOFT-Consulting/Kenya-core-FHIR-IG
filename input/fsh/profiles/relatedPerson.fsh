Profile: KenyaCoreRelatedPerson
Parent: RelatedPerson
Id: kenya-core-relatedperson
Title: "Kenya Core RelatedPerson Profile"
Description: "RelatedPerson used for next-of-kin, caregivers."
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-relatedperson|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-relatedperson|1.0.0"

* identifier 0..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice identifiers by type" 
* patient 1..1 MS
* relationship 0..* MS
* name 0..* MS
* telecom 0..* MS