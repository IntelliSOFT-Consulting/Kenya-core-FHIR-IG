Profile: KenyaMediaObservation
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Media-observation-uv-ips
Id: kenya-media-observation
Title: "Media observation Profile"
Description: "This profile constrains the Media resource (which is a specialized observation)."

* status 1..1 MS
* status ^definition = "The status of the result value. Only final observations are eligible to be included in the international patient summary."

* subject 1..1 MS
* subject only Reference(KenyaPatient)

