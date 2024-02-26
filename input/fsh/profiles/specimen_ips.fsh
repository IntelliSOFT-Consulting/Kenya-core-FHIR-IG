Alias: $KenyaCodeableConcept-uv-ips = http://example.org/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $results-specimen-type-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-specimen-type-uv-ips
Alias: $body-site-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/body-site-uv-ips

Profile: KenyaSpecimenIps
Parent: Specimen
Id: Kenya-specimen-ips
Title: "Specimen (IPS)"
Description: "This profile constrains the Specimen resource to represent the characteristics of a biological specimens in the context of laboratory results integrated to a patient summary."
* ^publisher = "HL7 International"
* ^status = #active
* ^purpose = "Minimal specimen attributes, usable for the laboratory results section and entry of a patient summary."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #pc
* type 1..
// * type only $CodeableConcept-uv-ips
// * type from $results-specimen-type-uv-ips (preferred)
* type ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* type ^binding.extension[=].extension[0].url = "purpose"
* type ^binding.extension[=].extension[=].valueCode = #candidate
* type ^binding.extension[=].extension[+].url = "valueSet"
* type ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-specimen-type-snomed-ct-ips-free-set"
* type ^binding.extension[=].extension[+].url = "documentation"
* type ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a specimen type value set from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* type ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* type ^binding.extension[=].valueString = "SpecimenType"
// * subject only Reference($Patient-uv-ips)
* subject.reference 1..
* collection.method only $KenyaCodeableConcept-uv-ips
* collection.method from FHIRSpecimenCollectionMethod (preferred)
* collection.bodySite only $KenyaCodeableConcept-uv-ips
* collection.bodySite from $body-site-uv-ips (preferred)
// * collection.fastingStatus[x] only $CodeableConcept-uv-ips or Duration