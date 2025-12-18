Profile:  KenyaCorePractitioner
Parent:   Practitioner
Id:       practitioner-sha-ke
Title:    "KenyaCore Practitioner Profile"
Description: "Practitioner profile for Kenya healthcare providers" 
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-12-15"

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/practitioner|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/practitioner|1.0.0"

* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Kenya practitioner identifier slicing"
* identifier obeys ken-prac-min-identifier
* identifier contains
    registrationNumber 1..1 and 
    registryID 1..1 and
    nationalID 1..1 and
    licenseNumber 0..*


* identifier[registrationNumber] ^short = "Licensing Body registration number (e.g., KMPDC)" 
* identifier[registrationNumber].use = #official
* identifier[registrationNumber].system from PractitionerRegistrationNumberVS (required)
* identifier[registrationNumber].value 1..1 
* identifier[registrationNumber].system ^fixedUri = "https://fhir.sha.go.ke/fhir/Practitioner/PractitionerRegistrationNumber"
 

* identifier[registryID] ^short = "Links to health worker registry" 
* identifier[registryID].use = #official
* identifier[registryID].system from PractitionerRegistryIDVS (required)
* identifier[registryID].value 1..1
* identifier[registryID].system ^fixedUri = "https://fhir.sha.go.ke/fhir/Practitioner/PractitionerRegistryID"

* identifier[nationalID] ^short = "National ID Number" 
* identifier[nationalID].use = #official
* identifier[nationalID].system from NationalIDVS (required)
* identifier[nationalID].value 1..1
* identifier[nationalID].system ^fixedUri = "https://fhir.sha.go.ke/fhir/Practitioner/National_ID"

* identifier[licenseNumber] ^short = "National ID Number" 
* identifier[licenseNumber].use = #official
* identifier[licenseNumber].value 1..1 
* identifier[licenseNumber].period 0..1 MS
* identifier[licenseNumber].period.start 0..1
* identifier[licenseNumber].period.end 0..1



  
* name 1..*
* name ^short = "Practitioner's name"
* name.text 1..1
* name.text ^short = "Full name in text format"
 
* telecom 1..*
* telecom obeys ken-prac-min-contact and ken-prac-contact-format
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom contains
    email 0..* and
    phone 0..*

* telecom[email].system = #email
* telecom[email].value 1..1
* telecom[email].value obeys ken-prac-email-format

* telecom[phone].system = #phone
* telecom[phone].value 1..1
* telecom[phone].value obeys ken-prac-phone-format

* address 0..*
* address.text 1..1
* address.text ^short = "Full address in text format"
* address.text ^definition = "Complete postal address including P.O. Box and location"
* gender 1..1
* gender ^short = "Practitioner's administrative gender"
* gender from AdministrativeGenderVS (required)
* active 1..1
* active ^short = "Whether this practitioner's record is in active use"

* qualification 0..*
* qualification.code 1..1 MS
* qualification.code ^short = "Practitioner's qualification or specialty"
* qualification.code from PractitionerSpecialtiesVS (preferred) 
* qualification.period 0..1 MS
* qualification.extension contains LicenseStatusExtension named licenseStatus 0..1 MS
* qualification.extension contains LicensingBodyExtension named licensingBody 0..1 MS 
 