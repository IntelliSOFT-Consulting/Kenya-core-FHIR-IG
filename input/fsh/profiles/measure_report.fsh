Profile: KenyaCoreMeasureReport
Parent: MeasureReport
Id: kenya-core-measurereport
Title: "Kenya Core MeasureReport Profile"
Description: "Kenya Core profile for the results of calculating a Measure over a period, at either an individual or a population/summary level, e.g. facility monthly indicator reports submitted to SHA."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-measurereport|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-measurereport|1.0.0"

* insert IdentifierRequiredRule(identifier, 0..*)

* status 1..1 MS
* status ^short = "complete | pending | error"

* type 1..1 MS
* type ^short = "individual | subject-list | summary | data-collection"

* measure 1..1 MS
* measure only Canonical(KenyaCoreMeasure)
* measure ^short = "What measure was calculated"

* subject 0..1 MS
* subject only Reference(KenyaCorePatient or KenyaCoreLocation or Group)
* subject ^short = "What individual(s) the report is for"

* date 0..1 MS
* date ^short = "When the report was generated"

* insert ReferenceRule(reporter, KenyaCoreOrganization, 0..1)
* reporter ^short = "Who is reporting the data"

* period 1..1 MS
* period ^short = "What period the report covers"

* group 0..* MS
* group.population 0..* MS
* group.population.count 0..1 MS
* group ^short = "Measure results for each group"

* evaluatedResource 0..* MS
* evaluatedResource ^short = "What data was used to calculate the measure score"
