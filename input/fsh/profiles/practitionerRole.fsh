Profile: KenyaCorePractitionerRole
Parent: PractitionerRole
Id: kenya-core-practitionerrole
Title: "KenyaCore PractitionerRole Profile"
Description: "PractitionerRole linking practitioners to organizations and roles."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..1
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/practitioner-role|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/practitioner-role|1.0.0"

* practitioner 1..1 MS
* practitioner only Reference(KenyaCorePractitioner)

* organization 0..1 MS
* organization only Reference(KenyaCoreOrganization)

* code 0..* MS
* code from PractitionerRolesVS 

* specialty 0..* MS
* specialty from PractitionerSpecialtiesVS