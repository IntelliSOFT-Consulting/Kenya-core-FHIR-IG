Profile: KenyaAllergyIntolerance
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips
Id: kenya-allergyIntolerance
Title: "Allergy Intolerance Profile"
Description: """This profile represents the constraints applied to the AllergyIntolerance resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an allergy or intolerance is represented in the patient summary as an instance of an AllergyIntolerance resource constrained by this profile. It documents the relevant allergies or intolerances (conditions) for a patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy."""

* verificationStatus 0..1 MS

* type 0..1 MS

* code 1..1 MS

* patient 1..1 MS
* patient only Reference(KenyaPatient)

* onset[x] 0..1 MS
* onset[x] only dateTime or Age or Period

* reaction 0..* MS
  * manifestation 1..*
  * severity 0..1
