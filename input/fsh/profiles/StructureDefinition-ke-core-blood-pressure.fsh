Alias: $loinc = http://loinc.org //TODO: 
Alias: $ke-core-vital-signs = http://example.org/StructureDefinition/ke-core-vital-signs

Profile: KECoreBloodPressureProfile
Parent: $ke-core-vital-signs
Id: ke-core-blood-pressure
Title: "Blood Pressure Profile"
Description: "To promote interoperability and adoption through common implementation, this profile sets minimum expectations for the Observation resource to record, search, and fetch diastolic and systolic blood pressure observations with standard LOINC codes and UCUM units of measure. It is based on the US Core Vital Signs Profile and identifies which *additional* core elements, extensions, vocabularies, and value sets **SHALL** be present and constrains the way the elements are used when using the profile. It provides the floor for standards development for specific use cases."
* ^experimental = false
* ^date = "2023-10-17"
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* . ^short = "US Core Blood Pressure Profile"
* . ^definition = "\\-"
* . ^comment = "\\-"
* code only CodeableConcept
* code = $loinc#85354-9
* code MS
* code ^short = "Blood Pressure"
* component ..* MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Component observations"
* component contains
    systolic 1..1 MS and
    diastolic 1..1 MS
* component[systolic] ^short = "Systolic Blood Pressure"
* component[systolic].code 1..1 MS
* component[systolic].code = $loinc#8480-6
* component[systolic].code ^short = "Systolic Blood Pressure Code"
* component[systolic].valueQuantity only Quantity
* component[systolic].valueQuantity MS
* component[systolic].valueQuantity ^short = "Vital Sign Component Value"
* component[systolic].valueQuantity.value 1..1 MS
* component[systolic].valueQuantity.value only decimal
* component[systolic].valueQuantity.unit 1..1 MS
* component[systolic].valueQuantity.unit only string
* component[systolic].valueQuantity.system 1..1 MS
* component[systolic].valueQuantity.system only uri
* component[systolic].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[systolic].valueQuantity.code 1..1 MS
* component[systolic].valueQuantity.code only code
* component[systolic].valueQuantity.code = #mm[Hg] (exactly)
* component[diastolic] ^short = "Diastolic Blood Pressure"
* component[diastolic].code 1..1 MS
* component[diastolic].code = $loinc#8462-4
* component[diastolic].code ^short = "Diastolic Blood Pressure Code"
* component[diastolic].valueQuantity only Quantity
* component[diastolic].valueQuantity MS
* component[diastolic].valueQuantity ^short = "Vital Sign Component Value"
* component[diastolic].valueQuantity.value 1..1 MS
* component[diastolic].valueQuantity.value only decimal
* component[diastolic].valueQuantity.unit 1..1 MS
* component[diastolic].valueQuantity.unit only string
* component[diastolic].valueQuantity.system 1..1 MS
* component[diastolic].valueQuantity.system only uri
* component[diastolic].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[diastolic].valueQuantity.code 1..1 MS
* component[diastolic].valueQuantity.code only code
* component[diastolic].valueQuantity.code = #mm[Hg] (exactly)