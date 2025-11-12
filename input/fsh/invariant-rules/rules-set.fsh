Invariant : PatientName-1
Description :  "Patient.name.given, Patient.name.family or Patient.name.text SHALL be present"
Expression : "family.exists() or given.exists() or text.exists()"
Severity : #error