/*
DiagnosticReport	DiagnosticReport.meta.profile	1..*	canonical	Kenya Core DiagnosticReport profile		`.../StructureDefinition/kenya-core-diagnosticreport																		
DiagnosticReport	DiagnosticReport.status	1..1	code	Report status	http://hl7.org/fhir/ValueSet/diagnostic-report-status	final																		
DiagnosticReport	DiagnosticReport.category	0..*	CodeableConcept	Lab vs imaging, etc.	http://hl7.org/fhir/ValueSet/diagnostic-service-sections	LAB																		
DiagnosticReport	DiagnosticReport.code	1..1	CodeableConcept	LOINC investigation codes	https://nhts.dha.go.ke/orgs/Regenstrief-Institute/sources/LOINC/	CBC panel																		
DiagnosticReport	DiagnosticReport.subject	1..1	Reference(Patient)	Patient																				
DiagnosticReport	DiagnosticReport.encounter	0..1	Reference(Encounter)	Context																				
DiagnosticReport	DiagnosticReport.effective[x]	0..1	dateTime/Period	Clinically relevant time																				
DiagnosticReport	DiagnosticReport.issued	0..1	instant	Release time																				
DiagnosticReport	DiagnosticReport.performer	0..*	Reference(Organization/PractitionerRole)	Performing lab																				
DiagnosticReport	DiagnosticReport.result	0..*	Reference(Observation)	Result observations		Reference(KenyaCoreObservation)																		
*/ 

Profile: KenyaCoreDiagnosticReport
Parent: DiagnosticReport
Id: kenya-core-diagnosticreport
Title: "Kenya Core DiagnosticReport Profile"
Description: "DiagnosticReport profile for Kenya Core."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-diagnosticreport|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-diagnosticreport|1.0.0"
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/diagnostic-report-status
* category 0..* MS
* category from http://hl7.org/fhir/ValueSet/diagnostic-service-sections
* code 1..1 MS
* code from https://nhts.dha.go.ke/orgs/Regenstrief-Institute/sources/LOINC/
* subject 1..1 MS
* subject only Reference(KenyaCorePatient)
* encounter 0..1 MS
* effective[x] 0..1 MS
* issued 0..1 MS
* performer 0..* MS
* result 0..* MS
* insert ReferenceRule(result, Observation, 1..*)
