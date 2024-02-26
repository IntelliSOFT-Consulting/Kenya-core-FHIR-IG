Alias: $Kenya-organization-ips = http://example.org/StructureDefinition/Kenya-organization-ips

Profile: CoverageProfile
Parent: Coverage
Id: Coverage-ke
Title: "Coverage"
Description: "Standardise the format of the coverage status."
* identifier 1..1 MS
* ^status = #active
* status from ClaimsStatusVS
* subscriber only Reference($Patient-ips)
* subscriber ^definition = "This will be the principal member / family head."
* subscriberId MS
* beneficiary only Reference($Patient-ips)
* beneficiary ^definition = "The actual patient covered, who may not be the same as the principal member / family head."
* relationship 1..1
* period  1..1
* network MS
//* insurer only Reference($Kenya-organization-ips)
//* class 0..* BackboneElement "Additional coverage classifications"

