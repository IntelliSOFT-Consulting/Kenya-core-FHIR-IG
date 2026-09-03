CodeSystem: ConditionCategoryCS
Title: "Condition Category Code System"
Description: "A code system that defines categories for conditions."
* ^url = "https://fhir.dha.go.ke/terminology/CodeSystem/ConditionCategoryCS"
* ^experimental = false
* ^caseSensitive = false

* #PROBLEM-LIST-ITEM "Problem List Item" "Problem List Item"
* #ENCOUNTER-DIAGNOSIS "Encounter Diagnosis" "Encounter Diagnosis"
* #HEALTH-CONCERN "Health Concern" "Health Concern"
 
CodeSystem: ConditionVerificationStatusCS
Title: "Condition Verification Status Code System"
Description: "A code system that defines verification status for conditions."
* ^url = "https://fhir.dha.go.ke/terminology/CodeSystem/ConditionVerificationStatusCS"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = false 

* #unconfirmed "Unconfirmed" "Unconfirmed"
* #provisional "Provisional" "Provisional"
* #differential "Differential" "Differential"
* #confirmed "Confirmed" "Confirmed"
* #refuted "Refuted" "Refuted"
* #entered-in-error "Entered in Error" "Entered in Error"
 
CodeSystem: ConditionClinicalStatusCS
Title: "Condition Clinical Status Code System"
Description: "A code system that defines clinical status for conditions."
* ^url = "https://fhir.dha.go.ke/terminology/CodeSystem/ConditionClinicalStatusCS"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = false 

* #active "Active" "Active"
* #recurrence "Recurrence" "Recurrence"
* #relapse "Relapse" "Relapse"
* #inactive "Inactive" "Inactive"
* #remission "Remission" "Remission"
* #resolved "Resolved" "Resolved"