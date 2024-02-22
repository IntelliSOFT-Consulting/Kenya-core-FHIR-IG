Alias: $loinc = http://loinc.org
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $current-smoking-status-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/current-smoking-status-uv-ips

Profile: KenyaObservationTobaccoUseKPS
Parent: Observation
Id: KenyanObservation-tobaccouse-ips
Title: "Observation - SH: tobacco use"
Description: "This profile constrains the Observation resource to represent Tobacco use assessment in a patient summary."
* ^url = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-tobaccouse-uv-ips"
* ^extension.valueCode = #pc
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* code 1..1 MS
// * code only $CodeableConcept-uv-ips
* code = $loinc#72166-2
* subject 1.. MS
// * subject only Reference($Patient-uv-ips)
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
// * valueCodeableConcept only $CodeableConcept-uv-ips
* valueCodeableConcept from $current-smoking-status-uv-ips (required)
* component ..0
* component ^mustSupport = false
