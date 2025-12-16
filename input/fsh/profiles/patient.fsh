Profile: KenyaCorePatient
Parent: Patient
Id: kenya-core-patient
Title: "KenyaCore Patient Profile"
Description: "This profile represents the constraints applied to the Patient resource 
based on the International Patient Summary (IPS) FHIR Implementation Guide. 
It describes the minimum expectations for the Patient resource when used 
in the IPS composition or as a referenced resource."
* ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/patient"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-12-15"
* meta.profile 1..1
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/patient|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/patient|1.0.0"

* id 1..1
* id ^short = "Logical id of this artifact"
* id obeys sha-patient-id-format

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier ^slicing.description = "Slice identifiers by system"
* identifier obeys sha-patient-min-identifier
* identifier contains
    shaNumber 0..1 and
    phoneNumber 0..1 and
    householdNumber 0..1 and
    nationalId 0..1

// SHA Number identifier
* identifier[shaNumber] ^short = "SHA Number"
* identifier[shaNumber] ^definition = "Unique SHA patient identifier"
* identifier[shaNumber].use = #official
* identifier[shaNumber].use ^fixedCode = #official
* identifier[shaNumber].system = "https://fhir.sha.go.ke/fhir/identifier/shanumber"
* identifier[shaNumber].system ^fixedUri = "https://fhir.sha.go.ke/fhir/identifier/shanumber"
* identifier[shaNumber].value 1..1
* identifier[shaNumber].value ^short = "SHA Number value"
* identifier[shaNumber].value obeys sha-number-format

// Phone Number identifier
* identifier[phoneNumber] ^short = "Phone Number"
* identifier[phoneNumber] ^definition = "Patient's phone number"
* identifier[phoneNumber].use = #official
* identifier[phoneNumber].use ^fixedCode = #official
* identifier[phoneNumber].system = "https://fhir.sha.go.ke/fhir/identifier/phonenumber"
* identifier[phoneNumber].system ^fixedUri = "https://fhir.sha.go.ke/fhir/identifier/phonenumber"
* identifier[phoneNumber].value 1..1
* identifier[phoneNumber].value ^short = "Phone number value"
* identifier[phoneNumber].value obeys kenya-phone-format

// Household Number identifier
* identifier[householdNumber] ^short = "Household Number"
* identifier[householdNumber] ^definition = "Household identifier for the patient"
* identifier[householdNumber].use = #official
* identifier[householdNumber].use ^fixedCode = #official
* identifier[householdNumber].system = "https://fhir.sha.go.ke/fhir/identifier/householdnumber"
* identifier[householdNumber].system ^fixedUri = "https://fhir.sha.go.ke/fhir/identifier/householdnumber"
* identifier[householdNumber].value 1..1
* identifier[householdNumber].value ^short = "Household number value"
* identifier[householdNumber].value obeys household-number-format

// National ID identifier
* identifier[nationalId] ^short = "National ID"
* identifier[nationalId] ^definition = "Kenya national identification number"
* identifier[nationalId].use = #official
* identifier[nationalId].use ^fixedCode = #official
* identifier[nationalId].system = "https://fhir.sha.go.ke/fhir/identifier/nationalid"
* identifier[nationalId].system ^fixedUri = "https://fhir.sha.go.ke/fhir/identifier/nationalid"
* identifier[nationalId].value 1..1
* identifier[nationalId].value ^short = "National ID value"
* identifier[nationalId].value obeys national-id-format

* extension 0..* MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains PatientEthnicityExtension named citizenship 0..1

// Name - Required with text, family, and given 
* name 1..* MS
* name.text 0..1
* name.text ^short = "Full name in text format"
* name.family 1..1
* name.family ^short = "Family name (surname)"
* name.given 1..* MS
* name.given ^short = "Given names (first and middle names)"

// Gender - Required
* gender 1..1 MS
* gender ^short = "male | female | other | unknown"
* gender from AdministrativeGenderVS (required)

// Birth Date - Required
* birthDate 1..1 MS
* birthDate ^short = "Date of birth"
* birthDate obeys valid-birth-date

* active 0..1 MS
* active ^short = "Whether this patient's record is in active use"
* telecom 0..* MS
* address 0..* MS
* address.country 0..1 MS
* maritalStatus 0..1 MS
* maritalStatus ^short = "Marital status of the patient"
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status
* contact 0..* MS
* contact.relationship 0..* MS
* contact.relationship ^short = "The kind of relationship"
* contact.relationship from http://hl7.org/fhir/ValueSet/patient-contactrelationship

 