ValueSet: AdministrativeGenderVS
Id: administrative-gender-vs
Title: "Administrative Gender Value Set"
Description: "Administrative Gender Value Set"
* ^url = "https://fhir.dha.go.ke/core/ValueSet/administrative-gender-vs"
* ^status = #active
* ^experimental = false
* include codes from system http://hl7.org/fhir/administrative-gender

ValueSet: NZEthnicGroupLevel4VS
Id: nz-ethnic-group-level-4-vs
Title: "Nationality Value Set"
Description: "Nationality Value Set"
* ^url = "https://fhir.dha.go.ke/core/ValueSet/nz-ethnic-group-level-4-vs"
* ^status = #active
* ^experimental = false
* include codes from system CountryCodesCS

ValueSet: EpisodeOfCareStatusVS
Id: episode-of-care-status-vs
Title: "Episode of Care Status Value Set"
Description: "Episode of Care Status Value Set"
* ^url = "https://fhir.dha.go.ke/core/ValueSet/episode-of-care-status-vs"
* ^status = #active
* ^experimental = false
* include codes from system http://hl7.org/fhir/episode-of-care-status

ValueSet: EpisodeOfCareTypeVS
Id: episode-of-care-type-vs
Title: "Episode of Care Type Value Set"
Description: "Episode of Care Type Value Set"
* ^url = "https://fhir.dha.go.ke/core/ValueSet/episode-of-care-type-vs"
* ^status = #active
* ^experimental = false
* include codes from system EpisodeOfCareTypeCS

ValueSet: RelatedPersonRelationshipVS
Id: related-person-relationship-vs
Title: "Related Person Relationship Value Set"
Description: "Related Person Relationship Value Set"
* ^url = "https://fhir.dha.go.ke/core/ValueSet/related-person-relationship-vs"
* ^status = #active
* ^experimental = false
* include codes from system RelatedPersonRelationshipCS

ValueSet: EncounterStatusVS
Id: encounter-status-vs
Title: "Encounter Status Value Set"
Description:  "Encounter Status Value Set"
* ^url = "https://fhir.dha.go.ke/core/ValueSet/encounter-status-vs"
* ^status = #active
* ^experimental = false
* http://hl7.org/fhir/encounter-status#in-progress "In Progress"
* http://hl7.org/fhir/encounter-status#finished "Finished"

ValueSet: EncounterTypeVS
Id: encounter-type-vs
Title: "Encounter Type Value Set"
Description: "Encounter Type Value Set"
* ^url = "https://fhir.dha.go.ke/core/ValueSet/encounter-type-vs"
* ^status = #active
* ^experimental = false
* include codes from system EncounterTypeCS
