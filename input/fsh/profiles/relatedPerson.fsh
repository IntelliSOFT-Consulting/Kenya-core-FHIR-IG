Profile: KenyaCoreRelatedPerson
Parent: RelatedPerson
Id: kenya-core-relatedperson
Title: "Kenya Core RelatedPerson Profile"
Description: "RelatedPerson used for next-of-kin, caregivers."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-relatedperson"

* identifier 0..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice identifiers by type" 

* patient 1..1 MS
* patient only Reference(KenyaCorePatient)

* relationship 0..* MS
* relationship from RelatedPersonRelationshipVS

* name 0..* MS
* telecom 0..* MS