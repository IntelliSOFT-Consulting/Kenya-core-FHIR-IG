Profile: KECorePulseOximetryProfile
Parent: $ke-core-vital-signs
Id: ke-core-pulse-oximetry
Title: "Pulse Oximetry Profile"
Description: "To promote interoperability and adoption through common implementation, this profile sets minimum expectations for the Observation resource to record, search, and fetch pulse oximetry and inspired oxygen observations with a standard LOINC codes and UCUM units of measure. It is based on the KE Core Vital Signs Profile and identifies which *additional* core elements, extensions, vocabularies, and value sets **SHALL** be present and constrains the way the elements are used when using the profile. It provides the floor for standards development for specific use cases."
* ^experimental = false
* ^date = "2023-10-17"
* . ^short = "Pulse Oximetry Profile"
* . ^definition = "\\-"
* . ^comment = "\\-"
* . ^mustSupport = false
* code MS
* code ^short = "Oxygen Saturation by Pulse Oximetry"
* code ^comment = "The code (59408-5 Oxygen saturation in Arterial blood by Pulse oximetry) is included as an additional observation code to FHIR Core vital Oxygen Saturation code (2708-6 Oxygen saturation in Arterial blood)."
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    PulseOx 1..1 MS and
    O2Sat 1..1 MS
* code.coding[PulseOx] only Coding
* code.coding[PulseOx] = $loinc#59408-5
* code.coding[O2Sat] only Coding
* code.coding[O2Sat] = $loinc#2708-6
* valueQuantity MS
* valueQuantity ^short = "Oxygen Saturation by Pulse Oximetry Value"
* valueQuantity ^definition = "The oxygen saturation by pulse oximetry value is expressed as a percentage (0-100) of the total hemoglobin content of the blood."
* valueQuantity.value 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..1 MS
* valueQuantity.code only code
* valueQuantity.code = #% (exactly)
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^short = "Used when reporting flow rates or oxygen concentration."
* component ^definition = "Used when reporting flow rates or oxygen concentration."
* component contains
    FlowRate 0..1 MS and
    Concentration 0..1 MS
* component[FlowRate] ^short = "Inhaled oxygen flow rate"
* component[FlowRate].code only CodeableConcept
* component[FlowRate].code = $loinc#3151-8
* component[FlowRate].code MS
* component[FlowRate].valueQuantity MS
* component[FlowRate].valueQuantity ^short = "Vital Sign Component Value"
* component[FlowRate].valueQuantity.value 1..1 MS
* component[FlowRate].valueQuantity.unit 1..1 MS
* component[FlowRate].valueQuantity.system 1..1 MS
* component[FlowRate].valueQuantity.system only uri
* component[FlowRate].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[FlowRate].valueQuantity.code 1..1 MS
* component[FlowRate].valueQuantity.code only code
* component[FlowRate].valueQuantity.code = #L/min (exactly)
* component[Concentration] ^short = "Inhaled oxygen concentration"
* component[Concentration].code only CodeableConcept
* component[Concentration].code = $loinc#3150-0
* component[Concentration].code MS
* component[Concentration].valueQuantity MS
* component[Concentration].valueQuantity ^short = "Vital Sign Component Value"
* component[Concentration].valueQuantity.value 1..1 MS
* component[Concentration].valueQuantity.unit 1..1 MS
* component[Concentration].valueQuantity.system 1..1 MS
* component[Concentration].valueQuantity.system only uri
* component[Concentration].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[Concentration].valueQuantity.code 1..1 MS
* component[Concentration].valueQuantity.code only code
* component[Concentration].valueQuantity.code = #% (exactly)