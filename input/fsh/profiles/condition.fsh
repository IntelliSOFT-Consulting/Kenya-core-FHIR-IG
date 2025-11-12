Profile: KenyaCondition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Id: kenya-condition
Title: "Condition Profile"
Description: "This profile represents the constraints applied to the Condition resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of a problem is represented in the patient summary as an instance of the Condition resource constrained by this profile."

* clinicalStatus 1..1 MS

* verificationStatus 0..1 MS

* category 1..1 MS
* category from ProblemTypeVS

* severity 0..1 MS
* severity from ConditionSeverityVS

* code 1..1 MS
* code from UnknownAbsentConditionVS

* bodySite 0..1 MS

* subject 1..1 MS
* subject only Reference(KenyaPatient)

* onset[x] 0..1 MS
* onset[x] only dateTime or Age or Period or Range or string
