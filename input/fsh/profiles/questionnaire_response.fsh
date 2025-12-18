Profile: KenyaCoreQuestionnaireResponse
Parent: QuestionnaireResponse
Id: kenya-core-questionnaireresponse
Title: "Kenya Core QuestionnaireResponse Profile"
Description: "QuestionnaireResponse profile for Kenya Core."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-questionnaireresponse|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-questionnaireresponse|1.0.0"
* questionnaire 1..1 MS
* questionnaire ^short = "Questionnaire definition"
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/questionnaire-answers-status
* subject 1..1 MS
* subject ^short = "Patient"
* subject only Reference(KenyaCorePatient)
* encounter 0..1 MS
* encounter ^short = "Encounter context"
* authored 0..1 MS
* authored ^short = "When captured"
* author 0..1 MS
* author ^short = "Who filled"
* item 1..* MS
* item ^short = "answers"