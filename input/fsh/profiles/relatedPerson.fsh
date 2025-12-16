Profile: KenyaCoreRelatedPerson
Parent: RelatedPerson
Id: kenya-core-relatedperson
Title: "Kenya Core RelatedPerson Profile"
Description: "RelatedPerson used for next-of-kin, caregivers."

* identifier 0..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice identifiers by type" 

* patient 1..1 MS
* relationship 0..* MS
* name 0..* MS
* telecom 0..* MS