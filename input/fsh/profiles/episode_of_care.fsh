/*
EpisodeOfCare	EpisodeOfCare.meta.profile	1..*	canonical	Kenya Core EpisodeOfCare profile		`.../StructureDefinition/kenya-core-episodeofcare																		
EpisodeOfCare	EpisodeOfCare.status	1..1	code	Episode status	http://hl7.org/fhir/ValueSet/episode-of-care-status	active, finished																		
EpisodeOfCare	EpisodeOfCare.type	0..*	CodeableConcept	Program/episode type (e.g., MCH, HIV program)	(Kenya program VS)	ANC, ART																		
EpisodeOfCare	EpisodeOfCare.patient	1..1	Reference(Patient)	Patient																				
EpisodeOfCare	EpisodeOfCare.managingOrganization	0..1	Reference(Organization)	Organization managing																				
EpisodeOfCare	EpisodeOfCare.period	0..1	Period	Episode timeframe																				
EpisodeOfCare	EpisodeOfCare.careManager	0..1	Reference(PractitionerRole)	Responsible clinician																				
EpisodeOfCare	EpisodeOfCare.diagnosis.condition	0..*	Reference(Condition)	Underlying condition(s)																				
*/ 

Profile: KenyaCoreEpisodeOfCare
Parent: EpisodeOfCare
Id: kenya-core-episodeofcare
Title: "Kenya Core EpisodeOfCare Profile"
Description: "An association between a patient and an organization / healthcare provider during which time encounters may occur and healthcare services are provided."
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-episodeofcare|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-episodeofcare|1.0.0"
* status 1..1 MS
* type 0..* MS
* patient 1..1 MS
* managingOrganization 0..1 MS
* period 0..1 MS
* careManager 0..1 MS
* diagnosis 0..* MS
* diagnosis.condition 1..1 MS
* diagnosis.condition only Reference(Condition) // Apply ReferenceRule

