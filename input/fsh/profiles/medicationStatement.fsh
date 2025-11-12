Profile: KenyanMedicationStatement
Parent: MedicationStatement
Id: kenyan-medication-statement
Title: "Medication Statement Profile"
Description: "This profile represents the constraints applied to the MedicationStatement resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A record of a medication statement is represented in the patient summary as an instance of a MedicationStatement resource constrained by this profile."

* status 1..1 MS

* medication[x] 1..1 MS
  * ^definition = "Identifies the medication being administered or the reason for absent or unknown Medication. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code. To improve global interoperability is strongly encouraged that the reference to a medication resource is used, limiting the usage of the medicationCodeableConcept only to the cases in which no other information than a simple code is available."

* subject 1..1 MS
* subject only Reference(KenyaPatient)

* effective[x] 1..1 MS
* effective[x] only dateTime or Period

* dosage 0..* MS
  * text 0..1 MS
    * ^short = "Dosage Regimen"
  * timing 0..1 MS
    * ^short = "Date of Onset of Treatment"
  * route 0..1 MS
    * ^short = "Route of Administration"