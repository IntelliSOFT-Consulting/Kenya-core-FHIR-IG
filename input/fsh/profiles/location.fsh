Profile: KenyaCoreLocation
Parent: Location
Id: kenya-core-location
Title: "Kenya Core Location Profile"
Description: "Location profile for facility units, wards, labs."

* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-location|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-location|1.0.0"
* status 0..1 MS
* status from http://hl7.org/fhir/ValueSet/location-status 
* status ^short = "Location status"
* name 0..1 MS 
* name ^short = "Display name"
* type 0..* MS
* type ^short = "Type of location (e.g., Ward/clinic/lab/etc.)"
* type from LocationTypeVS
* managingOrganization 0..1 MS
* managingOrganization ^short = "Who manages"
* address 0..1 MS
* address ^short = "Physical address"
* partOf 0..1 
* partOf ^short = "Parent location"
* position 0..1 
* position ^short = "Geo"