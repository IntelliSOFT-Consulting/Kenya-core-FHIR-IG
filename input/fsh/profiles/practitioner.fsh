Profile:  KenyaCorePractitioner
Parent:   Practitioner
Id:       practitioner-sha-ke
Title:    "KenyaCore Practitioner"
Description: "Practitioner profile for Kenya healthcare providers"
* ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/practitioner"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-12-15"
// Meta - Add profile reference
* meta.profile 1..1
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/practitioner|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/practitioner|1.0.0"

* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Kenya practitioner identifier slicing"
* identifier obeys ken-prac-min-identifier
* identifier contains
    registrationNumber 0..1 and
    sladeCode 0..1 and
    registryID 0..1 and
    nationalID 0..1

* identifier[registrationNumber] ^short = "Practitioner Registration Number"
* identifier[registrationNumber] ^definition = "Official registration number from regulatory body"
* identifier[registrationNumber].use = #official
* identifier[registrationNumber].system from PractitionerRegistrationNumberVS (required)
* identifier[registrationNumber].value 1..1
* identifier[registrationNumber].value ^short = "Registration number value"
* identifier[registrationNumber].system ^fixedUri = "https://fhir.sha.go.ke/fhir/Practitioner/PractitionerRegistrationNumber"

* identifier[sladeCode] ^short = "Slade Code"
* identifier[sladeCode] ^definition = "Slade facility code for the practitioner"
* identifier[sladeCode].use = #official
* identifier[sladeCode].system from SladeCodeVS (required)
* identifier[sladeCode].value 1..1
* identifier[sladeCode].system ^fixedUri = "https://fhir.sha.go.ke/fhir/Practitioner/SladeCode"

* identifier[registryID] ^short = "Practitioner Registry ID"
* identifier[registryID] ^definition = "Unique practitioner identifier in the national registry"
* identifier[registryID].use = #official
* identifier[registryID].system from PractitionerRegistryIDVS (required)
* identifier[registryID].value 1..1
* identifier[registryID].system ^fixedUri = "https://fhir.sha.go.ke/fhir/Practitioner/PractitionerRegistryID"

* identifier[nationalID] ^short = "National ID Number"
* identifier[nationalID] ^definition = "Kenya national identification number"
* identifier[nationalID].use = #official
* identifier[nationalID].system from NationalIDVS (required)
* identifier[nationalID].value 1..1
* identifier[nationalID].system ^fixedUri = "https://fhir.sha.go.ke/fhir/Practitioner/National_ID"
  
* name 1..*
* name ^short = "Practitioner's name"
* name.text 1..1
* name.text ^short = "Full name in text format"
* name.text ^definition = "Complete practitioner name in the format: Title FIRSTNAME MIDDLENAME LASTNAME"
 
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
* gender ^short = "Male | Female | Other | Unknown"
* active 1..1
* active ^short = "Whether this practitioner's record is in active use"




Instance: ExamplePractitionerMinimal
InstanceOf: KenyaCorePractitioner
Title: "Example Minimal Kenya Practitioner"
Description: "Example with minimum required identifiers (only one)"
Usage: #example
* identifier[registrationNumber].system = $PractitionerRegistrationNumber
* identifier[registrationNumber].value = "A11539"
* active = true
* name.text = "Dr JANE MWANGI"
* telecom[0].system = #phone
* telecom[0].value = "+254712345679"
* gender = #female

Instance: ExamplePractitionerComplete
InstanceOf: KenyaCorePractitioner
Title: "Example Kenya Practitioner Complete"
Description: "Example of a Kenya practitioner with all required identifiers"
Usage: #example
* identifier[+].use = #official
* identifier[=].system = $PractitionerRegistrationNumber
* identifier[=].value = "A11539"
* identifier[+].use = #official
* identifier[=].system = $SladeCode
* identifier[=].value = "801347"
* identifier[+].use = #official
* identifier[=].system = $PractitionerRegistryID
* identifier[=].value = "PUID-0009504-3"
* identifier[+].use = #official
* identifier[=].system = $National_ID
* identifier[=].value = "29944238"
* active = true
* name.text = "Dr DENNIS GITONGA GIKUNJU"
* telecom[+].system = #email
* telecom[=].value = "dennis.gitonga@example.com"
* telecom[+].system = #phone
* telecom[=].value = "+254712345678"
* address.text = "P.O BOX 99807 80107 MOMBASA"
* gender = #male