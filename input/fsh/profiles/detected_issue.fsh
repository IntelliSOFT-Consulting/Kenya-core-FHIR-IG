Profile: KenyaCoreDetectedIssue
Parent: DetectedIssue
Id: kenya-core-detectedissue
Title: "Kenya Core DetectedIssue Profile"
Description: "Kenya Core profile for recording a clinical issue detected during care provision, e.g. drug interaction, duplicate therapy, allergy conflict identified by clinical decision support."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.dha.go.ke/ig/core/StructureDefinition/kenya-core-detectedissue"

* insert IdentifierRequiredRule(identifier, 0..*)

* status 1..1 MS
* status ^short = "registered | preliminary | final | amended | ..."

* insert CodeableConceptRule(code, 0..1, MS)
* code ^short = "Type of issue, e.g. drug interaction, duplicate therapy"

* severity 0..1 MS
* severity ^short = "high | moderate | low"

* insert ReferenceRule(patient, KenyaCorePatient, 0..1)
* patient ^short = "Associated patient"

* identifiedDateTime 0..1 MS
* identifiedDateTime ^short = "When identified"

* author 0..1 MS
* author only Reference(KenyaCorePractitioner or KenyaCorePractitionerRole or KenyaCoreDevice)
* author ^short = "The provider or device that identified the issue"

* implicated 0..*
* implicated only Reference(KenyaCoreServiceRequest or Condition or Observation or MedicationStatement or MedicationRequest)
* implicated ^short = "Problem resource"

* evidence 0..* MS
* evidence.detail 0..* MS

* detail 0..1 MS
* detail ^short = "Description and context"

* reference 0..1 MS
* reference ^short = "Authority for issue"

* mitigation 0..* MS
* mitigation.action 1..1 MS
* mitigation.date 0..1 MS
* mitigation.author 0..1 MS
* mitigation.author only Reference(KenyaCorePractitioner or KenyaCorePractitionerRole)
* mitigation ^short = "Step taken to address"
