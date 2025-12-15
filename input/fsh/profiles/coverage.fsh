Profile: KenyaCoreCoverage
Parent: Coverage
Id: sha-coverage
Title: "KenyaCore Coverage"
Description: "The Coverage profile is intended to provide the identifiers and descriptors of a specific insurance plan for a specific individual - essentially the insurance card information. This may alternately provide the individual or organization, selfpay, which will pay for products and services rendered"
* ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/sha-coverage"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-12-15"

// ID - Required, follows SHA format
* id 1..1
* id ^short = "Logical id of this artifact"
* id ^definition = "The logical id of the resource"
* id obeys sha-coverage-id-format

// Identifier - Single official identifier with only use and value
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #closed
* identifier ^slicing.description = "Slice identifiers by use"
* identifier contains
    official 1..1

* identifier[official] ^short = "Official Coverage Identifier"
* identifier[official] ^definition = "Official unique identifier for the coverage"
* identifier[official].use = #official
* identifier[official].use ^fixedCode = #official
* identifier[official].value 1..1
* identifier[official].value ^short = "Coverage ID value"
* identifier[official].value obeys sha-coverage-id-value-format

// Status - Required and must be 'active'
* status 1..1 MS
* status ^short = "active | cancelled | draft | entered-in-error"
* status ^definition = "The status of the resource instance"
* status = #active
* status ^fixedCode = #active

// Payor - Optional but recommended
* payor 1..* MS
* payor ^short = "Issuer of the policy"
* payor ^definition = "Insurance plan, insurance company, or other payer"


// Beneficiary - Required reference to Patient with full URL
* beneficiary 1..1 MS
* beneficiary ^short = "Plan beneficiary"
* beneficiary ^definition = "Patient who is the beneficiary of this coverage"
* beneficiary.reference 1..1
* beneficiary.reference ^short = "Reference to Patient resource"
* beneficiary.reference obeys sha-patient-reference-format
* beneficiary.type = #Patient
* beneficiary.type ^fixedCode = #Patient
 


Instance: ExampleKenyaCoreCoverage
InstanceOf: KenyaCoreCoverage
Title: "Example SHA Coverage"
Description: "Example exactly matching the provided JSON"
Usage: #example
* id = "CR1569230130821-1-sha-coverage"
* identifier[official].use = #official
* identifier[official].value = "CR1569230130821-1-sha-coverage"
* status = #active
* beneficiary.reference = "https://fhir.sha.go.ke/fhir/Patient/CR1569230130821-1"
* beneficiary.type = #Patient
* payor.reference = "https://fhir.sha.go.ke/fhir/Organization/SHA-INSURANCE"
* payor.type = #Organization
  