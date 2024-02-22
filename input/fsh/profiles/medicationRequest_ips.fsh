Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $Medication-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $medication-snomed-absent-unknown-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/medication-snomed-absent-unknown-uv-ips
Alias: $medicine-route-of-administration = http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration

Profile: KenyamedicationRequestKPS
Parent: MedicationRequest
Id: KenyanMedicationRequest-ips
Title: "Medication Request (IPS)"
Description: "This profile represents the constraints applied to the MedicationRequest resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A record of a medication request is represented in the patient summary as an instance of a MedicationRequest resource constrained by this profile."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Medications"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "This profile constrains the representation of a medication request related to the patient, in the context of the international patient summary as specified by the IPS project of HL7 International."
* status ^comment = "In the scope of the IPS the entered-in-error concept is not allowed."
* medication[x] MS
* medication[x] ^definition = "Identifies the medication being administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code. To improve global interoperability is strongly encouraged that the reference to a medication resource is used, limiting the usage of the medicationCodeableConcept only to the cases in which no other information than a simple code is available."
* medication[x] ^binding.description = "SNOMED CT medications (Pharmaceutical / biologic product) or a code for absent/unknown medication"
* subject MS
* subject.reference 1.. MS
* dosageInstruction MS
* dosageInstruction.text MS
* dosageInstruction.timing MS
* dosageInstruction.route 
* dosageInstruction.route ^binding.description = "EDQM Standards Terms"
* dispenseRequest.validityPeriod.extension contains $data-absent-reason named data-absent-reason 0..1
* dispenseRequest.validityPeriod.extension[data-absent-reason] ^short = "validityPeriod absence reason"
* dispenseRequest.validityPeriod.extension[data-absent-reason] ^definition = "Provides a reason why the validityPeriod is missing."
