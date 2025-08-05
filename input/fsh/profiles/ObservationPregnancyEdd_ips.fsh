Profile: KenyaObservationPregnancyEdd
Parent: Observation
Id: kenya-observation-pregnancy-edd
Title: "Observation - Pregnancy: EDD"
Description: "This profile constrains the Observation resource to represent the pregnancy expected delivery date."

* code 1..1 MS

* subject 1..1 MS
* subject only Reference(KenyaPatient)
 
* effective[x] 0..1 MS
* effective[x] only dateTime

* value[x] 0..1 MS
* value[x] only dateTime

* bodySite 0..1

* method 0..1

* specimen 0..1

* device 0..1

* referenceRange 0..*
  * text 0..1

* component 0..*
  * code 1..1