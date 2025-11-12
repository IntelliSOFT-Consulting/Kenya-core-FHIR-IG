Profile: KenyaPatient
Parent: Patient
Id: kenya-patient
Title: "Kenya Patient Profile"
Description: "This profile represents the constraints applied to the Patient resource 
based on the International Patient Summary (IPS) FHIR Implementation Guide. 
It describes the minimum expectations for the Patient resource when used 
in the IPS composition or as a referenced resource."

* identifier 0..* MS

* name 0..* MS
  * obeys PatientName-1
  * text 0..1 MS
  * family 0..1 MS
  * given 0..* MS

* telecom 0..* MS

* gender 0..1 MS

* birthDate 0..1 MS

* maritalStatus 0..1 MS

* address 0..* MS

* contact 0..* MS
  * relationship 0..* MS

* generalPractitioner 0..* MS
