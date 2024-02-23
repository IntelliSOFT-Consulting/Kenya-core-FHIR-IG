Profile: ClaimsResponseProfile
Parent: ClaimResponse
Id: ClaimsResponse-ke
Title: "Claims Response"
Description: "Standardize the format of electronic claims responses."
* ^status = #active
* ^purpose = "This profile constrains the representation of a claims response."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pc
* . ^definition = "Describes the event of a claim being responded to and the outcome"
* identifier 1..1 MS 
* status from ClaimsResponseVS
* status ^short = "Patient Claims Response status"
