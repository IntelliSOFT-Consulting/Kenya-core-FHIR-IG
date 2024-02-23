Profile: KenyaSimpleQuantityKePS
Parent: SimpleQuantity
Id: SimpleQuantity-uv-keps
Title: "SimpleQuantity (KePS)"
Description: "Data type profile SimpleQuantity constrained to use UCUM as the code system for units"
* ^extension.valueCode = #pc
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^purpose = "This profile of the SimpleQuantity data type profile imposes the usage of the UCUM code system for units"
* ^publisher = "HL7 International"
* ^url = "http://example.org/StructureDefinition/SimpleQuantity-uv-keps"
* . ^short = "A measured amount using UCUM"
* . ^definition = "A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that are not precisely quantified, including amounts involving arbitrary units and floating currencies.\r\nThis profile imposes that the code system for units be UCUM."
* system 1.. MS
* system = "http://unitsofmeasure.org" (exactly)
* system ^short = "UCUM system for units"
* code 1.. MS