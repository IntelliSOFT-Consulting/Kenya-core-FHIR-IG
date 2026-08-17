Profile: KenyaCoreMeasure
Parent: Measure
Id: kenya-core-measure
Title: "Kenya Core Measure Profile"
Description: "Kenya Core profile for a quality/performance Measure definition, e.g. HIV viral suppression rate, ANC 4th visit coverage, used for reporting to the Social Health Authority and MOH."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.dha.go.ke/ig/core/StructureDefinition/kenya-core-measure"

* url 1..1 MS
* url ^short = "Canonical identifier for this measure"

* insert IdentifierRequiredRule(identifier, 0..*)

* version 0..1 MS
* name 1..1 MS
* name ^short = "Computer-friendly name for the measure"

* title 1..1 MS
* title ^short = "Human-readable name for the measure"

* status 1..1 MS
* status ^short = "draft | active | retired | unknown"

* experimental 0..1 MS
* date 0..1 MS
* publisher 0..1 MS
* description 1..1 MS
* description ^short = "What the measure is about and why it is being reported"

* useContext 0..* MS

* library 0..* MS
* library ^short = "Logic used by the measure"

* insert CodeableConceptRule(scoring, 0..1, MS)
* scoring ^short = "proportion | ratio | continuous-variable | cohort"

* insert CodeableConceptRule(type, 0..*, MS)
* type ^short = "process | outcome | structure | patient-reported-outcome | composite"

* rationale 0..1 MS
* improvementNotation 0..1 MS

* group 0..* MS
* group.population 0..* MS
* group.population.code 0..1 MS
* group.population.criteria 1..1 MS
* group ^short = "Population criteria group"
