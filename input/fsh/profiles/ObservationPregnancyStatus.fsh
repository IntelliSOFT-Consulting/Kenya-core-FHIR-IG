Alias: $loinc = http://loinc.org
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-ips = http://example.org/StructureDefinition/Kenya-patient-ips
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $Observation-pregnancy-edd-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips
Alias: $pregnancy-status-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/pregnancy-status-uv-ips

Profile: KenyaObservationPregnancyStatusKePS
Parent: Observation
Id: Kenya-Observation-pregnancy-status-ips
Title: "Observation - Pregnancy: status"
Description: "This profile constrains the Observation resource to represent the pregnancy status."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #pc
* code 1..1 MS
// * code only $CodeableConcept-uv-ips
* code = $loinc#82810-3
* subject 1.. MS
* subject only Reference($Patient-ips)
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
// * valueCodeableConcept only $CodeableConcept-uv-ips
* valueCodeableConcept MS
// * valueCodeableConcept from $pregnancy-status-uv-ips (required)
* bodySite ..0
* bodySite ^mustSupport = false
* specimen ..0
* specimen ^mustSupport = false
* device ..0
* device ^mustSupport = false
* referenceRange ..0
* referenceRange ^mustSupport = false
// * hasMember only Reference($Observation-pregnancy-edd-uv-ips)
* hasMember MS
* hasMember ^short = "Expected Delivery Date"
* hasMember ^definition = "A reference to the Expected Delivery Date Observation."
* hasMember.reference 1.. MS
* component ..0
* component ^mustSupport = false