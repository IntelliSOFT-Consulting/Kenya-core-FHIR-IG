Profile: KenyaObservationPregnancyStatus
Parent: Observation
Id: kenya-observation-pregnancy-status
Title: "Observation - Pregnancy: status Profile"
Description: "This profile constrains the Observation resource to represent the pregnancy status."

* code 1..1 MS
* code = $loinc#82810-3

* subject 1..1 MS
* subject only Reference(KenyaPatient)

* effective[x] 1..1 MS
* effective[x] only dateTime


* value[x] 0..1

* bodySite 0..1

* specimen 0..1

* device 0..1

* referenceRange 0..*
  * text 0..1

* component 0..*
  * code 1..1

* hasMember 0..* MS
  * ^short = "Expected Delivery Date"
  * ^definition = "A reference to the Expected Delivery Date Observation."