Profile: KenyaCorePractitionerRole
Parent: PractitionerRole
Id: kenya-core-practitionerrole
Title: "KenyaCore PractitionerRole"
Description: "PractitionerRole linking practitioners to organizations and roles."

// Meta - Add profile reference
* meta.profile 1..1
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/practitioner-role|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/practitioner-role|1.0.0"

* practitioner 1..1 MS
* organization 0..1 MS
* code 0..* MS
* specialty 0..* MS