Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-ips = http://example.org/StructureDefinition/Kenya-patient-ips
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $edd-method-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/edd-method-uv-ips

Profile: KenyaObservationPregnancyEddKePS
Parent: Observation
Id: Kenya-Observation-pregnancy-edd-ips
Title: "Observation - Pregnancy: EDD"
Description: "This profile constrains the Observation resource to represent the pregnancy expected delivery date."
* ^extension.valueCode = #pc
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* code 1..1 MS
// * code only $CodeableConcept-uv-ips
* code from $edd-method-uv-ips (required)
* code ^binding.extension.valueString = "ObservationCode"
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* subject 1.. MS
* subject only Reference($Patient-ips)
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
* valueDateTime only dateTime
* valueDateTime MS
* bodySite ..0
* bodySite ^mustSupport = false
* method ..0
* method ^mustSupport = false
* specimen ..0
* specimen ^mustSupport = false
* device ..0
* device ^mustSupport = false
* referenceRange ..0
* referenceRange ^mustSupport = false
* component ..0
* component ^mustSupport = false