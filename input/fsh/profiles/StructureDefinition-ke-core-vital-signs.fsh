Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns
Alias: $ke-core-patient = http://example.org/StructureDefinition/Kenya-patient-ips //TODO: correct reference to patient profile
Alias: $ke-core-vital-signs-valueset = http://example.org/ValueSet/ke-core-vital-signs-valueset //TODO: Add this value set and correct reference

Profile: KECoreVitalSignsProfile
Parent: $vitalsigns
Id: ke-core-vital-signs
Title: "Vital Signs Profile"
Description: "To promote interoperability and adoption through common implementation, this profile is based on the base [FHIR Vital Signs Profile](http://hl7.org/fhir/R4/observation-vitalsigns.html) and defines *additional* constraints on the Observation resource to represent vital signs observations. It identifies which core elements, extensions, vocabularies, and value sets **SHALL** be present in the resource and constrains the way the elements are used when using this profile. It provides the floor for standards development for specific use cases.  This profiles that are derived from this profile are listed below."
* ^version = "3.2.0"
* ^status = #active
* ^experimental = false
* status MS
* category ..* MS
* category only CodeableConcept
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category[VSCat] 1..1 MS
* category[VSCat] only CodeableConcept
* category[VSCat].coding 1..* MS
* category[VSCat].coding only Coding
* category[VSCat].coding.system 1..1 MS
* category[VSCat].coding.system only uri
* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category[VSCat].coding.system ^short = "Identity of the terminology system"
* category[VSCat].coding.code 1..1 MS
* category[VSCat].coding.code only code
* category[VSCat].coding.code = #vital-signs (exactly)
* category[VSCat].coding.code ^short = "Symbol in syntax defined by the system"
* code MS
* code from $ke-core-vital-signs-valueset (extensible)
* code ^short = "Coded Responses from C-CDA Vital Sign Results"
* code ^binding.description = "The vital sign codes from the base FHIR and US Core Vital Signs."
* subject only Reference($ke-core-patient)
* subject MS
* effective[x] only dateTime or Period
* effective[x] MS
* effective[x] ^short = "Often just a dateTime for Vital Signs"
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true
* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] MS
* value[x] from http://hl7.org/fhir/ValueSet/ucum-vitals-common|4.0.1 (extensible)
* value[x] ^short = "Vital Signs Value"
* value[x] ^definition = "Vital Signs value are typically recorded using the Quantity data type."
* value[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type.extension.valueBoolean = true
* value[x] ^binding.description = "Common UCUM units for recording Vital Signs."
* dataAbsentReason MS
* component MS
* component ^short = "Component observations"
* component ^definition = "Used when reporting component observation such as systolic and diastolic blood pressure."
* component.code MS
* component.code from $ke-core-vital-signs-valueset (extensible)
* component.code ^binding.description = "The vital sign codes from the base FHIR and KE Core Vital Signs."
// * component.value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
// * component.value[x] MS
// * component.value[x] from http://hl7.org/fhir/ValueSet/ucum-vitals-common|4.0.1 (extensible)
// * component.value[x] ^short = "Vital Sign Component Value"
// * component.value[x] ^definition = "Vital Signs value are typically recorded using the Quantity data type. For supporting observations such as cuff size could use other datatypes such as CodeableConcept."
// * component.value[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
// * component.value[x] ^type.extension.valueBoolean = true
// * component.value[x] ^binding.description = "Common UCUM units for recording Vital Signs."
* component.dataAbsentReason MS