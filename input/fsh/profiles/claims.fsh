// Profile: KenyaCoreClaim
// Parent: Claim
// Id: sha-claim
// Title: "SHA Claim"
// Description: "Claim resource for SHA (Social Health Authority) healthcare claims"
// * ^url = "https://fhir.sha.go.ke/fhir/StructureDefinition/sha-claim"
// * ^version = "1.0.0"
// * ^status = #active
// * ^date = "2025-12-15"
// // Meta - Add profile reference
// * meta.profile 1..1
// * meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/sha-coverage|1.0.0"
// * meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/sha-coverage|1.0.0"
// // ID - Required, UUID format
// * id 1..1
// * id ^short = "Logical id of this artifact"
// * id obeys sha-claim-id-format

// // Extensions - All from example
// * extension contains
//     ProviderAuthTokenExtension named providerAuthToken 1..1 and
//     PreauthTokenExtension named preauthToken 1..1 and
//     HasCoinsuranceExtension named hasCoinsurance 1..1 and
//     ChiefComplaintExtension named chiefComplaint 1..1 and
//     HPIExtension named hpi 1..1 and
//     VitalSignsExtension named vitalSigns 1..1 and
//     InvestigationsExtension named investigations 1..1 and
//     PhysicalExaminationExtension named physicalExamination 1..1 and
//     SessionExpectedDateExtension named sessionExpectedDate 1..1 and
//     AnaesthesiaTypeExtension named anaesthesiaType 1..1 and
//     RawPreauthSourceDataExtension named rawPreauthSourceData 1..1

// // Identifier - Single identifier with SHA system
// * identifier 1..1 MS
// * identifier ^short = "Business Identifier for claim"
// * identifier.system = "https://fhir.sha.go.ke/fhir/claim"
// * identifier.system ^fixedUri = "https://fhir.sha.go.ke/fhir/claim"
// * identifier.value 1..1
// * identifier.value ^short = "Claim identifier value (UUID)"

// // Status - Required, active
// * status 1..1 MS
// * status ^short = "active | cancelled | draft | entered-in-error"
// * status from ClaimStatusVS (required)
// * status = #active
// * status ^fixedCode = #active

// // Type - Required, institutional
// * type 1..1 MS
// * type ^short = "Category or discipline"
// * type.coding.system = $claim-type
// * type.coding.system ^fixedUri = $claim-type
// * type.coding.code = #institutional
// * type.coding.code ^fixedCode = #institutional

// // SubType - Required, inpatient
// * subType 1..1 MS
// * subType ^short = "More granular claim type"
// * subType.coding.system = $ex-claimsubtype
// * subType.coding.system ^fixedUri = $ex-claimsubtype
// * subType.coding.code = #ip
// * subType.coding.code ^fixedCode = #ip

// // Use - Required, preauthorization
// * use 1..1 MS
// * use ^short = "claim | preauthorization | predetermination"
// * use from ClaimUseVS (required)
// * use = #preauthorization
// * use ^fixedCode = #preauthorization

// // Patient - Required reference
// * patient 1..1 MS
// * patient ^short = "The recipient of the products and services"
// * patient.reference 1..1
// * patient.reference obeys sha-patient-reference-format

// // Billable Period - Required
// * billablePeriod 1..1 MS
// * billablePeriod ^short = "Relevant time frame for the claim"
// * billablePeriod.start 1..1
// * billablePeriod.end 1..1

// // Created - Required
// * created 1..1 MS
// * created ^short = "Resource creation date"
// * created obeys valid-claim-created-date

// // Provider - Required reference to Organization
// * provider 1..1 MS
// * provider ^short = "Party responsible for the claim"
// * provider.reference 1..1
// * provider.reference obeys sha-organization-reference-format

// // Priority - Required, normal
// * priority 1..1 MS
// * priority ^short = "Desired processing priority"
// * priority.coding.system = $processpriority
// * priority.coding.system ^fixedUri = $processpriority
// * priority.coding.code = #normal
// * priority.coding.code ^fixedCode = #normal

// // Related Claims - Optional (1..* in example)
// * related 0..* MS
// * related ^short = "Prior or corollary claims"
// * related.claim.identifier 1..1
// * related.claim.identifier.system = "https://fhir.sha.go.ke/fhir/Claim"
// * related.claim.identifier.system ^fixedUri = "https://fhir.sha.go.ke/fhir/Claim"
// * related.claim.identifier.value 1..1
// * related.relationship 1..1
// * related.relationship.coding.system = $claim-relation-type
// * related.relationship.coding.system ^fixedUri = $claim-relation-type
// * related.relationship.coding.code = #claim
// * related.relationship.coding.code ^fixedCode = #claim
// * related.relationship.text = "Claim"
// * related.relationship.text ^fixedString = "Claim"

// // Care Team - Required (1 in example)
// * careTeam 1..* MS
// * careTeam ^short = "Members of the care team"
// * careTeam.sequence 1..1
// * careTeam.provider 1..1
// * careTeam.provider.reference 1..1
// * careTeam.provider.reference obeys sha-practitioner-reference-format
// * careTeam.provider.type = #Practitioner
// * careTeam.provider.type ^fixedCode = #Practitioner
// * careTeam.provider.display 1..1

// // Supporting Info - Required attachments
// * supportingInfo 1..* MS
// * supportingInfo ^short = "Supporting information"
// * supportingInfo.sequence 1..1
// * supportingInfo.category 1..1
// * supportingInfo.category.coding.system = $claiminformationcategory
// * supportingInfo.category.coding.system ^fixedUri = $claiminformationcategory
// * supportingInfo.category.coding.code = #attachment
// * supportingInfo.category.coding.code ^fixedCode = #attachment
// * supportingInfo.category.coding.display = "Attachment"
// * supportingInfo.category.coding.display ^fixedString = "Attachment"
// * supportingInfo.valueAttachment 1..1
// * supportingInfo.valueAttachment.extension contains AttachmentTypeExtension named attachmentType 1..1
// * supportingInfo.valueAttachment.contentType 1..1
// * supportingInfo.valueAttachment.language = #en
// * supportingInfo.valueAttachment.language ^fixedCode = #en
// * supportingInfo.valueAttachment.url 1..1
// * supportingInfo.valueAttachment.url obeys valid-attachment-url
// * supportingInfo.valueAttachment.size 1..1
// * supportingInfo.valueAttachment.title 1..1
// * supportingInfo.valueAttachment.creation 1..1

// // Diagnosis - Required
// * diagnosis 1..* MS
// * diagnosis ^short = "Patient's diagnosis"
// * diagnosis.sequence 1..1
// * diagnosis.diagnosisCodeableConcept 1..1
// * diagnosis.diagnosisCodeableConcept.coding.system = $icd-11
// * diagnosis.diagnosisCodeableConcept.coding.system ^fixedUri = $icd-11
// * diagnosis.diagnosisCodeableConcept.coding.code 1..1
// * diagnosis.diagnosisCodeableConcept.coding.display 1..1

// // Insurance - Required
// * insurance 1..* MS
// * insurance ^short = "Patient insurance information"
// * insurance.sequence 1..1
// * insurance.focal = true
// * insurance.focal ^fixedBoolean = true
// * insurance.coverage 1..1
// * insurance.coverage.reference 1..1
// * insurance.coverage.reference obeys sha-coverage-reference-format

// // Items - Required
// * item 1..* MS
// * item ^short = "Product or service provided"
// * item.extension contains SHACoverageExtension named shaCoverage 1..1
// * item.sequence 1..1
// * item.category 1..1
// * item.category.coding.system = $category-codes
// * item.category.coding.system ^fixedUri = $category-codes
// * item.category.coding.code = #procedure
// * item.category.coding.code ^fixedCode = #procedure
// * item.category.coding.display = "Procedure"
// * item.category.coding.display ^fixedString = "Procedure"
// * item.productOrService 1..1
// * item.productOrService.coding.system = $intervention-codes
// * item.productOrService.coding.system ^fixedUri = $intervention-codes
// * item.productOrService.coding.code 1..1
// * item.productOrService.coding.display 1..1
// * item.servicedPeriod 1..1
// * item.servicedPeriod.start 1..1
// * item.servicedPeriod.end 1..1
// * item.quantity 1..1
// * item.quantity.value 1..1
// * item.unitPrice 1..1
// * item.unitPrice.value = 1
// * item.unitPrice.value ^fixedDecimal = 1
// * item.unitPrice.currency = #KES
// * item.unitPrice.currency ^fixedCode = #KES
// * item.factor = 1
// * item.factor ^fixedDecimal = 1
// * item.net 1..1
// * item.net.value 1..1
// * item.net.currency = #KES
// * item.net.currency ^fixedCode = #KES

// // Total - Required
// * total 1..1 MS
// * total ^short = "Total claim cost"
// * total.value = 0
// * total.value ^fixedDecimal = 0
// * total.currency = #KES
// * total.currency ^fixedCode = #KES
 

// Instance: ExampleKenyaCoreClaim
// InstanceOf: KenyaCoreClaim
// Title: "Example SHA Claim"
// Description: "Example exactly matching the provided JSON"
// Usage: #example
// * id = "d7f2fac8-15ff-47ac-9450-4f7afb049401"
// * extension[providerAuthToken].url = "https://fhir.sha.go.ke/fhir/StructureDefinition/provider-auth-token"
// * extension[providerAuthToken].valueString = "TUMB3Q238L"
// * extension[preauthToken].url = "https://fhir.sha.go.ke/fhir/StructureDefinition/preauth-token"
// * extension[preauthToken].valueString = "K33RMT9DSD"
// * extension[hasCoinsurance].url = "https://fhir.sha.go.ke/fhir/StructureDefinition/has-coinsurance"
// * extension[hasCoinsurance].valueString = "false"
// * extension[chiefComplaint].url = "https://fhir.sha.go.ke/fhir/StructureDefinition/chief-complaint"
// * extension[chiefComplaint].valueString = "RIGHT FEMUR FRACTURE"
// * extension[hpi].url = "https://fhir.sha.go.ke/fhir/StructureDefinition/hpi"
// * extension[hpi].valueString = "INVOLVED IN ROAD TRAFFIC ACCIDENT"
// * extension[vitalSigns].url = "https://fhir.sha.go.ke/fhir/StructureDefinition/vital-signs"
// * extension[vitalSigns].valueString = "BP 132/74 TEMP 36.4 WEIGHT 72KG"
// * extension[investigations].url = "https://fhir.sha.go.ke/fhir/StructureDefinition/investigations"
// * extension[investigations].valueString = "X-RAY"
// * extension[physicalExamination].url = "https://fhir.sha.go.ke/fhir/StructureDefinition/physical-examination"
// * extension[physicalExamination].valueString = "RIGHT FEMUR FRACTURE THAT REQUIRES OPEN REDUCTION AND INTERNAL FIXATION WITH AN INTERLOCKING NAIL"
// * extension[sessionExpectedDate].url = "https://fhir.sha.go.ke/fhir/StructureDefinition/session-expected-date"
// * extension[sessionExpectedDate].valueString = "2025-11-29"
// * extension[anaesthesiaType].url = "https://fhir.sha.go.ke/fhir/StructureDefinition/anaesthesia-type"
// * extension[anaesthesiaType].valueString = "GENERAL"
// * extension[rawPreauthSourceData].url = "https://fhir.sha.go.ke/fhir/StructureDefinition/raw-preauth-source-data"
// * extension[rawPreauthSourceData].valueString = "{\"id\":2360683,\"guid\":\"ef5a7d14-c69b-41b7-b90d-b14c44d7d086\",\"sessionType\":\"NORMAL\",\"serviceStart\":\"2025-11-29T15:08:36.25+03:00\",\"serviceEnd\":\"2026-02-27T15:08:36.25+03:00\",\"submissionDateIn_EAT\":\"0001-01-01T00:00:00Z\",\"created\":\"2025-11-29T15:08:35.48561+03:00\",\"preauthType\":\"SURGICAL\",\"providerName\":\"PATANISHO MATERNITY \\\\u0026 NURSING HOME\",\"payerName\":\"Social Health Authority\",\"memberName\":\"CHURCHILL OWINO OCHIENG\",\"memberIdentifier\":\"37532638\",\"benefitType\":\"\",\"status\":\"PENDING_DOCTOR_APPROVAL\",\"providerCurrency\":\"KES\",\"token\":\"K33RMT9DSD\",\"interventionCode\":\"SHA-19-444\",\"finalApprovedAmount\":\"0\",\"totalEstimatedAmountForPreauth\":\"0\",\"totalEstimatedAmountForSequence\":\"0\",\"totalInterimApprovedAmountForPreauth\":\"0\",\"totalInterimApprovedAmountForSequence\":\"0\",\"authorization\":26852639,\"owner\":6857,\"needsDoctorApproval\":true,\"preauthItems\":[{\"guid\":\"b9610c2e-ee09-4c68-a9fa-d0c94c78c22b\",\"estimatedAmount\":\"145600\",\"approvedAmount\":\"0\",\"providerCurrency\":\"KES\",\"status\":\"DRAFT\",\"name\":\"Open reduction and internal fixation: Femur\",\"description\":\"\",\"unitPrice\":\"145600\",\"quantity\":\"1\",\"interventionName\":\"Open reduction and internal fixation: Femur\",\"interventionCode\":\"SHA-19-444\",\"intervention\":0,\"chargeDate\":\"2025-11-29T15:12:19.770469+03:00\",\"requestedBy\":\"eddbd534-0df8-4ec0-a012-aa7f0ffc8c3d\",\"requestedByName\":\"Stephen Opiyo\",\"schemeCode\":\"BOTH\",\"schemeName\":\"Public Officers Medical Scheme Fund AND Social Health Authority\",\"interventions\":null}],\"doctorReviewStatus\":\"PENDING\",\"lengthOfStay\":90,\"authorizationDetails\":{\"id\":26852639,\"guid\":\"e7e154a9-9dcf-42f4-833d-8892cf7e4308\",\"createdByName\":\"Stephen Opiyo\",\"strongAuthentication\":false,\"payerSladeCode\":2029,\"providerName\":\"PATANISHO MATERNITY \\\\u0026 NURSING HOME\",\"authCode\":\"CR1569230130821-1-TUMB3Q238L\",\"beneficiaryName\":\"CHURCHILL OWINO OCHIENG\",\"beneficiaryCode\":\"CR1569230130821-1\",\"beneficiaryScheme\":\"SOCIAL HEALTH AUTHORITY\",\"beneficiaryJoinDate\":\"2024-10-01T00:00:00+03:00\",\"interventions\":[{\"id\":440,\"guid\":\"\",\"accessPoint\":\"\",\"name\":\"Open reduction and internal fixation: Femur\",\"code\":\"SHA-19-444\",\"status\":\"\",\"paymentMechanism\":\"FEE FOR SERVICE\",\"coverageLevel\":\"\",\"applicableGender\":\"\",\"applicableFacilityOwnership\":\"\",\"usageFrequencyType\":\"\",\"levelsApplicable\":null,\"annualQuantityLimit\":0,\"active\":false,\"needsPreauth\":true,\"needsManualPreauthApproval\":false,\"needsDoctorAuthorization\":false,\"needsMemberAuthorization\":false,\"needApprovalBeforeClaimSubmission\":false,\"isIntraMetro\":false,\"managementTariffHasLimit\":false,\"investigationTariffHasLimit\":false,\"overallTariff\":\"145600\",\"overallTariffHasLimit\":false,\"benefit\":0,\"kephLevelTarrif\":\"145600\",\"preauthFinalised\":false}],\"eligibilityDetails\":{\"member\":{\"beneficiaryCode\":\"CR1569230130821-1\",\"names\":\"CHURCHILL OWINO OCHIENG\",\"firstName\":\"CHURCHILL\",\"lastName\":\"OCHIENG\",\"otherNames\":\"OWINO\",\"dateOfBirth\":\"1998-07-09T22:00:00Z\",\"gender\":\"M\",\"beneficiarySource\":\"NHIF-00031\",\"isPrincipal\":true,\"principalRelationship\":\"PRINCIPAL\",\"group\":\"SOCIAL HEALTH AUTHORITY\",\"category\":\"SOCIAL HEALTH AUTHORITY\",\"id\":16209297,\"otpOnlyAllowed\":true,\"guid\":\"d6df84b2-94e5-492f-b49e-b2e3932afeff\",\"membershipNumber\":\"37532638\",\"idNo\":\"37532638\",\"joinDate\":\"2024-10-01T00:00:00+03:00\",\"identifiers\":[{\"id\":42266819,\"guid\":\"0d0a45d9-a07a-400a-bcce-e97b24d1746f\",\"identifier\":\"+254759592217\",\"identifierType\":\"Phone Number\"},{\"id\":42266818,\"guid\":\"6ae90d2c-d448-41ee-93bc-e608708447cc\",\"identifier\":\"HH1569230130821-1\",\"identifierType\":\"Household Number\"},{\"id\":42266817,\"guid\":\"558fe9ce-36aa-4e70-aabc-3184dcd8d345\",\"identifier\":\"SHA1569230130821-1\",\"identifierType\":\"SHA Number\"},{\"id\":42266816,\"guid\":\"fa6079e5-d526-46f8-b104-30cff1c49c23\",\"identifier\":\"37532638\",\"identifierType\":\"National ID\",\"isMainIdentifier\":true}],\"contacts\":[{\"id\":9704977,\"guid\":\"c00e61dd-c94b-4c23-867b-1de1e86d1f68\",\"contactType\":\"PHO\",\"contactValue\":\"+254759592217\",\"contactName\":\"\",\"isConfirmed\":true,\"active\":false,\"isVerified\":false,\"isMainContact\":false,\"canSendComm\":false,\"role\":\"\"}],\"isVip\":false,\"isVvip\":false,\"isOfFpCaptureAge\":true,\"isEnrolled\":false},\"cover\":{\"groupCode\":\"UHC\",\"group\":\"SOCIAL HEALTH AUTHORITY\",\"isEmployerGroup\":false,\"categoryCode\":\"CAT-SHA-001\",\"category\":\"SOCIAL HEALTH AUTHORITY\",\"policyNumber\":\"UHC\",\"effectivePolicyNumber\":\"\",\"validFrom\":\"2024-10-01T00:00:00+03:00\",\"validTo\":\"2035-10-01T00:00:00+03:00\",\"groupType\":\"\"}},\"token\":\"TUMB3Q238L\",\"status\":\"AUTHORIZED_PENDING_VISIT\",\"expiry\":\"2026-01-13T15:08:35.196689+03:00\",\"notes\":\"\",\"benefitType\":\"INPATIENT\",\"updated\":\"0001-01-01T00:00:00Z\",\"created\":\"0001-01-01T00:00:00Z\",\"isOpen\":true,\"isComplete\":false,\"label\":\"OTP\",\"authorizationType\":[\"OTP\"],\"beneficiaryNumber\":\"37532638\",\"preauthIds\":[2360683],\"totalAuthorizedAmount\":\"0\",\"currentAvailableBalance\":\"0\",\"beneficiary\":16209297,\"provider\":6857,\"needsPreauth\":true,\"policyEffectiveDate\":\"0001-01-01T00:00:00Z\",\"isElective\":true,\"overallPreauthFinalised\":false,\"updatedAt\":\"0001-01-01T00:00:00Z\",\"replicated\":\"2025-11-29T15:08:35+03:00\",\"owner\":0},\"preauthDiagnoses\":[{\"guid\":\"2c94644a-0390-4043-b79f-77f94ec21f65\",\"siteCode\":\"NC72.5\",\"siteCodeType\":\"ICD-11\",\"name\":\"Fracture of shaft of femur\",\"interventionCode\":\"SHA-19-444\",\"requestedBy\":\"eddbd534-0df8-4ec0-a012-aa7f0ffc8c3d\",\"requestedByName\":\"Stephen Opiyo\"}],\"preauthAttachments\":[{\"guid\":\"699c6bb1-eb52-42a9-92c7-8048604b9166\",\"uploadedFile\":\"https://api-edi.provider.sha.go.ke/media/edi/2025/11/29/2a1b91f5-14f9-44b0-8860-c8768a6dbeef_CHURCHILL_X-_RAY.pdf\",\"contentType\":\"application/pdf\",\"description\":\"\",\"attachmentType\":\"RADIOLOGY_REQUEST\",\"title\":\"CHURCHILL X- RAY.pdf\",\"source\":\"PROVIDER\",\"attachment\":21961479,\"author\":\"eddbd534-0df8-4ec0-a012-aa7f0ffc8c3d\",\"authorName\":\"Stephen Opiyo\",\"authorEmail\":\"patanishonursinghome@gmail.com\",\"created\":\"0001-01-01T00:00:00Z\",\"replicated\":\"2025-11-29T15:17:07.815238+03:00\"},{\"guid\":\"c083861b-d2a1-4ab5-9e58-ecf835ba8509\",\"uploadedFile\":\"https://api-edi.provider.sha.go.ke/media/edi/2025/11/29/7f60c367-0df6-44ce-8a38-1c063cbe4f39_CHURCHILL_ID.pdf\",\"contentType\":\"application/pdf\",\"description\":\"\",\"attachmentType\":\"OTHER\",\"title\":\"CHURCHILL ID.pdf\",\"source\":\"PROVIDER\",\"attachment\":21961393,\"author\":\"eddbd534-0df8-4ec0-a012-aa7f0ffc8c3d\",\"authorName\":\"Stephen Opiyo\",\"authorEmail\":\"patanishonursinghome@gmail.com\",\"created\":\"0001-01-01T00:00:00Z\",\"replicated\":\"2025-11-29T15:15:20.56689+03:00\"},{\"guid\":\"e57f0ca5-4c6d-4764-a4b3-54c231e1d9bd\",\"uploadedFile\":\"https://api-edi.provider.sha.go.ke/media/edi/2025/11/29/c2d2f4f7-24e8-40ff-b94c-3ea5cc41952a_CHURCHILL_PREAUTH.pdf\",\"contentType\":\"application/pdf\",\"description\":\"PRE-AUTH FORM\",\"attachmentType\":\"OTHER\",\"title\":\"CHURCHILL PREAUTH.pdf\",\"source\":\"PROVIDER\",\"attachment\":21961365,\"author\":\"eddbd534-0df8-4ec0-a012-aa7f0ffc8c3d\",\"authorName\":\"Stephen Opiyo\",\"authorEmail\":\"patanishonursinghome@gmail.com\",\"created\":\"0001-01-01T00:00:00Z\",\"replicated\":\"2025-11-29T15:14:38.570238+03:00\"},{\"guid\":\"2a608c2d-f0b9-46b9-995b-156f87cbbed1\",\"uploadedFile\":\"https://api-edi.provider.sha.go.ke/media/edi/2025/11/29/11aaf8d0-706e-4b40-98f3-85444e7be18f_CHURCHILL_DOCTORS_NOTES.pdf\",\"contentType\":\"application/pdf\",\"description\":\"\",\"attachmentType\":\"CLINICAL_DOCUMENTATION\",\"title\":\"CHURCHILL DOCTORS NOTES.pdf\",\"source\":\"PROVIDER\",\"attachment\":21961263,\"author\":\"eddbd534-0df8-4ec0-a012-aa7f0ffc8c3d\",\"authorName\":\"Stephen Opiyo\",\"authorEmail\":\"patanishonursinghome@gmail.com\",\"created\":\"0001-01-01T00:00:00Z\",\"replicated\":\"2025-11-29T15:13:59.018164+03:00\"}],\"preauthDoctors\":[{\"id\":2316264,\"guid\":\"e6a0496d-e91b-4b04-85fc-b8f68c39d661\",\"status\":\"DRAFT\",\"doctorReviewStatus\":\"PENDING\",\"doctorType\":\"SURGEON\",\"isHospitalDoctor\":false,\"doctorProfile\":{\"id\":33431,\"guid\":\"4019a643-ce9e-4cc8-99a1-7f2a9810eca2\",\"name\":\"Dr DENNIS GITONGA GIKUNJU\",\"bpType\":\"DOCTOR\",\"sladeCode\":801347,\"active\":true,\"country\":\"KENYA\",\"contacts\":[{\"id\":2644,\"guid\":\"c007004d-2dde-44dc-a315-2bc876b15df8\",\"contactType\":\"EMA\",\"contactValue\":\"d*****u@gmail.com\",\"contactName\":\"Dr DENNIS GITONGA GIKUNJU \",\"isConfirmed\":true,\"active\":true,\"isVerified\":false,\"isMainContact\":false,\"canSendComm\":false,\"role\":\"PREAUTHORIZATIONS\",\"businessPartner\":{\"id\":33431,\"guid\":\"4019a643-ce9e-4cc8-99a1-7f2a9810eca2\",\"name\":\"Dr DENNIS GITONGA GIKUNJU\",\"bpType\":\"DOCTOR\",\"sladeCode\":801347,\"nationalIdentifier\":\"A11539\",\"active\":true,\"country\":\"KENYA\"}},{\"id\":32520,\"guid\":\"c8595bcb-1a1f-4b82-b8aa-10cf92d20812\",\"contactType\":\"EMA\",\"contactValue\":\"d*****u@gmail.com\",\"contactName\":\"Dr DENNIS GITONGA GIKUNJU \",\"isConfirmed\":true,\"active\":true,\"isVerified\":false,\"isMainContact\":false,\"canSendComm\":false,\"role\":\"PREAUTHORIZATIONS\",\"businessPartner\":{\"id\":33431,\"guid\":\"4019a643-ce9e-4cc8-99a1-7f2a9810eca2\",\"name\":\"Dr DENNIS GITONGA GIKUNJU\",\"bpType\":\"DOCTOR\",\"sladeCode\":801347,\"nationalIdentifier\":\"A11539\",\"active\":true,\"country\":\"KENYA\"}},{\"id\":2641,\"guid\":\"062afaf7-28a6-4fe6-986f-e233724ce11c\",\"contactType\":\"PHO\",\"contactValue\":\"+254717***659\",\"contactName\":\"Dr DENNIS GITONGA GIKUNJU \",\"isConfirmed\":true,\"active\":true,\"isVerified\":false,\"isMainContact\":false,\"canSendComm\":false,\"role\":\"PREAUTHORIZATIONS\",\"businessPartner\":{\"id\":33431,\"guid\":\"4019a643-ce9e-4cc8-99a1-7f2a9810eca2\",\"name\":\"Dr DENNIS GITONGA GIKUNJU\",\"bpType\":\"DOCTOR\",\"sladeCode\":801347,\"nationalIdentifier\":\"A11539\",\"active\":true,\"country\":\"KENYA\"}}],\"practitionerLicenseStatus\":\"VALID\",\"practitionerRegistryId\":\"PUID-0009504-3\",\"practitionerType\":\"LOCAL\",\"practitionerGender\":\"MALE\",\"practitionerCadre\":\"MEDICINE\",\"practitionerIdNumber\":\"29944238\",\"practitionerIdType\":\"NATIONAL_ID\",\"practitionerLicenseBody\":\"KMPDC\",\"practitionerLicenceNumber\":\"GP/2025/623378\",\"practitionerPostalAddress\":\"P.O BOX 99807 80107 MOMBASA\",\"practitionerLicenceValidity\":\"2025-12-31\",\"practitionerRegistrationNumber\":\"A11539\",\"practitionerInHealthWorkerRegistry\":true}}],\"interventionData\":{\"status\":\"DRAFT\",\"code\":\"SHA-19-444\",\"id\":440,\"guid\":\"62b4ae6e-1ca9-4f3d-bd9d-22d9dc2c88e9\",\"name\":\"Open reduction and internal fixation: Femur\",\"overallTariff\":\"145600\",\"paymentMechanism\":\"FEE FOR SERVICE\",\"kephLevelTarrif\":\"0\"},\"requestExtraData\":{\"chiefComplaint\":\"RIGHT FEMUR FRACTURE\",\"hpi\":\"INVOLVED IN ROAD TRAFFIC ACCIDENT\",\"vitalSigns\":\"BP 132/74 TEMP 36.4 WEIGHT 72KG\",\"investigations\":\"X-RAY\",\"physicalExamination\":\"RIGHT FEMUR FRACTURE THAT REQUIRES OPEN REDUCTION AND INTERNAL FIXATION WITH AN INTERLOCKING NAIL\",\"sessionExpectedDate\":\"2025-11-29T12:08:36.25Z\",\"costPerSession\":\"0\",\"anaesthesiaType\":\"GENERAL\",\"consultationAmount\":\"0\",\"eyeExaminationAmount\":\"0\",\"frameAmount\":\"0\",\"lensAmount\":\"0\",\"lastReplacementDate\":\"0001-01-01T00:00:00Z\"},\"beneficiaryDetails\":{\"guid\":\"d6df84b2-94e5-492f-b49e-b2e3932afeff\",\"DoB\":\"1998-07-09T22:00:00Z\",\"gender\":\"Male\",\"beneficiaryID\":16209297,\"firstName\":\"CHURCHILL\",\"lastName\":\"OCHIENG\",\"otherNames\":\"OWINO\",\"beneficiaryCode\":\"CR1569230130821-1\",\"schemeCode\":\"UHC\",\"categoryName\":\"SOCIAL HEALTH AUTHORITY\",\"categoryCode\":\"CAT-SHA-001\",\"identifiers\":[{\"identifier\":\"+254759592217\",\"identifierType\":\"Phone Number\"},{\"identifier\":\"HH1569230130821-1\",\"identifierType\":\"Household Number\"},{\"identifier\":\"SHA1569230130821-1\",\"identifierType\":\"SHA Number\"},{\"identifier\":\"37532638\",\"identifierType\":\"National ID\"}]},\"providerDetails\":{\"guid\":\"b08eab6a-6c96-4194-98b6-9ae44103bd10\",\"name\":\"PATANISHO MATERNITY \\\\u0026 NURSING HOME\",\"sladeCode\":6857,\"businessPartnerID\":1569,\"nationalIdentifier\":\"FID-47-109332-4\",\"bpLevel\":\"LEVEL 4\",\"identifiers\":[{\"identifier\":\"109332\",\"identifierType\":\"fid\"},{\"identifier\":\"FID-47-109332-4\",\"identifierType\":\"fr-code\"},{\"identifier\":\"001673\",\"identifierType\":\"registration-number\"}],\"active\":true},\"providerConsent\":true,\"businessPartnerContracts\":[\"TEACHERS\"],\"isRequestPhase\":true,\"isSurgical\":true}"
// * identifier.system = "https://fhir.sha.go.ke/fhir/claim"
// * identifier.value = "ef5a7d14-c69b-41b7-b90d-b14c44d7d086"
// * status = #active
// * type.coding.system = "http://terminology.hl7.org/CodeSystem/claim-type"
// * type.coding.code = #institutional
// * subType.coding.system = "http://terminology.hl7.org/CodeSystem/ex-claimsubtype"
// * subType.coding.code = #ip
// * use = #preauthorization
// * patient.reference = "https://fhir.sha.go.ke/fhir/Patient/CR1569230130821-1"
// * billablePeriod.start = "2025-11-29T15:08:36+03:00"
// * billablePeriod.end = "2026-02-27T15:08:36+03:00"
// * created = "2025-11-29"
// * provider.reference = "https://fhir.sha.go.ke/fhir/Organization/FID-47-109332-4"
// * priority.coding.system = "http://terminology.hl7.org/CodeSystem/processpriority"
// * priority.coding.code = #normal
// * related[0].claim.identifier.system = "https://fhir.sha.go.ke/fhir/Claim"
// * related[0].claim.identifier.value = "4beb3d8f-6f69-4482-9ba4-9d1b5f4b5e46"
// * related[0].relationship.coding.system = "https://fhir.sha.go.ke/fhir/CodeSystem/claim-relation-type"
// * related[0].relationship.coding.code = #claim
// * related[0].relationship.text = "Claim"
// * related[1].claim.identifier.system = "https://fhir.sha.go.ke/fhir/Claim"
// * related[1].claim.identifier.value = "dc6069c8-e2d1-4a33-ab96-7cd58e0a1a4a"
// * related[1].relationship.coding.system = "https://fhir.sha.go.ke/fhir/CodeSystem/claim-relation-type"
// * related[1].relationship.coding.code = #claim
// * related[1].relationship.text = "Claim"
// * related[2].claim.identifier.system = "https://fhir.sha.go.ke/fhir/Claim"
// * related[2].claim.identifier.value = "1c913ef3-e610-4db3-bd43-cace54dfe50f"
// * related[2].relationship.coding.system = "https://fhir.sha.go.ke/fhir/CodeSystem/claim-relation-type"
// * related[2].relationship.coding.code = #claim
// * related[2].relationship.text = "Claim"
// * careTeam[0].sequence = 1
// * careTeam[0].provider.reference = "https://fhir.sha.go.ke/fhir/Practitioner/PUID-0009504-3"
// * careTeam[0].provider.type = #Practitioner
// * careTeam[0].provider.display = "Dr DENNIS GITONGA GIKUNJU"
// * supportingInfo[0].sequence = 1
// * supportingInfo[0].category.coding.system = "http://terminology.hl7.org/CodeSystem/claiminformationcategory"
// * supportingInfo[0].category.coding.code = #attachment
// * supportingInfo[0].category.coding.display = "Attachment"
// * supportingInfo[0].valueAttachment.extension[attachmentType].url = "https://fhir.sha.go.ke/fhir/CodeSystem/attachment-type"
// * supportingInfo[0].valueAttachment.extension[attachmentType].valueCodeableConcept.coding.system = "https://fhir.sha.go.ke/fhir/CodeSystem/attachment-type"
// * supportingInfo[0].valueAttachment.extension[attachmentType].valueCodeableConcept.coding.code = #radiology-request
// * supportingInfo[0].valueAttachment.extension[attachmentType].valueCodeableConcept.coding.display = "Radiology Request"
// * supportingInfo[0].valueAttachment.contentType = #application/pdf
// * supportingInfo[0].valueAttachment.language = #en
// * supportingInfo[0].valueAttachment.url = "https://api-edi.provider.sha.go.ke/media/edi/2025/11/29/2a1b91f5-14f9-44b0-8860-c8768a6dbeef_CHURCHILL_X-_RAY.pdf"
// * supportingInfo[0].valueAttachment.size = 180894
// * supportingInfo[0].valueAttachment.title = "CHURCHILL X- RAY.pdf"
// * supportingInfo[0].valueAttachment.creation = "2025-11-29T15:17:07+03:00"
// * supportingInfo[1].sequence = 2
// * supportingInfo[1].category.coding.system = "http://terminology.hl7.org/CodeSystem/claiminformationcategory"
// * supportingInfo[1].category.coding.code = #attachment
// * supportingInfo[1].category.coding.display = "Attachment"
// * supportingInfo[1].valueAttachment.extension[attachmentType].url = "https://fhir.sha.go.ke/fhir/CodeSystem/attachment-type"
// * supportingInfo[1].valueAttachment.extension[attachmentType].valueCodeableConcept.coding.system = "https://fhir.sha.go.ke/fhir/CodeSystem/attachment-type"
// * supportingInfo[1].valueAttachment.extension[attachmentType].valueCodeableConcept.coding.code = #other
// * supportingInfo[1].valueAttachment.extension[attachmentType].valueCodeableConcept.coding.display = "Other"
// * supportingInfo[1].valueAttachment.contentType = #application/pdf
// * supportingInfo[1].valueAttachment.language = #en
// * supportingInfo[1].valueAttachment.url = "https://api-edi.provider.sha.go.ke/media/edi/2025/11/29/7f60c367-0df6-44ce-8a38-1c063cbe4f39_CHURCHILL_ID.pdf"
// * supportingInfo[1].valueAttachment.size = 125732
// * supportingInfo[1].valueAttachment.title = "CHURCHILL ID.pdf"
// * supportingInfo[1].valueAttachment.creation = "2025-11-29T15:15:20+03:00"
// * supportingInfo[2].sequence = 3
// * supportingInfo[2].category.coding.system = "http://terminology.hl7.org/CodeSystem/claiminformationcategory"
// * supportingInfo[2].category.coding.code = #attachment
// * supportingInfo[2].category.coding.display = "Attachment"
// * supportingInfo[2].valueAttachment.extension[attachmentType].url = "https://fhir.sha.go.ke/fhir/CodeSystem/attachment-type"
// * supportingInfo[2].valueAttachment.extension[attachmentType].valueCodeableConcept.coding.system = "https://fhir.sha.go.ke/fhir/CodeSystem/attachment-type"
// * supportingInfo[2].valueAttachment.extension[attachmentType].valueCodeableConcept.coding.code = #other
// * supportingInfo[2].valueAttachment.extension[attachmentType].valueCodeableConcept.coding.display = "Other"
// * supportingInfo[2].valueAttachment.contentType = #application/pdf
// * supportingInfo[2].valueAttachment.language = #en
// * supportingInfo[2].valueAttachment.url = "https://api-edi.provider.sha.go.ke/media/edi/2025/11/29/c2d2f4f7-24e8-40ff-b94c-3ea5cc41952a_CHURCHILL_PREAUTH.pdf"
// * supportingInfo[2].valueAttachment.size = 527239
// * supportingInfo[2].valueAttachment.title = "CHURCHILL PREAUTH.pdf"
// * supportingInfo[2].valueAttachment.creation = "2025-11-29T15:14:38+03:00"
// * supportingInfo[3].sequence = 4
// * supportingInfo[3].category.coding.system = "http://terminology.hl7.org/CodeSystem/claiminformationcategory"
// * supportingInfo[3].category.coding.code = #attachment
// * supportingInfo[3].category.coding.display = "Attachment"
// * supportingInfo[3].valueAttachment.extension[attachmentType].url = "https://fhir.sha.go.ke/fhir/CodeSystem/attachment-type"
// * supportingInfo[3].valueAttachment.extension[attachmentType].valueCodeableConcept.coding.system = "https://fhir.sha.go.ke/fhir/CodeSystem/attachment-type"
// * supportingInfo[3].valueAttachment.extension[attachmentType].valueCodeableConcept.coding.code = #other
// * supportingInfo[3].valueAttachment.extension[attachmentType].valueCodeableConcept.coding.display = "Other"
// * supportingInfo[3].valueAttachment.contentType = #application/pdf
// * supportingInfo[3].valueAttachment.language = #en
// * supportingInfo[3].valueAttachment.url = "https://api-edi.provider.sha.go.ke/media/edi/2025/11/29/11aaf8d0-706e-4b40-98f3-85444e7be18f_CHURCHILL_DOCTORS_NOTES.pdf"
// * supportingInfo[3].valueAttachment.size = 161161
// * supportingInfo[3].valueAttachment.title = "CHURCHILL DOCTORS NOTES.pdf"
// * supportingInfo[3].valueAttachment.creation = "2025-11-29T15:13:59+03:00"
// * diagnosis[0].sequence = 1
// * diagnosis[0].diagnosisCodeableConcept.coding.system = "https://fhir.sha.go.ke/fhir/terminology/CodeSystem/icd-11"
// * diagnosis[0].diagnosisCodeableConcept.coding.code = #NC72.5
// * diagnosis[0].diagnosisCodeableConcept.coding.display = "Fracture of shaft of femur"
// * insurance[0].sequence = 1
// * insurance[0].focal = true
// * insurance[0].coverage.reference = "https://fhir.sha.go.ke/fhir/Coverage/CR1569230130821-1-sha-coverage"
// * item[0].extension[shaCoverage].url = "https://fhir.sha.go.ke/fhir/StructureDefinition/Coverage/sha-coverage"
// * item[0].extension[shaCoverage].valueReference.reference = "https://fhir.sha.go.ke/fhir/Coverage/CR1569230130821-1-sha-coverage"
// * item[0].sequence = 1
// * item[0].category.coding.system = "https://fhir.sha.go.ke/fhir/CodeSystem/category-codes"
// * item[0].category.coding.code = #procedure
// * item[0].category.coding.display = "Procedure"
// * item[0].productOrService.coding.system = "https://fhir.sha.go.ke/fhir/CodeSystem/intervention-codes"
// * item[0].productOrService.coding.code = #SHA-19-444
// * item[0].productOrService.coding.display = "Open reduction and internal fixation: Femur"
// * item[0].servicedPeriod.start = "2025-11-29T15:08:36+03:00"
// * item[0].servicedPeriod.end = "2026-02-27T15:08:36+03:00"
// * item[0].quantity.value = 1
// * item[0].unitPrice.value = 1
// * item[0].unitPrice.currency = #KES
// * item[0].factor = 1
// * item[0].net.value = 145600
// * item[0].net.currency = #KES
// * total.value = 0
// * total.currency = #KES