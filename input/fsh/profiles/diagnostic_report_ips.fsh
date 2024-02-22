Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $Practitioner-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Alias: $PractitionerRole-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips
Alias: $Organization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips
Alias: $Specimen-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Specimen-uv-ips
Alias: $Observation-results-laboratory-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips
Alias: $Observation-results-pathology-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-pathology-uv-ips
Alias: $Observation-results-radiology-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips
Alias: $Observation-results-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips

Profile: DiagnosticReportUvIps
Parent: DiagnosticReport
Id: DiagnosticReport-uv-ips
Title: "DiagnosticReport (IPS)"
Description: "This profile constrains the DiagnosticReport resource to represent diagnostic test and procedure reports in a patient summary."
* ^purpose = "This profile constrains the DiagnosticReport resource to use the specific IPS profiles for observations and coded data types."
* ^experimental = false
* ^publisher = "HL7 International"
* ^status = #active
* ^extension.valueCode = #pc
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* status = #final (exactly)
* category 1..1 MS
// * category only $CodeableConcept-uv-ips
// * code only $CodeableConcept-uv-ips
* code MS
* subject 1.. MS
// * subject only Reference($Patient-uv-ips or Group)
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
// * performer only Reference($Practitioner-uv-ips or $PractitionerRole-uv-ips or $Organization-uv-ips or CareTeam)
* performer MS
// * specimen only Reference($Specimen-uv-ips)
* specimen ^mustSupport = false
* result MS
* result ^slicing.discriminator.path = "resolve()"
* result ^slicing.discriminator.type = #profile
* result ^slicing.rules = #open
* result ^short = "Observation results included in the diagnostic report."
* result ^definition = "Observation results included in the diagnostic report."
* result contains observation-results 0..* MS
// * result[observation-results] only Reference($Observation-results-laboratory-uv-ips or $Observation-results-pathology-uv-ips or $Observation-results-radiology-uv-ips or $Observation-results-uv-ips)
