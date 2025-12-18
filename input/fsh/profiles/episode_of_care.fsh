Profile: KenyaCoreEpisodeOfCare
Parent: EpisodeOfCare
Id: kenya-core-episodeofcare
Title: "Kenya Core EpisodeOfCare Profile"
Description: "An association between a patient and an organization / healthcare provider during which time encounters may occur and healthcare services are provided."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-episodeofcare|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-episodeofcare|1.0.0"
* status 1..1 MS
* status from EpisodeOfCareStatusVS
* type 0..* MS
* type from EpisodeOfCareTypeVS
* patient 1..1 MS
* patient only Reference(KenyaCorePatient)
* managingOrganization 0..1 MS
* period 0..1 MS
* careManager 0..1 MS
* diagnosis 0..* MS
* diagnosis.condition 1..1 MS
* diagnosis.condition only Reference(Condition) 

