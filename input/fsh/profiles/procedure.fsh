Profile: KenyaProcedure
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips
Id: kenya-procedure
Title: "Procedure Profile"
Description: "This profile represents the constraints applied to the Procedure resource by the IPS project, which specifies an entry of the History of Procedure for the international patient summary based on the FHIR standard R4."

* code 1..1 MS
* code from UnknownAbsentProcedureVS

* subject 1..1 MS
* subject only Reference(KenyaPatient)
* subject ^definition = "The person on which the procedure was performed."

* performed[x] 1..1 MS
* performed[x] only dateTime or Period

* performer 0..* MS
* performer.actor 1..1 MS
* performer.onBehalfOf 0..1 MS

* bodySite 1..1 MS