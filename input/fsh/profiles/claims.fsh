Alias: $kenya-counties-extension = http://example.org/StructureDefinition/kenya-counties-extension

Profile: ClaimProfile
Parent: Claim
Id: Claim-ke
Title: "Claims"
Description: "Standardise the format of electronic claims / pre-authorizations / pre-determinations."
* ^status = #active
* ^purpose = "This profile constrains the representation of a record of a vaccination of the patient, in the context of the international patient summary as specified by the IPS project of HL7 International."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #pc
* . ^definition = "Describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a patient, a clinician or another party and may include vaccine reaction information and what vaccination protocol was followed"
* extension contains
    $kenya-counties-extension named county 0..1 
* identifier 1..1 MS 
* status from ClaimsStatusVS
* status ^short = "Patient Claim's status"
