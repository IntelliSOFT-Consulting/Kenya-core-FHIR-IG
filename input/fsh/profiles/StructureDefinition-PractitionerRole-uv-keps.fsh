Profile: PractitionerRoleUvKeps
Parent: PractitionerRole
Id: PractitionerRole-uv-keps
Title: "PractitionerRole (KePS)"
Description: "This profile constrains the PractitionerRole resource to represent a practitioner acting as observer for observation results for a specified organization."
* ^extension.valueCode = #pc
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^status = #active
* ^url = "http://example.org/StructureDefinition/PractitionerRole-uv-keps"
* practitioner only Reference($Practitioner-uv-keps)
* organization only Reference($Organization-uv-keps)
* organization MS
* code only CodeableConcept
* code from $healthcare-professional-roles-uv-keps (preferred)
* code ^definition = "Roles which this practitioner is authorized to perform for the organization."
* code ^binding.description = "Healthcare professional role codes from International Standard Classification of Occupations (ISCO)."
* code ^binding.extension.valueString = "HealthcareProfessionalRoles"
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"