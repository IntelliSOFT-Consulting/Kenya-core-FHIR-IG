Profile: KenyamedicationRequest
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips
Id: kenyan-medication-request
Title: "Medication Request Profile"
Description: "This profile represents the constraints applied to the MedicationRequest resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A record of a medication request is represented in the patient summary as an instance of a MedicationRequest resource constrained by this profile."
* status 1..1 MS

* medication[x] 1..1 MS
  * ^definition = "Identifies the medication being administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code. To improve global interoperability is strongly encouraged that the reference to a medication resource is used, limiting the usage of the medicationCodeableConcept only to the cases in which no other information than a simple code is available."


* subject 1..1 MS
* subject only Reference(KenyaPatient)

* dosageInstruction 0..* MS
  * text 0..1 MS
    * ^short = "Dosage Regimen"
    * ^definition = "Number of units per intake and frequency of intake over a specified duration. Example: 1 tablet every 24h for 10 days."

  * timing 0..1 MS
    * ^short = "Date of onset of treatment"
    * ^definition = "Date when patient needs to start taking the medicine prescribed."

  * route 0..1 MS
    * ^short = "Route of Administration"
    * ^definition = "Path by which the pharmaceutical product is taken into or makes contact with the body."

* dispenseRequest.validityPeriod 0..1 MS

