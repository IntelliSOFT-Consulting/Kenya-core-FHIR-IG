Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips

Profile: KenyaMediaObservationUvIps
Parent: Media
Id: Media-observation-uv-ips
Title: "Media observation (Results: laboratory, media)"
Description: "This profile constrains the Media resource (which is a specialized observation)."
* ^experimental = false
* ^status = #active
* ^publisher = "HL7 International"
* ^purpose = "This specialized observation is used to convey illustrative media content."
* ^extension.valueCode = #pc
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* status = #completed (exactly)
* status ^definition = "The status of the result value. Only final observations are eligible to be included in the international patient summary."
//* type only $CodeableConcept-uv-ips
* subject 1..
//* subject only Reference($Patient-uv-ips)
* subject.reference 1..

