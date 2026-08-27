// ============================================================
// Shared example actors used across the profile examples below.
// ============================================================

Instance: ExampleKenyaCoreOrganization
InstanceOf: KenyaCoreOrganization
Title: "Example Organization - Kenyatta National Hospital"
Description: "Example provider organization used as the actor in other Kenya Core examples."
Usage: #example
* id = "example-organization-knh"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-organization"
* identifier[providerLicense].use = #official
* identifier[providerLicense].system = $provider-license
* identifier[providerLicense].value = "PL-2024-00123"
* name = "Kenyatta National Hospital"
* active = true
* type = OrganizationTypeCS#HOSPITAL "Hospital"
* telecom.system = #phone
* telecom.value = "+254202726300"
* address.district = "Nairobi"
* address.city = "Nairobi"

Instance: ExampleKenyaCorePractitioner
InstanceOf: KenyaCorePractitioner
Title: "Example Practitioner - Dr Sarah Njoroge"
Description: "Example practitioner used as requester/author/agent in other Kenya Core examples."
Usage: #example
* id = "example-practitioner-njoroge"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/practitioner-sha-ke"
* identifier[registrationNumber].use = #official
* identifier[registrationNumber].system = "https://fhir.sha.go.ke/fhir/Practitioner/PractitionerRegistrationNumber"
* identifier[registrationNumber].value = "KMPDC-2018-04521"
* identifier[registryID].use = #official
* identifier[registryID].system = "https://fhir.sha.go.ke/fhir/Practitioner/PractitionerRegistryID"
* identifier[registryID].value = "HWR-2015-003391"
* identifier[nationalID].use = #official
* identifier[nationalID].system = "https://fhir.sha.go.ke/fhir/Practitioner/National_ID"
* identifier[nationalID].value = "23456789"
* name.text = "Dr. Sarah Njoroge"
* telecom[email].system = #email
* telecom[email].value = "sarah.njoroge@knh.or.ke"
* telecom[phone].system = #phone
* telecom[phone].value = "+254722123456"
* gender = #female
* active = true

Instance: ExampleKenyaCorePatient
InstanceOf: KenyaCorePatient
Title: "Example Patient - Amina Hassan"
Description: "Example patient used as subject in other Kenya Core examples."
Usage: #example
* id = "CR2026080100001-1"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-patient"
* identifier[phoneNumber].use = #official
* identifier[phoneNumber].system = "https://fhir.sha.go.ke/fhir/identifier/phonenumber"
* identifier[phoneNumber].value = "+254712345678"
* name.family = "Hassan"
* name.given = "Amina"
* name.text = "Amina Hassan"
* gender = #female
* birthDate = "1990-05-14"

Instance: ExampleKenyaCoreEncounter
InstanceOf: KenyaCoreEncounter
Title: "Example Encounter - Amina Hassan Outpatient Visit"
Description: "Example outpatient encounter used as context for other Kenya Core examples."
Usage: #example
* id = "example-encounter-amina-outpatient"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-encounter"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(ExampleKenyaCorePatient)
* serviceProvider = Reference(ExampleKenyaCoreOrganization)
* period.start = "2026-08-01T08:30:00+03:00"
* period.end = "2026-08-01T09:15:00+03:00"


// ============================================================
// KenyaCoreServiceRequest example
// ============================================================

Instance: ExampleKenyaCoreServiceRequest
InstanceOf: KenyaCoreServiceRequest
Title: "Example ServiceRequest - Full Haemogram Lab Order"
Description: "Example lab order requesting a full haemogram for Amina Hassan."
Usage: #example
* id = "example-servicerequest-amina-fhg"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-servicerequest"
* identifier.use = #official
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #PLAC
* identifier.system = "https://fhir.sha.go.ke/fhir/identifier/servicerequest"
* identifier.value = "SR-2026-OPD-00456"
* status = #active
* intent = #order
* category.coding.system = "http://snomed.info/sct"
* category.coding.code = #108252007
* category.coding.display = "Laboratory procedure"
* priority = #routine
* code.coding.system = "http://loinc.org"
* code.coding.code = #58410-2
* code.coding.display = "CBC panel - Blood by Automated count"
* code.text = "Full haemogram"
* subject = Reference(ExampleKenyaCorePatient)
* encounter = Reference(ExampleKenyaCoreEncounter)
* occurrenceDateTime = "2026-08-01T09:00:00+03:00"
* authoredOn = "2026-08-01T08:45:00+03:00"
* requester = Reference(ExampleKenyaCorePractitioner)
* performer = Reference(ExampleKenyaCoreOrganization)
* reasonCode.coding.system = "http://id.who.int/icd/release/11/mms"
* reasonCode.coding.code = #MG30
* reasonCode.coding.display = "Anaemia, unspecified"
* note.text = "Patient presenting with fatigue; rule out anaemia."


// ============================================================
// KenyaCoreCommunication example
// ============================================================

Instance: ExampleKenyaCoreCommunication
InstanceOf: KenyaCoreCommunication
Title: "Example Communication - Lab Result Notification Call"
Description: "Example record of a phone call notifying Amina Hassan that her lab results are ready."
Usage: #example
* id = "example-communication-amina-results-call"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-communication"
* identifier.use = #official
* identifier.type.text = "Communication Identifier"
* identifier.system = "https://fhir.sha.go.ke/fhir/identifier/communication"
* identifier.value = "COMM-2026-00981"
* status = #completed
* category.coding.system = "http://terminology.hl7.org/CodeSystem/communication-category"
* category.coding.code = #notification
* category.coding.display = "Notification"
* subject = Reference(ExampleKenyaCorePatient)
* encounter = Reference(ExampleKenyaCoreEncounter)
* basedOn = Reference(ExampleKenyaCoreServiceRequest)
* sent = "2026-08-03T10:05:00+03:00"
* received = "2026-08-03T10:06:00+03:00"
* sender = Reference(ExampleKenyaCorePractitioner)
* recipient = Reference(ExampleKenyaCorePatient)
* reasonCode.coding.system = "http://snomed.info/sct"
* reasonCode.coding.code = #386472008
* reasonCode.coding.display = "Telephone consultation"
* payload.contentString = "Your full haemogram results are ready. Please contact the clinic to discuss."


// ============================================================
// KenyaCoreDevice example
// ============================================================

Instance: ExampleKenyaCoreDevice
InstanceOf: KenyaCoreDevice
Title: "Example Device - Infusion Pump"
Description: "Example infusion pump device owned by Kenyatta National Hospital."
Usage: #example
* id = "example-device-infusion-pump-01"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-device"
* identifier.use = #official
* identifier.type.text = "Device Asset Identifier"
* identifier.system = "https://fhir.sha.go.ke/fhir/identifier/device-asset-tag"
* identifier.value = "KNH-ASSET-INFPUMP-014"
* status = #active
* type.coding.system = "http://snomed.info/sct"
* type.coding.code = #430033006
* type.coding.display = "Infusion pump"
* manufacturer = "B. Braun Melsungen AG"
* manufactureDate = "2023-02-10"
* expirationDate = "2033-02-10"
* lotNumber = "LOT-99231"
* serialNumber = "SN-INF-88213"
* deviceName.name = "Infusion Pump X200"
* deviceName.type = #user-friendly-name
* modelNumber = "X200"
* patient = Reference(ExampleKenyaCorePatient)
* owner = Reference(ExampleKenyaCoreOrganization)


// ============================================================
// KenyaCoreMeasure example
// ============================================================

Instance: ExampleKenyaCoreMeasure
InstanceOf: KenyaCoreMeasure
Title: "Example Measure - Fourth Antenatal Care Visit Coverage"
Description: "Example quality measure tracking the proportion of pregnant clients completing a fourth antenatal care visit."
Usage: #example
* id = "example-measure-anc4-coverage"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-measure"
* url = "https://fhir.dha.go.ke/core/Measure/example-measure-anc4-coverage"
* identifier.use = #official
* identifier.type.text = "Measure Identifier"
* identifier.system = "https://fhir.sha.go.ke/fhir/identifier/measure"
* identifier.value = "MSR-ANC4-COVERAGE"
* version = "1.0.0"
* name = "ANC4CoverageMeasure"
* title = "Fourth Antenatal Care Visit Coverage"
* status = #active
* experimental = false
* date = "2026-01-15"
* publisher = "Digital Health Agency (DHA), Kenya"
* description = "Measures the proportion of pregnant clients who completed a fourth antenatal care (ANC4) visit during the reporting period."
* scoring.coding.system = "http://terminology.hl7.org/CodeSystem/measure-scoring"
* scoring.coding.code = #proportion
* scoring.coding.display = "Proportion"
* type.coding.system = "http://terminology.hl7.org/CodeSystem/measure-type"
* type.coding.code = #process
* type.coding.display = "Process"
* group[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#numerator "Numerator"
* group[0].population[0].criteria.language = #text/cql
* group[0].population[0].criteria.expression = "ANC4 Visit Completed"
* group[0].population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#denominator "Denominator"
* group[0].population[1].criteria.language = #text/cql
* group[0].population[1].criteria.expression = "Pregnant Clients In Reporting Period"


// ============================================================
// KenyaCoreMeasureReport example
// ============================================================

Instance: ExampleKenyaCoreMeasureReport
InstanceOf: KenyaCoreMeasureReport
Title: "Example MeasureReport - ANC4 Coverage, August 2026"
Description: "Example facility-level summary report of ANC4 coverage submitted by Kenyatta National Hospital."
Usage: #example
* id = "example-measurereport-anc4-knh-202608"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-measurereport"
* identifier.use = #official
* identifier.type.text = "MeasureReport Identifier"
* identifier.system = "https://fhir.sha.go.ke/fhir/identifier/measurereport"
* identifier.value = "MSRPT-ANC4-KNH-202608"
* status = #complete
* type = #summary
* measure = Canonical(ExampleKenyaCoreMeasure)
* date = "2026-09-02"
* reporter = Reference(ExampleKenyaCoreOrganization)
* period.start = "2026-08-01"
* period.end = "2026-08-31"
* group[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#numerator "Numerator"
* group[0].population[0].count = 132
* group[0].population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#denominator "Denominator"
* group[0].population[1].count = 180
* group[0].measureScore.value = 0.733


// ============================================================
// KenyaCoreDetectedIssue example
// ============================================================

Instance: ExampleKenyaCoreDetectedIssue
InstanceOf: KenyaCoreDetectedIssue
Title: "Example DetectedIssue - Duplicate Therapy Alert"
Description: "Example clinical decision support alert flagging a duplicate therapy for Amina Hassan."
Usage: #example
* id = "example-detectedissue-amina-duplicate-therapy"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-detectedissue"
* identifier.use = #official
* identifier.type.text = "DetectedIssue Identifier"
* identifier.system = "https://fhir.sha.go.ke/fhir/identifier/detectedissue"
* identifier.value = "DI-2026-00217"
* status = #final
* code.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* code.coding.code = #DUPTHPY
* code.coding.display = "Duplicate Therapy Alert"
* severity = #moderate
* patient = Reference(ExampleKenyaCorePatient)
* identifiedDateTime = "2026-08-01T09:10:00+03:00"
* author = Reference(ExampleKenyaCorePractitioner)
* detail = "Two active prescriptions for medications in the same therapeutic class were identified."
* mitigation.action.text = "Contact prescriber to review therapy"
* mitigation.date = "2026-08-01T09:20:00+03:00"
* mitigation.author = Reference(ExampleKenyaCorePractitioner)


// ============================================================
// KenyaCoreProvenance example
// ============================================================

Instance: ExampleKenyaCoreProvenance
InstanceOf: KenyaCoreProvenance
Title: "Example Provenance - ServiceRequest Authorship"
Description: "Example provenance record describing the creation of the example ServiceRequest by Dr Sarah Njoroge."
Usage: #example
* id = "example-provenance-servicerequest-amina"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-provenance"
* target = Reference(ExampleKenyaCoreServiceRequest)
* occurredDateTime = "2026-08-01T08:45:00+03:00"
* recorded = "2026-08-01T08:45:12+03:00"
* activity.coding.system = "http://terminology.hl7.org/CodeSystem/v3-DataOperation"
* activity.coding.code = #CREATE
* activity.coding.display = "create"
* agent.type.coding.system = "http://terminology.hl7.org/CodeSystem/provenance-participant-type"
* agent.type.coding.code = #author
* agent.type.coding.display = "Author"
* agent.who = Reference(ExampleKenyaCorePractitioner)
* agent.onBehalfOf = Reference(ExampleKenyaCoreOrganization)


// ============================================================
// KenyaCoreCommunicationRequest example
// ============================================================

Instance: ExampleKenyaCoreCommunicationRequest
InstanceOf: KenyaCoreCommunicationRequest
Title: "Example CommunicationRequest - Request to Notify of Results"
Description: "Example request for the care team to notify Amina Hassan once her lab results are available."
Usage: #example
* id = "example-communicationrequest-amina-notify"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-communicationrequest"
* identifier.use = #official
* identifier.type.text = "CommunicationRequest Identifier"
* identifier.system = "https://fhir.sha.go.ke/fhir/identifier/communicationrequest"
* identifier.value = "COMMREQ-2026-00332"
* status = #active
* category.coding.system = "http://terminology.hl7.org/CodeSystem/communication-category"
* category.coding.code = #notification
* category.coding.display = "Notification"
* priority = #routine
* subject = Reference(ExampleKenyaCorePatient)
* encounter = Reference(ExampleKenyaCoreEncounter)
* payload.contentString = "Notify patient once full haemogram results are available."
* occurrenceDateTime = "2026-08-03T10:00:00+03:00"
* authoredOn = "2026-08-01T09:05:00+03:00"
* requester = Reference(ExampleKenyaCorePractitioner)
* recipient = Reference(ExampleKenyaCorePractitioner)
* reasonCode.coding.system = "http://snomed.info/sct"
* reasonCode.coding.code = #386472008
* reasonCode.coding.display = "Telephone consultation"


// ============================================================
// KenyaCoreTask example
// ============================================================

Instance: ExampleKenyaCoreTask
InstanceOf: KenyaCoreTask
Title: "Example Task - Fulfil Lab Order"
Description: "Example workflow task tracking fulfilment of the example ServiceRequest by the KNH laboratory."
Usage: #example
* id = "example-task-fulfil-fhg-order"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-task"
* identifier.use = #official
* identifier.type.text = "Task Identifier"
* identifier.system = "https://fhir.sha.go.ke/fhir/identifier/task"
* identifier.value = "TASK-2026-00742"
* status = #requested
* intent = #order
* priority = #routine
* code.coding.system = "http://hl7.org/fhir/CodeSystem/task-code"
* code.coding.code = #fulfill
* code.coding.display = "Fulfill the focal request"
* description = "Collect specimen and perform full haemogram as ordered."
* focus = Reference(ExampleKenyaCoreServiceRequest)
* for = Reference(ExampleKenyaCorePatient)
* encounter = Reference(ExampleKenyaCoreEncounter)
* authoredOn = "2026-08-01T08:46:00+03:00"
* lastModified = "2026-08-01T08:46:00+03:00"
* requester = Reference(ExampleKenyaCorePractitioner)
* owner = Reference(ExampleKenyaCoreOrganization)
* executionPeriod.start = "2026-08-01T09:00:00+03:00"


// ============================================================
// KenyaCoreConsent example
// ============================================================

Instance: ExampleKenyaCoreConsent
InstanceOf: KenyaCoreConsent
Title: "Example Consent - Data Sharing with SHA"
Description: "Example patient consent authorizing sharing of clinical data with the Social Health Authority."
Usage: #example
* id = "example-consent-amina-sha-sharing"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-consent"
* identifier.use = #official
* identifier.type.text = "Consent Identifier"
* identifier.system = "https://fhir.sha.go.ke/fhir/identifier/consent"
* identifier.value = "CONSENT-2026-00119"
* status = #active
* scope.coding.system = "http://terminology.hl7.org/CodeSystem/consentscope"
* scope.coding.code = #patient-privacy
* scope.coding.display = "Privacy Consent"
* category.coding.system = "http://loinc.org"
* category.coding.code = #59284-0
* category.coding.display = "Patient Consent"
* patient = Reference(ExampleKenyaCorePatient)
* dateTime = "2026-08-01T08:20:00+03:00"
* performer = Reference(ExampleKenyaCorePatient)
* organization = Reference(ExampleKenyaCoreOrganization)
* policyRule.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* policyRule.coding.code = #OPTIN
* policyRule.coding.display = "Opt-in"
* provision.type = #permit
* provision.period.start = "2026-08-01"
* provision.period.end = "2027-08-01"
* provision.actor.role = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#IRCP "Information Recipient"
* provision.actor.reference = Reference(ExampleKenyaCoreOrganization)
* provision.purpose = http://terminology.hl7.org/CodeSystem/v3-ActReason#HOPERAT "healthcare operations"


// ============================================================
// KenyaCoreDocumentReference example
// ============================================================

Instance: ExampleKenyaCoreDocumentReference
InstanceOf: KenyaCoreDocumentReference
Title: "Example DocumentReference - Lab Report PDF"
Description: "Example document reference pointing to a scanned/printable copy of Amina Hassan's full haemogram report."
Usage: #example
* id = "example-documentreference-amina-fhg-report"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-documentreference"
* status = #current
* type.coding.system = "http://loinc.org"
* type.coding.code = #11502-2
* type.coding.display = "Laboratory report"
* category.coding.system = "http://loinc.org"
* category.coding.code = #26436-6
* category.coding.display = "Laboratory studies (set)"
* subject = Reference(ExampleKenyaCorePatient)
* date = "2026-08-03T10:00:00+03:00"
* author = Reference(ExampleKenyaCorePractitioner)
* custodian = Reference(ExampleKenyaCoreOrganization)
* content.attachment.contentType = #application/pdf
* content.attachment.title = "Full Haemogram Report - 2026-08-03"


// ============================================================
// Examples for pre-existing KenyaCore profiles that had none
// ============================================================

Instance: ExampleKenyaCoreLocation
InstanceOf: KenyaCoreLocation
Title: "Example Location - KNH Outpatient Clinic"
Description: "Example clinic location used as context for other Kenya Core examples."
Usage: #example
* id = "example-location-knh-opd"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-location"
* status = #active
* name = "KNH Outpatient Clinic"
* type = LocationTypeCS#OUTPATIENT-CLINIC "Outpatient Clinic"
* managingOrganization = Reference(ExampleKenyaCoreOrganization)

Instance: ExampleKenyaCoreAllergyIntolerance
InstanceOf: KenyaCoreAllergyIntolerance
Title: "Example AllergyIntolerance - Penicillin Allergy"
Description: "Example allergy record for Amina Hassan."
Usage: #example
* id = "example-allergyintolerance-amina-penicillin"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-allergyintolerance"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #764146007
* code.coding.display = "Penicillin"
* patient = Reference(ExampleKenyaCorePatient)
* reaction.manifestation.coding.system = "http://snomed.info/sct"
* reaction.manifestation.coding.code = #271807003
* reaction.manifestation.coding.display = "Skin rash"
* onsetDateTime = "2018-03-10"

Instance: ExampleKenyaCoreCondition
InstanceOf: KenyaCoreCondition
Title: "Example Condition - Iron Deficiency Anaemia"
Description: "Example diagnosis recorded for Amina Hassan during her outpatient visit."
Usage: #example
* id = "example-condition-amina-anaemia"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-condition"
* code.coding.system = "http://id.who.int/icd/release/11/mms"
* code.coding.code = #3A00
* code.coding.display = "Iron deficiency anaemia"
* subject = Reference(ExampleKenyaCorePatient)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category = ConditionCategoryCS#ENCOUNTER-DIAGNOSIS "Encounter Diagnosis"
* encounter = Reference(ExampleKenyaCoreEncounter)
* onsetDateTime = "2026-08-01"
* recordedDate = "2026-08-01"
* asserter = Reference(ExampleKenyaCorePractitioner)

Instance: ExampleKenyaCoreObservation
InstanceOf: KenyaCoreObservation
Title: "Example Observation - Haemoglobin Result"
Description: "Example laboratory result observation for Amina Hassan's full haemogram."
Usage: #example
* id = "example-observation-amina-hgb"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-observation"
* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* category.coding.display = "Laboratory"
* code.coding.system = "http://loinc.org"
* code.coding.code = #718-7
* code.coding.display = "Hemoglobin [Mass/volume] in Blood"
* subject = Reference(ExampleKenyaCorePatient)
* encounter = Reference(ExampleKenyaCoreEncounter)
* effectiveDateTime = "2026-08-03T09:40:00+03:00"
* valueQuantity.value = 10.2
* valueQuantity.unit = "g/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #g/dL
* performer = Reference(ExampleKenyaCorePractitioner)

Instance: ExampleKenyaCoreDiagnosticReport
InstanceOf: KenyaCoreDiagnosticReport
Title: "Example DiagnosticReport - Full Haemogram"
Description: "Example laboratory diagnostic report summarising Amina Hassan's full haemogram results."
Usage: #example
* id = "example-diagnosticreport-amina-fhg"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-diagnosticreport"
* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0074"
* category.coding.code = #LAB
* category.coding.display = "Laboratory"
* code.coding.system = "http://loinc.org"
* code.coding.code = #58410-2
* code.coding.display = "CBC panel"
* subject = Reference(ExampleKenyaCorePatient)
* encounter = Reference(ExampleKenyaCoreEncounter)
* effectiveDateTime = "2026-08-03T09:40:00+03:00"
* issued = "2026-08-03T10:00:00+03:00"
* performer = Reference(ExampleKenyaCoreOrganization)
* result = Reference(ExampleKenyaCoreObservation)

Instance: ExampleKenyaCoreProcedure
InstanceOf: KenyaCoreProcedure
Title: "Example Procedure - Venepuncture"
Description: "Example procedure record for the blood draw supporting Amina Hassan's full haemogram."
Usage: #example
* id = "example-procedure-amina-venepuncture"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-procedure"
* status = #completed
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #28520004
* code.coding.display = "Venipuncture for blood test"
* subject = Reference(ExampleKenyaCorePatient)
* encounter = Reference(ExampleKenyaCoreEncounter)
* performedDateTime = "2026-08-01T09:05:00+03:00"
* performer.actor = Reference(ExampleKenyaCorePractitioner)
* reasonReference = Reference(ExampleKenyaCoreCondition)

Instance: ExampleKenyaCoreEpisodeOfCare
InstanceOf: KenyaCoreEpisodeOfCare
Title: "Example EpisodeOfCare - Outpatient Care Episode"
Description: "Example episode of care for Amina Hassan's ongoing outpatient management."
Usage: #example
* id = "example-episodeofcare-amina-outpatient"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-episodeofcare"
* status = #active
* type = EpisodeOfCareTypeCS#NON-COMMUNICABLE-DISEASE-PROGRAM "Non-Communicable Disease Program"
* patient = Reference(ExampleKenyaCorePatient)
* managingOrganization = Reference(ExampleKenyaCoreOrganization)
* period.start = "2026-08-01"
* careManager = Reference(ExampleKenyaCorePractitioner)
* diagnosis.condition = Reference(ExampleKenyaCoreCondition)

Instance: ExampleKenyaCorePractitionerRole
InstanceOf: KenyaCorePractitionerRole
Title: "Example PractitionerRole - Dr Njoroge at KNH"
Description: "Example role linking Dr Sarah Njoroge to Kenyatta National Hospital."
Usage: #example
* id = "example-practitionerrole-njoroge-knh"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-practitionerrole"
* practitioner = Reference(ExampleKenyaCorePractitioner)
* organization = Reference(ExampleKenyaCoreOrganization)
* code = PractitionerRolesCS#DOCTOR "Doctor"
* specialty = PractitionerSpecialtiesCS#MEDICAL-DOCTOR "Medical Doctor"

Instance: ExampleKenyaCoreRelatedPerson
InstanceOf: KenyaCoreRelatedPerson
Title: "Example RelatedPerson - Amina's Next of Kin"
Description: "Example next-of-kin contact for Amina Hassan."
Usage: #example
* id = "example-relatedperson-amina-nok"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-relatedperson"
* patient = Reference(ExampleKenyaCorePatient)
* relationship = RelatedPersonRelationshipCS#RELATIVE "Relative"
* name.text = "Fatuma Hassan"
* telecom.system = #phone
* telecom.value = "+254733987654"

Instance: ExampleKenyaCoreQuestionnaireResponse
InstanceOf: KenyaCoreQuestionnaireResponse
Title: "Example QuestionnaireResponse - Intake Form"
Description: "Example completed intake questionnaire for Amina Hassan."
Usage: #example
* id = "example-questionnaireresponse-amina-intake"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-questionnaireresponse"
* questionnaire = "https://fhir.dha.go.ke/core/Questionnaire/patient-intake"
* status = #completed
* subject = Reference(ExampleKenyaCorePatient)
* encounter = Reference(ExampleKenyaCoreEncounter)
* authored = "2026-08-01T08:35:00+03:00"
* author = Reference(ExampleKenyaCorePractitioner)
* item[0].linkId = "smoking-status"
* item[0].text = "Do you currently smoke?"
* item[0].answer.valueBoolean = false

// ============================================================
// KenyaCoreOperationOutcome example
// ============================================================

Instance: ExampleKenyaCoreOperationOutcome
InstanceOf: KenyaCoreOperationOutcome
Title: "Example OperationOutcome - Invalid Patient Identifier"
Description: "Example error response returned when a submitted Patient resource is missing a required identifier."
Usage: #example
* id = "example-operationoutcome-missing-identifier"
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-operationoutcome"
* issue.severity = #error
* issue.code = #required
* issue.details.coding.system = "http://hl7.org/fhir/http-problem-list-http-status-codes"
* issue.details.coding.code = #422
* issue.details.text = "Missing required identifier"
* issue.diagnostics = "Patient.identifier must contain at least one of: SHA number, phone number, household number, or national ID."
* issue.location = "Patient.identifier"
* issue.expression = "Patient.identifier"
