ValueSet: KenyaResultsRadiologyObservationUvKeps
Id: results-radiology-observations-uv-keps
Title: "Results Radiology Observation - KePS"
Description: """
 Value Set Definition: 
 LOINC {CLASS in {RAD}}



"""
* ^extension.valueCode = #pc
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^immutable = false
* ^experimental = false
* ^publisher = "HL7 International"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^contact.name = "HL7 International"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "+1 734 677 7777"
* ^contact.telecom[+].system = #fax
* ^contact.telecom[=].value = "+1 734 677 6622"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "info@hl7.org"
* ^status = #active
* ^identifier.system = "http://art-decor.org/ns/oids/vs"
* ^identifier.use = #official
* ^identifier.value = "2.16.840.1.113883.11.22.40"
* ^url = "http://example.org/ValueSet/kenya-results-radiology-observations-uv-keps"
* include codes from system LOINC where CLASS = "RAD"