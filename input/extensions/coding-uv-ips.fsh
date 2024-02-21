Profile: CodingIPS
Parent: Coding
Id: Coding-uv-ips
Title: "Coding with translations"
Description: """This profile extends the capabilities of the coding data type to support multi-language designations (display).
It relies on the Translation extension."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #pc
* system MS
* code MS
* display MS
* display.extension ^slicing.discriminator.type = #value
* display.extension ^slicing.discriminator.path = "url"
* display.extension ^slicing.rules = #open
