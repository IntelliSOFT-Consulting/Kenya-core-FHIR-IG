CodeSystem: ConditionCategoryCS
Title: "Condition Category Code System"
Description: "A code system that defines categories for conditions."
* ^status = #active
* ^content = #complete
 
* #ENCOUNTER-DIAGNOSIS "Encounter Diagnosis" "Encounter Diagnosis"
* #PROBLEM-LIST-ITEM "Problem List Item" "Problem List Item"
 
CodeSystem: ConditionVerificationStatusCS
Title: "Condition Verification Status Code System"
Description: "A code system that defines verification status for conditions."
* ^status = #active
* ^content = #complete 
* #UNCONFIRMED "Unconfirmed" "Unconfirmed"
* #DIFFERENTIAL "Differential" "Differential"
* #CONFIRMED "Confirmed" "Confirmed"
* #REFUTED "Refuted" "Refuted"
* #ENTERED-IN-ERROR "Entered-in-Error" "Entered-in-Error"
 
CodeSystem: ConditionClinicalStatusCS
Title: "Condition Clinical Status Code System"
Description: "A code system that defines clinical status for conditions."
* ^status = #active
* ^content = #complete 
* #ACTIVE "Active" "Active"
* #RESOLVED "Resolved" "Resolved"
* #INACTIVE "Inactive" "Inactive"