// ============================================================================
// ValueSets consolidated into Kenya Core from sibling Kenya FHIR IGs
// (Kenya-ePrescription-IG, Kenya-eClaims-FHIR-IG, Kenya-Patient-Summary-FHIR-IG)
// because they are shared/duplicated across 2+ implementation guides.
// ============================================================================

ValueSet: ProcedureCodeVS
Id: procedure-code
Title: "Procedure Code ValueSet"
Description: "Clinical procedure codes for care plan activities and service requests."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/procedure-code"
* ^status = #active
* ^experimental = false
* include codes from system ProcedureCodeCS



ValueSet: ConditionSeverityVS
Id: condition-severity
Title: "Condition Severity ValueSet"
Description: "Severity codes for Condition resources."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/condition-severity"
* ^status = #active
* ^experimental = false
* include codes from system ConditionSeverityCS



ValueSet: GenericProductsVS
Id: generic-products-vs
Title: "Generic Products ValueSet"
Description: "Generic medicinal product codes drawn from the MOH PPB generic products code system."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/generic-products-vs"
* ^status = #active
* ^experimental = false
* include codes from system GenericProductsCS


// ============================================================================
// MOH-KENYA local ValueSets
// ============================================================================


ValueSet: ConditionCodesVS
Id: condition-codes-vs
Title: "Condition Codes ValueSet"
Description: "Codes for clinical conditions and diagnoses. References ICD-10 pending population of the MOH-KENYA CONDITION-CODES OCL collection."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/condition-codes-vs"
* ^status = #active
* ^experimental = false
* include codes from system http://hl7.org/fhir/sid/icd-10


// Local placeholder; system per WHO FHIR IG. Preferred binding — codes accepted
// even when the tx server cannot enumerate the full ICD-11 hierarchy.

ValueSet: CarePlanCategoryVS
Id: care-plan-category
Title: "Care Plan Category ValueSet"
Description: "Category codes for care plan types."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/care-plan-category"
* ^status = #active
* ^experimental = false
* include codes from system CarePlanCategoryCS



ValueSet: UnitOfMeasureVS
Id: unit-of-measure-vs
Title: "Unit of Measure ValueSet"
Description: "Codes for units of measure used in medication dosing, drawn from the MOH PPB unit of measure code system."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/unit-of-measure-vs"
* ^status = #active
* ^experimental = false
* include codes from system UnitOfMeasureCS



ValueSet: RouteOfAdministrationVS
Id: route-of-administration-vs
Title: "Route of Administration ValueSet"
Description: "Codes for route of administration of medications, drawn from the MOH PPB route of administration code system."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/route-of-administration-vs"
* ^status = #active
* ^experimental = false
* include codes from system RouteOfAdministrationCS



ValueSet: MedicationRequestStatusVS
Id: medication-request-status-vs
Title: "MedicationRequest Status ValueSet"
Description: "ValueSet containing status codes for MedicationRequest."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/medication-request-status-vs"
* ^status = #active
* ^experimental = false
* include codes from system MedicationRequestStatusCS



ValueSet: MedicationRequestStatusReasonVS
Id: medication-request-status-reason
Title: "MedicationRequest Status Reason ValueSet"
Description: "Reasons for a MedicationRequest status change."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/medication-request-status-reason"
* ^status = #active
* ^experimental = false
* include codes from system MedicationRequestStatusReasonCS



ValueSet: MedicationRequestPriorityVS
Id: medication-request-priority-vs
Title: "Medication Request Priority ValueSet"
Description: "ValueSet for priority levels in the MedicationRequest workflow."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/medication-request-priority-vs"
* ^status = #active
* ^experimental = false
* include codes from system MedicationRequestPriorityCS



ValueSet: MedicationAdminStatusReasonVS
Id: medication-admin-status-reason
Title: "MedicationAdministration Status Reason ValueSet"
Description: "Reasons for a MedicationAdministration status."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/medication-admin-status-reason"
* ^status = #active
* ^experimental = false
* include codes from system MedicationAdminStatusReasonCS



ValueSet: MedAdminRouteVS
Id: med-admin-route
Title: "Medication Administration Route ValueSet"
Description: "Route of administration codes for MedicationAdministration, sourced from MOH PPB OCL RouteOfAdministration collection. Replaces SNOMED CT route-codes binding from base FHIR R4."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/med-admin-route"
* ^status = #active
* ^experimental = false
* include codes from system MedAdminRouteCS



ValueSet: ManifestationVS
Id: manifestation
Title: "Manifestation or Symptom ValueSet"
Description: "Clinical manifestations and symptoms."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/manifestation"
* ^status = #active
* ^experimental = false
* include codes from system ManifestationCS



ValueSet: ICD11VS
Id: icd11
Title: "ICD-11 Codes ValueSet"
Description: "All codes from the WHO International Classification of Diseases, 11th Revision (ICD-11)."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/icd11"
* ^status = #active
* ^experimental = false
* include codes from system ICD11CodesCS



ValueSet: ActiveComponentsVS
Id: active-components-vs
Title: "Active Components ValueSet"
Description: "Active pharmaceutical ingredient codes drawn from the MOH PPB active components code system."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/active-components-vs"
* ^status = #active
* ^experimental = false
* include codes from system ActiveComponentsCS



ValueSet: ClaimStatusVS
Id: eclaim-status-vs
Title: "Claim Status ValueSet"
Description: "ValueSet for claim status codes (MOH-Kenya OCL: CLAIM-STATUS)"
* ^url = "https://fhir.dha.go.ke/core/ValueSet/eclaim-status-vs"
* ^status = #active
* ^experimental = false
* include codes from system ClaimStatusCS



ValueSet: ClaimTypeVS
Id: eclaim-type-vs
Title: "Claim Type ValueSet"
Description: "ValueSet for claim type codes (MOH-Kenya OCL: CLAIM-TYPE)"
* ^url = "https://fhir.dha.go.ke/core/ValueSet/eclaim-type-vs"
* ^status = #active
* ^experimental = false
* include codes from system ClaimTypeCS



ValueSet: ClaimUseVS
Id: eclaim-use-vs
Title: "Claim Use ValueSet"
Description: "ValueSet for intended use of a claim (MOH-Kenya OCL: CLAIM-USE)"
* ^url = "https://fhir.dha.go.ke/core/ValueSet/eclaim-use-vs"
* ^status = #active
* ^experimental = false
* include codes from system ClaimUseCS



ValueSet: CoverageTypeVS
Id: eclaims-coverage-type-vs
Title: "Coverage Type ValueSet"
Description: "ValueSet for insurance coverage type codes (MOH-Kenya OCL: COVERAGE-TYPE)"
* ^url = "https://fhir.dha.go.ke/core/ValueSet/eclaims-coverage-type-vs"
* ^status = #active
* ^experimental = false
* include codes from system CoverageTypeCS


ValueSet: ReferralSourceVS
Id: referral-source-vs
Title: "Source of Referral Value Set"
Description: "Indicates the source from which a client was referred: community, health provider, or self-referral."
* ^url = "https://fhir.dha.go.ke/core/ValueSet/referral-source-vs"
* ^status = #active
* ^experimental = false
* include codes from system ReferralSourceCS
