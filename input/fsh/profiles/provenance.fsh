Profile: KenyaCoreProvenance
Parent: Provenance
Id: kenya-core-provenance
Title: "Kenya Core Provenance Profile"
Description: "Kenya Core profile for Provenance, used to track the origin, authorship, and handling of clinical and administrative resources exchanged within Kenya FHIR implementation guides."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.dha.go.ke/ig/core/StructureDefinition/kenya-core-provenance"

* target 1..* MS
* target only Reference(Resource)
* target ^short = "Resource(s) this provenance record describes"

* occurred[x] 0..1 MS
* occurred[x] ^short = "When the activity occurred"

* recorded 1..1 MS
* recorded ^short = "When the activity was recorded / updated"

* policy 0..* MS
* policy ^short = "Policy or plan the activity was defined by"

* location 0..1 MS
* location only Reference(KenyaCoreLocation)
* location ^short = "Where the activity occurred"

* insert CodeableConceptRule(reason, 0..*, MS)
* reason ^short = "Reason the activity took place"

* insert CodeableConceptRule(activity, 0..1, MS)
* activity from http://hl7.org/fhir/ValueSet/provenance-activity-type (extensible)
* activity ^short = "Activity that occurred, e.g. create, update, verify"

* agent 1..* MS
* agent ^short = "Actor involved"

* insert CodeableConceptRule(agent.type, 0..1, MS)
* agent.type from http://hl7.org/fhir/ValueSet/provenance-agent-type (extensible)
* agent.type ^short = "How the agent participated"

* insert CodeableConceptRule(agent.role, 0..*, MS)
* agent.role from http://hl7.org/fhir/ValueSet/security-role-type (extensible)
* agent.role ^short = "What the agents role was"

* agent.who 1..1 MS
* agent.who only Reference(KenyaCorePractitioner or KenyaCorePractitionerRole or KenyaCoreOrganization or KenyaCorePatient or KenyaCoreDevice)
* agent.who ^short = "Who the agent is"

* agent.onBehalfOf 0..1 MS
* agent.onBehalfOf only Reference(KenyaCoreOrganization)
* agent.onBehalfOf ^short = "Organization the agent acted on behalf of"

* entity 0..* MS
* entity.role 1..1 MS
* entity.role ^short = "derivation | revision | quotation | source | removal"
* entity.what 1..1 MS
* entity.what ^short = "Identity of the source entity"
