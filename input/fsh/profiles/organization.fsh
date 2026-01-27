Profile: KenyaCoreOrganization
Parent: Organization
Title: "KenyaCore Organization Profile"
Description: "Organization representing healthcare provider facilities in Kenya." 
* ^version = "1.0.0"
* ^status = #active 

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/provider-organization|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/provider-organization|1.0.0"

* extension contains FacilityLevelExtension named facilityLevel 0..1
* extension contains ApprovalStatusExtension named approvalStatus 0..1
    
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice identifiers by type"
* identifier obeys provider-org-min-identifier
* identifier contains
    providerLicense 0..1 and
    fid 0..1 and
    frCode 0..1 and
    registrationNumber 0..1

// Provider License identifier (uses system, not type)
* identifier[providerLicense] ^short = "Licensing" 
* identifier[providerLicense].use = #official
* identifier[providerLicense].system = $provider-license
* identifier[providerLicense].value 1..1 

// FID identifier (uses type with coding)
* identifier[fid] ^short = "Facility ID (FID)" 
* identifier[fid].use = #official
* identifier[fid].type.coding.system = $facility-identifier-types
* identifier[fid].type.coding.code = #fid
* identifier[fid].type.coding.display = "Facility ID"
* identifier[fid].value 1..1 

// FR Code identifier (uses type with coding)
* identifier[frCode] ^short = "Facility Registry Code" 
* identifier[frCode].use = #official
* identifier[frCode].type.coding.system = $facility-identifier-types
* identifier[frCode].type.coding.code = #fr-code
* identifier[frCode].type.coding.display = "Facility registry code"
* identifier[frCode].value 1..1 
* identifier[frCode] obeys provider-org-fr-code-format

// Registration Number identifier (uses type with coding)
* identifier[registrationNumber] ^short = "Facility registration number" 
* identifier[registrationNumber].use = #official
* identifier[registrationNumber].type.coding.system = $facility-identifier-types
* identifier[registrationNumber].type.coding.code = #registration-number
* identifier[registrationNumber].type.coding.display = "Facility registration number"
* identifier[registrationNumber].value 1..1 

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
* type from OrganizationTypeVS

* telecom 0..* MS
* address 0..* MS
* address.district 0..1 MS
* address.district ^short = "County"
* address.city 0..1 MS
* address.city ^short = "Sub-County"
* address.state 0..1 MS
* address.state ^short = "Ward"


