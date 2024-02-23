Profile: ObservationResultsKeps
Parent: Observation
Id: Observation-results-uv-keps
Title: "Observation Results (KePS)"
Description: "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary.  This is the base profile from which the other results profiles are derived."
* ^experimental = false
* ^publisher = "HL7 International"
* ^purpose = "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary."
* ^extension.valueCode = #pc
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* status = #final (exactly)
* status ^extension.valueString = "default: final"
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
// * category only $CodeableConcept-uv-ips
// * code only $CodeableConcept-uv-ips
* code MS
* subject 1.. MS
// * subject only Reference($Patient-uv-ips or Group or Device or Location)
* subject.reference 1.. MS
* effective[x] 1.. MS
* effective[x] only dateTime or Period
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
// * performer only Reference($Practitioner-uv-ips or $PractitionerRole-uv-ips or $Organization-uv-ips or CareTeam or $Patient-uv-ips or RelatedPerson)
* value[x] MS
// * hasMember only Reference(ObservationResultsUvIps or QuestionnaireResponse or MolecularSequence)
// * component MS

