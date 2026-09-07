CodeSystem: ConditionCategoryCS
Id: condition-category-cs
Title: "Condition Category Code System"
Description: "A code system that defines categories for conditions."
* ^url = "https://fhir.dha.go.ke/terminology/CodeSystem/condition-category-cs"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true

* #PROBLEM-LIST-ITEM "Problem List Item" "Problem List Item"
* #ENCOUNTER-DIAGNOSIS "Encounter Diagnosis" "Encounter Diagnosis"
* #HEALTH-CONCERN "Health Concern" "Health Concern"
 
CodeSystem: ConditionVerificationStatusCS
Id: condition-verification-status-cs
Title: "Condition Verification Status Code System"
Description: "A code system that defines verification status for conditions."
* ^url = "https://fhir.dha.go.ke/terminology/CodeSystem/condition-verification-status-cs"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true

* #UNCONFIRMED "Unconfirmed" "Unconfirmed"
* #DIFFERENTIAL "Differential" "Differential"
* #CONFIRMED "Confirmed" "Confirmed"
* #REFUTED "Refuted" "Refuted"
* #ENTERED-IN-ERROR "Entered-in-Error" "Entered-in-Error"
 
CodeSystem: ConditionClinicalStatusCS
Id: condition-clinical-status-cs
Title: "Condition Clinical Status Code System"
Description: "A code system that defines clinical status for conditions."
* ^url = "https://fhir.dha.go.ke/terminology/CodeSystem/condition-clinical-status-cs"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true

* #ACTIVE "Active" "Active"
* #RESOLVED "Resolved" "Resolved"
* #INACTIVE "Inactive" "Inactive"