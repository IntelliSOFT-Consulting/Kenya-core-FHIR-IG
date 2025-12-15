// Extension: KenyaCountiesExtension
// Id:   kenya-counties-extension
// Title:  "Extension for Kenya counties"
// Description: "A code representing kenya counties"
// Context: Claim
// // url, status, purpose, and other metadata could be defined here using caret syntax (omitted)
// * value[x] only code
// * value[x] from http://example.org/ValueSet/kenyaCountiesVS (required)



// Extension: ProviderAuthTokenExtension
// Id: provider-auth-token
// Title: "Provider Authorization Token"
// Description: "Authorization token for the provider"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/provider-auth-token"
// * value[x] only string

// Extension: PreauthTokenExtension
// Id: preauth-token
// Title: "Pre-authorization Token"
// Description: "Token for pre-authorization"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/preauth-token"
// * value[x] only string

// Extension: HasCoinsuranceExtension
// Id: has-coinsurance
// Title: "Has Coinsurance"
// Description: "Indicates if coinsurance applies"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/has-coinsurance"
// * value[x] only string

// Extension: ChiefComplaintExtension
// Id: chief-complaint
// Title: "Chief Complaint"
// Description: "Patient's chief complaint"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/chief-complaint"
// * value[x] only string

// Extension: HPIExtension
// Id: hpi
// Title: "History of Present Illness"
// Description: "History of present illness"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/hpi"
// * value[x] only string

// Extension: VitalSignsExtension
// Id: vital-signs
// Title: "Vital Signs"
// Description: "Patient's vital signs"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/vital-signs"
// * value[x] only string

// Extension: InvestigationsExtension
// Id: investigations
// Title: "Investigations"
// Description: "Medical investigations performed"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/investigations"
// * value[x] only string

// Extension: PhysicalExaminationExtension
// Id: physical-examination
// Title: "Physical Examination"
// Description: "Physical examination findings"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/physical-examination"
// * value[x] only string

// Extension: SessionExpectedDateExtension
// Id: session-expected-date
// Title: "Session Expected Date"
// Description: "Expected date for medical session"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/session-expected-date"
// * value[x] only string

// Extension: AnaesthesiaTypeExtension
// Id: anaesthesia-type
// Title: "Anaesthesia Type"
// Description: "Type of anaesthesia used"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/anaesthesia-type"
// * value[x] only string

// Extension: RawPreauthSourceDataExtension
// Id: raw-preauth-source-data
// Title: "Raw Pre-authorization Source Data"
// Description: "Raw JSON data from pre-authorization system"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/raw-preauth-source-data"
// * value[x] only string

// Extension: SHACoverageExtension
// Id: sha-coverage-extension
// Title: "SHA Coverage Extension"
// Description: "Extension for SHA coverage reference"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/Coverage/sha-coverage"
// * value[x] only Reference(KenyaCoreCoverage)

// Extension: AttachmentTypeExtension
// Id: attachment-type-extension
// Title: "Attachment Type Extension"
// Description: "Type of attachment"
// * ^url = "https://fhir.sha.go.ke/fhir/CodeSystem/attachment-type"
// * value[x] only CodeableConcept