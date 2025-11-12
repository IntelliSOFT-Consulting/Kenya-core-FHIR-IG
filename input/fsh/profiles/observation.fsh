Profile: KenyaCoreObservation
Parent: Observation
Id: kenya-core-observation
Title: "Kenya Core Observation"
Description: "Observation profile for vitals and lab results."


* identifier 0..* MS
* status 1..1 MS
* category 0..* MS
* code 1..1 MS
* subject 0..1 MS
* effective[x] 0..1 MS
* value[x] 0..1 MS
* performer 0..* MS