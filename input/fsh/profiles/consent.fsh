Profile: KenyaCoreConsent
Parent: Consent
Id: kenya-core-consent
Title: "Kenya Core Consent Profile"
Description: "Kenya Core profile for recording a patient's consent, e.g. consent to treatment, consent to data sharing with the Social Health Authority, or consent to research."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-consent|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-consent|1.0.0"

* insert IdentifierRequiredRule(identifier, 0..*)

* status 1..1 MS
* status ^short = "draft | proposed | active | rejected | inactive | entered-in-error"

* insert CodeableConceptRule(scope, 1..1, MS)
* scope ^short = "adr | research | patient-privacy | treatment"

* insert CodeableConceptRule(category, 1..*, MS)
* category ^short = "Classification of the consent statement"

* insert ReferenceRule(patient, KenyaCorePatient, 1..1)
* patient ^short = "Who the consent applies to"

* dateTime 0..1 MS
* dateTime ^short = "When this Consent was created or indexed"

* performer 0..* MS
* performer only Reference(KenyaCorePatient or KenyaCorePractitioner or KenyaCorePractitionerRole or KenyaCoreRelatedPerson or KenyaCoreOrganization)
* performer ^short = "Who is agreeing to the policy and rules"

* insert ReferenceRule(organization, KenyaCoreOrganization, 0..*)
* organization ^short = "Custodian of the consent"

* sourceReference 0..1 MS
* sourceReference only Reference(KenyaCoreDocumentReference)
* sourceReference ^short = "Source from which this consent is taken"

* policyRule 0..1 MS
* policyRule ^short = "Regulation that this consents to"

* provision 0..1 MS
* provision.type 0..1 MS
* provision.period 0..1 MS
* provision.actor 0..* MS
* provision.actor.role 1..1 MS
* provision.actor.reference 1..1 MS
* provision.actor.reference only Reference(KenyaCorePractitioner or KenyaCorePractitionerRole or KenyaCoreOrganization or KenyaCorePatient or KenyaCoreRelatedPerson)
* provision.action 0..* MS
* provision.purpose 0..* MS
* provision ^short = "Constraints to the base Consent.policyRule"
