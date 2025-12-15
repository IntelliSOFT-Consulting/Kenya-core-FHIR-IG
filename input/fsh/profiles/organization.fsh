Profile: KenyaCoreOrganization
Parent: Organization
Title: "KenyaCore Provider Organization"
Description: "Organization representing healthcare provider facilities in Kenya."
* ^url = "http://example.org/StructureDefinition/provider-organization"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-12-15"

// Meta - Add profile reference
* meta.profile 1..1
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/provider-organization|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/provider-organization|1.0.0"

* extension contains FacilityLevelExtension named facilityLevel 0..1
    
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice identifiers by type"
* identifier obeys provider-org-min-identifier
* identifier contains
    providerLicense 0..1 and
    sladeCode 0..1 and
    fid 0..1 and
    frCode 0..1 and
    registrationNumber 0..1

// Provider License identifier (uses system, not type)
* identifier[providerLicense] ^short = "Provider License Number"
* identifier[providerLicense] ^definition = "Official license number for healthcare providers"
* identifier[providerLicense].use = #official
* identifier[providerLicense].system = $provider-license
* identifier[providerLicense].value 1..1
* identifier[providerLicense].value ^short = "License number value"

// Slade Code identifier (uses type with coding)
* identifier[sladeCode] ^short = "Slade Facility Code"
* identifier[sladeCode] ^definition = "Unique code identifying the healthcare facility"
* identifier[sladeCode].use = #official
* identifier[sladeCode].type.coding.system = $facility-identifier-types
* identifier[sladeCode].type.coding.code = #slade-code
* identifier[sladeCode].type.coding.display = "Code"
* identifier[sladeCode].value 1..1
* identifier[sladeCode].value ^short = "Slade code value"

// FID identifier (uses type with coding)
* identifier[fid] ^short = "Facility ID (FID)"
* identifier[fid] ^definition = "Internal facility identifier"
* identifier[fid].use = #official
* identifier[fid].type.coding.system = $facility-identifier-types
* identifier[fid].type.coding.code = #fid
* identifier[fid].type.coding.display = "Fid"
* identifier[fid].value 1..1
* identifier[fid].value ^short = "FID value"

// FR Code identifier (uses type with coding)
* identifier[frCode] ^short = "Facility Registry Code"
* identifier[frCode] ^definition = "Complete facility registry code with location and type"
* identifier[frCode].use = #official
* identifier[frCode].type.coding.system = $facility-identifier-types
* identifier[frCode].type.coding.code = #fr-code
* identifier[frCode].type.coding.display = "Fr Code"
* identifier[frCode].value 1..1
* identifier[frCode].value ^short = "FR Code value"
* identifier[frCode] obeys provider-org-fr-code-format

// Registration Number identifier (uses type with coding)
* identifier[registrationNumber] ^short = "Registration Number"
* identifier[registrationNumber] ^definition = "Official registration number from regulatory body"
* identifier[registrationNumber].use = #official
* identifier[registrationNumber].type.coding.system = $facility-identifier-types
* identifier[registrationNumber].type.coding.code = #registration-number
* identifier[registrationNumber].type.coding.display = "Registration Number"
* identifier[registrationNumber].value 1..1
* identifier[registrationNumber].value ^short = "Registration number value"

// Name is required
* name 1..1 MS
* name ^short = "Organization name"
* name ^definition = "Official name of the healthcare facility"

// Active status
* active 1..1 MS
* active ^short = "Whether the organization's record is active"

// Type - limited to provider only (from example)
* type 1..* MS
* type ^short = "Type of organization"
* type ^definition = "Organization type - must be provider"
* type.coding.system = $organization-type
* type.coding.code = #prov
* type obeys provider-org-type-constraint

 

Instance: ExamplePatanishoMaternity
InstanceOf: KenyaCoreOrganization
Title: "PATANISHO MATERNITY & NURSING HOME"
Description: "Example provider organization matching the JSON example"
Usage: #example
* id = "FID-47-109332-4"
//* extension[facilityLevel].url = $facility-level
* extension[facilityLevel].valueCodeableConcept.coding.system = $facility-level
* extension[facilityLevel].valueCodeableConcept.coding.code = #LEVEL-4
* extension[facilityLevel].valueCodeableConcept.coding.display = "LEVEL 4"
* name = "PATANISHO MATERNITY & NURSING HOME"
* identifier[providerLicense].use = #official
* identifier[providerLicense].system = $provider-license
* identifier[providerLicense].value = "PR-FHIR"
* identifier[sladeCode].use = #official
* identifier[sladeCode].type.coding.system = $facility-identifier-types
* identifier[sladeCode].type.coding.code = #slade-code
* identifier[sladeCode].type.coding.display = "Code"
* identifier[sladeCode].value = "6857"
* identifier[fid].use = #official
* identifier[fid].type.coding.system = $facility-identifier-types
* identifier[fid].type.coding.code = #fid
* identifier[fid].type.coding.display = "Fid"
* identifier[fid].value = "109332"
* identifier[frCode].use = #official
* identifier[frCode].type.coding.system = $facility-identifier-types
* identifier[frCode].type.coding.code = #fr-code
* identifier[frCode].type.coding.display = "Fr Code"
* identifier[frCode].value = "FID-47-109332-4"
* identifier[registrationNumber].use = #official
* identifier[registrationNumber].type.coding.system = $facility-identifier-types
* identifier[registrationNumber].type.coding.code = #registration-number
* identifier[registrationNumber].type.coding.display = "Registration Number"
* identifier[registrationNumber].value = "001673"
* active = true
* type.coding.system = $organization-type
* type.coding.code = #prov