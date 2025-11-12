Profile: KenyaPatient
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Id: kenya-patient
Title: "Patient Profile"
Description: "This profile represents the constraints applied to the Patient resource by the International Patient Summary (IPS) FHIR Implementation Guide and describes the minimum expectations for the Patient resource when used in the IPS composition or in one of the referred resources."
* identifier 1..* MS

* obeys PatientName-1
* name.text 0..1 MS
* name.family 0..1 MS
* name.given 1..* MS

* telecom 1..* MS

* gender 1..1 MS

* birthDate 1.. MS

* maritalStatus 1..1 MS

* address 0..1 MS

* contact.relationship 1..1 MS

* generalPractitioner 1..1 MS