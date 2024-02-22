Alias: $loinc = http://loinc.org
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $Quantity-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Quantity-uv-ips

Profile: KenyaObservationAlcoholUseKPS
Parent: Observation
Id: KenyanObservation-alcoholuse-ips
Title: "Observation - SH: alcohol use"
Description: "This profile constrains the Observation resource to represent alcohol use assessment in a patient summary."
* ^url = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-alcoholuse-uv-ips"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #pc
* code 1..1 MS
// * code only $CodeableConcept-uv-ips
* code = $loinc#74013-4
* subject 1.. MS
// * subject only Reference($Patient-uv-ips)
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
// * valueQuantity only $Quantity-uv-ips
* component ..0
* component ^mustSupport = false
