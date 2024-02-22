Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $problem-type-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/problem-type-uv-ips
Alias: $condition-severity = http://hl7.org/fhir/ValueSet/condition-severity
Alias: $problems-snomed-absent-unknown-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/problems-snomed-absent-unknown-uv-ips

Profile: ConditionUvIps
Parent: Condition
Id: Condition-uv-ips
Title: "Condition (IPS)"
Description: "This profile represents the constraints applied to the Condition resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of a problem is represented in the patient summary as an instance of the Condition resource constrained by this profile."
* ^purpose = "Representation of a problem in the international patient summary"
* ^publisher = "HL7 International"
* ^status = #active
* . ^short = "Documentation of a health problem of the patient"
// * clinicalStatus only $CodeableConcept-uv-ips
* clinicalStatus MS
// * verificationStatus only $CodeableConcept-uv-ips
* verificationStatus ^comment = "This element is labeled as a modifier because the status contains the code refuted and entered-in-error that mark the Condition as not currently valid."
// * category only $CodeableConcept-uv-ips
* category MS
// * category from $problem-type-uv-ips (preferred)
* category ^definition = "A category assigned to the condition. In this profile, a health problem of the patient, therefore a 'problem-list-item'.\r\n"
* category ^comment = "In this profile, Condition represents a health problem of the patient. Therefore one of the category value(s) must be problem-list-item."
* category ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* category ^binding.extension[=].extension[0].url = "purpose"
* category ^binding.extension[=].extension[=].valueCode = #candidate
* category ^binding.extension[=].extension[+].url = "valueSet"
* category ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/problem-type-loinc"
* category ^binding.extension[=].extension[+].url = "documentation"
* category ^binding.extension[=].extension[=].valueMarkdown = "An alternative additional binding to the LOINC \"Problem\" code - retained for backward compatibility."
// * severity only $CodeableConcept-uv-ips
* severity MS
* severity from $condition-severity (preferred)
* severity ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* severity ^binding.extension[=].extension[0].url = "purpose"
* severity ^binding.extension[=].extension[=].valueCode = #candidate
* severity ^binding.extension[=].extension[+].url = "valueSet"
* severity ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/condition-severity-uv-ips"
* severity ^binding.extension[=].extension[+].url = "documentation"
* severity ^binding.extension[=].extension[=].valueMarkdown = "An alternative additional binding to LOINC answer codes for condition/problem severity"
* severity ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* severity ^binding.extension[=].valueString = "ConditionSeverity"
* code 1..1 MS
// * code only $CodeableConcept-uv-ips
* code from $problems-snomed-absent-unknown-uv-ips (preferred)
* code ^definition = "Identification of the condition, problem or diagnosis or recording of \"problem absent\" or of \"problems unknown\"."
* code ^binding.description = "Code for a clinical problem that is selected from SNOMED CT or a code for absent/unknown problem"
* code ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.extension[=].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/problems-snomed-ct-ips-free-set"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Codes for a clinical problem in SNOMED IPS Free Set"
* code ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.extension[=].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-problems-uv-ips"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Codes for absent or unknown problems"
// * bodySite only $CodeableConcept-uv-ips
* bodySite from SNOMEDCTBodyStructures (example)
* bodySite ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* bodySite ^binding.extension[=].valueString = "BodySite"
// * subject only Reference($Patient-uv-ips)
* subject MS
* subject.reference 1.. MS
* onset[x] only dateTime or Age or Period or Range or string
* onset[x] MS
* onset[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type.extension.valueBoolean = true
