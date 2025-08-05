Profile: KenyaImmunization
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips
Id: kenya-immunization
Title: "Immunization Profile"
Description: """This profile represents the constraints applied to the Immunization resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an immunization is represented in the patient summary as an instance of an Immunization resource constrained by this profile.
It describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a patient, a clinician or another party."""

* status MS

* vaccineCode 1..1 MS
* vaccineCode from UnknownAbsentVaccineCodeVS

* patient 1..1 MS
* patient only Reference(KenyaPatient)

* occurrence[x] 1..1 MS
* occurrence[x] only dateTime

* site 0..1 MS

* route 0..1 MS

* protocolApplied 0..* MS
* protocolApplied.targetDisease 1..1 MS
  * ^short = "Vaccine preventable disease being targeted"
  * ^definition = "The particular disease against which the patient has been immunized"