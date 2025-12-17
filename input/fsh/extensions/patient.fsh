Extension: PatientEthnicityExtension
Id: patient-ethnicity-extension
Title: "Patient Ethnicity Extension"
Description: "Extension to capture patient ethnicity using a CodeableConcept from NZ ethnic-group-level-4 code system."
* valueCodeableConcept 1..1 
* valueCodeableConcept from  NZEthnicGroupLevel4VS (required)

Extension: PersonWithDisability
Id: person-with-disability-extension
Title: "Person With Disability Extension"
Description: "Extension to indicate if a person has a disability."
* valueBoolean 1..1
* valueBoolean ^short = "If individual is a personWithDisability"
