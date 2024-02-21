Alias: $Patient-ips = http://example.org/StructureDefinition/Kenya-patient-ips
Alias: $medical-devices-snomed-absent-unknown-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/medical-devices-snomed-absent-unknown-uv-ips

Profile: KenyaDeviceUvIps
Parent: Device
Id: KenyaDevice-ips
Title: "Device (IPS)"
Description: "This profile represents the constraints applied to the Device resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A device used by or implanted on the patient is described in the patient summary as an instance of a Device resource constrained by this profile."
* ^purpose = "This profile constrains the representation of a medical device used by or impanted on the patient, in the context of the international patient summary as specified by the IPS project of HL7 International."
* ^publisher = "HL7 International"
* ^status = #active
* ^extension.valueCode = #pc
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^experimental = false
* . ^comment = "This profile applies the rules defined by HL7 International for representing the UDI in the FHIR standard, by the document \"Medical Devices and Unique Device Identification (UDI) Pattern, Release 1\""
* type 0..1 MS
* type from $medical-devices-snomed-absent-unknown-uv-ips (preferred)
* type ^short = "Type of device.\r\nPreferably valued by using SNOMED CT.\r\nThe absence of information, or of devices relevant for purpose of this IPS, shall be explicitly stated by using the codes included in the absent-or-unknown-devices-uv-ips value set."
* type ^binding.description = "The type of device or a code for absent/unknown device"
* type ^binding.extension[0].extension[0].valueCode = #candidate
* type ^binding.extension[=].extension[=].url = "purpose"
* type ^binding.extension[=].extension[+].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/medical-devices-snomed-ct-ips-free-set"
* type ^binding.extension[=].extension[=].url = "valueSet"
* type ^binding.extension[=].extension[+].valueMarkdown = "Codes for medical devices in SNOMED IPS Free Set"
* type ^binding.extension[=].extension[=].url = "documentation"
* type ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* type ^binding.extension[+].extension[0].valueCode = #candidate
* type ^binding.extension[=].extension[=].url = "purpose"
* type ^binding.extension[=].extension[+].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-devices-uv-ips"
* type ^binding.extension[=].extension[=].url = "valueSet"
* type ^binding.extension[=].extension[+].valueMarkdown = "Codes for absent or unknown medical devices"
* type ^binding.extension[=].extension[=].url = "documentation"
* type ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* patient 1.. MS
* patient only Reference($Patient-ips)
* patient.reference 1.. MS