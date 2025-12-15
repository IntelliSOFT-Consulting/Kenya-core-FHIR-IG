Invariant : PatientName-1
Description :  "Patient.name.given, Patient.name.family or Patient.name.text SHALL be present"
Expression : "family.exists() or given.exists() or text.exists()"
Severity : #error

Invariant: ken-prac-min-identifier
Description: "Must have at least one identifier (registration number, slade code, registry ID, or national ID)"
Expression: "identifier.where(system='https://fhir.sha.go.ke/fhir/Practitioner/PractitionerRegistrationNumber' or system='https://fhir.sha.go.ke/fhir/Practitioner/SladeCode' or system='https://fhir.sha.go.ke/fhir/Practitioner/PractitionerRegistryID' or system='https://fhir.sha.go.ke/fhir/Practitioner/National_ID').exists()"
Severity: #error
  
Invariant: ken-prac-min-contact
Description: "Must have at least one email or phone contact"
Expression: "telecom.where(system='email').exists() or telecom.where(system='phone').exists()"
Severity: #error

Invariant: ken-prac-contact-format
Description: "Contact values must not be empty"
Expression: "telecom.all(value.exists())"
Severity: #error

Invariant: ken-prac-email-format
Description: "Email must be valid format if provided"
Expression: "matches('^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$')"
Severity: #warning

Invariant: ken-prac-phone-format
Description: "Phone must follow Kenya format (+254XXXXXXXXX)"
Expression: "matches('^\\\\+254[17]\\\\d{8}$')"
Severity: #warning



Invariant: provider-org-min-identifier
Description: "Must have at least one identifier"
Expression: "identifier.exists()"
Severity: #error

Invariant: provider-org-fr-code-format
Description: "FR Code must match expected format"
Expression: "value.matches('^FID-\\d{2}-\\d{6}-\\d$')"
Severity: #warning

Invariant: provider-org-type-constraint
Description: "Organization must be of type provider"
Expression: "coding.where(system='https://fhir.sha.go.ke/fhir/terminology/CodeSystem/organization-type' and code='prov').exists()"
Severity: #error