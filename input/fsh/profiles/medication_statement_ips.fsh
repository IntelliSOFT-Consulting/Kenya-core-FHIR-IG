Alias: $Medication-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $medication-snomed-absent-unknown-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/medication-snomed-absent-unknown-uv-ips
Alias: $medicine-route-of-administration = http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration

Profile: MedicationStatementIPS
Parent: MedicationStatement
Id: MedicationStatement-uv-ips
Title: "Medication Statement (IPS)"
Description: "This profile represents the constraints applied to the MedicationStatement resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A record of a medication statement is represented in the patient summary as an instance of a MedicationStatement resource constrained by this profile."
* ^publisher = "HL7 International"
* ^purpose = "This profile constrains the representation of a medication statement related to the patient, in the context of the international patient summary as specified by the IPS project of HL7 International."
* ^status = #active
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #pc
* status ^comment = "In the scope of the IPS the entered-in-error concept is not allowed."
* medication[x] MS
* medication[x] ^definition = "Identifies the medication being administered or the reason for absent or unknown Medication. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code. To improve global interoperability is strongly encouraged that the reference to a medication resource is used, limiting the usage of the medicationCodeableConcept only to the cases in which no other information than a simple code is available."
* medication[x] ^binding.description = "SNOMED CT medications (Pharmaceutical / biologic product) or a code for absent/unknown medication"
* subject MS
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
* dosage MS
* dosage.text MS
* dosage.timing MS
* dosage.route 
* dosage.route ^binding.description = "EDQM Standards Terms"