Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $Device-observer-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Device-observer-uv-ips
Alias: $Practitioner-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Alias: $PractitionerRole-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips
Alias: $Organization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips
Alias: $procedures-snomed-absent-unknown-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/procedures-snomed-absent-unknown-uv-ips

Profile: KenyProcedureIps
Parent: Procedure
Id: kenya-device-ips
Title: "Procedure (IPS)"
Description: "This profile represents the constraints applied to the Procedure resource by the IPS project, which specifies an entry of the History of Procedure for the international patient summary based on the FHIR standard R4."
* ^status = #active
* code 1..1 MS
* code from $procedures-snomed-absent-unknown-uv-ips (preferred)
* code ^definition = "Identification of the procedure or recording of \"absence of relevant procedures\" or of \"procedures unknown\"."
* code ^binding.extension[0].extension[0].valueCode = #candidate
* code ^binding.extension[=].extension[=].url = "purpose"
* code ^binding.extension[=].extension[+].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/procedures-snomed-ct-ips-free-set"
* code ^binding.extension[=].extension[=].url = "valueSet"
* code ^binding.extension[=].extension[+].valueMarkdown = "Codes for procedures in SNOMED IPS Free Set"
* code ^binding.extension[=].extension[=].url = "documentation"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.extension[+].extension[0].valueCode = #candidate
* code ^binding.extension[=].extension[=].url = "purpose"
* code ^binding.extension[=].extension[+].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-procedures-uv-ips"
* code ^binding.extension[=].extension[=].url = "valueSet"
* code ^binding.extension[=].extension[+].valueMarkdown = "Codes for absent or unknown procedures"
* code ^binding.extension[=].extension[=].url = "documentation"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.description = "SNOMED CT procedure code set or a code for absent/unknown procedure"
* subject MS
* subject ^definition = "The person on which the procedure was performed."
* subject.reference 1.. MS
* performed[x] 1..1 MS
* performed[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* performed[x].extension[data-absent-reason] ^short = "performed[x] absence reason"
* performed[x].extension[data-absent-reason] ^definition = "Provides a reason why the performed is missing."
* asserter ^mustSupport = false
* performer ^mustSupport = false
* performer.actor ^mustSupport = false
* performer.onBehalfOf ^mustSupport = false
* bodySite from SNOMEDCTBodyStructures (example)
* bodySite ^binding.extension[0].valueString = "BodySite"
* bodySite ^binding.extension[=].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"