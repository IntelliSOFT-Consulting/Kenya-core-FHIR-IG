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

Invariant: sha-coverage-id-format
Description: "Coverage ID should match pattern: CR[timestamp]-[sequence]-sha-coverage"
Expression: "matches('^CR\\d{13}-\\d+-sha-coverage$')"
Severity: #warning

Invariant: sha-coverage-id-value-format
Description: "Coverage identifier value should match pattern: CR[timestamp]-[sequence]-sha-coverage"
Expression: "matches('^CR\\d{13}-\\d+-sha-coverage$')"
Severity: #warning

Invariant: sha-patient-reference-format
Description: "Patient reference should be full URL: https://fhir.sha.go.ke/fhir/Patient/[ID]"
Expression: "matches('^https://fhir\\.sha\\.go\\.ke/fhir/Patient/[A-Za-z0-9-]+$')"
Severity: #warning


Invariant: sha-patient-min-identifier
Description: "Must have at least one identifier (SHA number, phone number, household number, or national ID)"
Expression: "identifier.where(system='https://fhir.sha.go.ke/fhir/identifier/shanumber' or system='https://fhir.sha.go.ke/fhir/identifier/phonenumber' or system='https://fhir.sha.go.ke/fhir/identifier/householdnumber' or system='https://fhir.sha.go.ke/fhir/identifier/nationalid').exists()"
Severity: #error


Invariant: sha-patient-id-format
Description: "Patient ID should match SHA format: CR[timestamp]-[sequence]"
Expression: "matches('^CR\\d{13}-\\d+$')"
Severity: #warning

Invariant: sha-number-format
Description: "SHA Number should match format: CR[timestamp]-[sequence]"
Expression: "matches('^CR\\d{13}-\\d+$')"
Severity: #warning

Invariant: kenya-phone-format
Description: "Phone number should be valid Kenya format"
Expression: "matches('^\\\\+254\\d{9}$')"
Severity: #warning

Invariant: household-number-format
Description: "Household number should match format: HH[timestamp]-[sequence]"
Expression: "matches('^HH\\d{13}-\\d+$')"
Severity: #warning

Invariant: national-id-format
Description: "National ID should be 8 digits"
Expression: "matches('^\\d{8}$')"
Severity: #warning

Invariant: valid-birth-date
Description: "Birth date should be valid and not in the future"
Expression: "$this <= today()"
Severity: #error


Invariant: sha-claim-id-format
Description: "Claim ID should be a valid UUID"
Expression: "matches('^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$')"
Severity: #warning

 

Invariant: sha-organization-reference-format
Description: "Organization reference should follow SHA format"
Expression: "matches('^https://fhir\\.sha\\.go\\.ke/fhir/Organization/[A-Za-z0-9-]+$')"
Severity: #warning

Invariant: sha-practitioner-reference-format
Description: "Practitioner reference should follow SHA format"
Expression: "matches('^https://fhir\\.sha\\.go\\.ke/fhir/Practitioner/[A-Za-z0-9-]+$')"
Severity: #warning

Invariant: sha-coverage-reference-format
Description: "Coverage reference should follow SHA format"
Expression: "matches('^https://fhir\\.sha\\.go\\.ke/fhir/Coverage/[A-Za-z0-9-]+$')"
Severity: #warning

Invariant: valid-claim-created-date
Description: "Claim creation date should be valid"
Expression: "$this <= today()"
Severity: #error

Invariant: valid-attachment-url
Description: "Attachment URL should be valid"
Expression: "matches('^https://api-edi\\.provider\\.sha\\.go\\.ke/media/edi/.+$')"
Severity: #warning