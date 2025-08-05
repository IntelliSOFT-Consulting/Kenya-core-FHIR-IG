Profile: KenyaObservationTobaccoUse
Parent: Observation
Id: kenyan-observation-tobaccouse
Title: "Observation - SH: tobacco use"
Description: "This profile constrains the Observation resource to represent Tobacco use assessment in a patient summary."

* code 1..1 MS
* code = $loinc#72166-2

* subject 1..1 MS
* subject only Reference(KenyaPatient)

* effective[x] 1..1 MS
* effective[x] only dateTime

* value[x] 0..1
* valueCodeableConcept from $current-smoking-status-uv-ips (required)

* component 0..* 
