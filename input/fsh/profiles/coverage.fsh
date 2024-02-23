Alias: $Kenya-organization-ips = http://example.org/StructureDefinition/Kenya-organization-ips
Alias: $kenya-payors-extension = http://example.org/StructureDefinition/kenya-payors-extension

Profile: CoverageProfile
Parent: Coverage
Id: Coverage-ke
Title: "Coverage"
Description: "Standardise the format of the coverage status."
* identifier 1..1 MS
* extension contains
    $kenya-payors-extension named paymentBy 1..* and
    $kenya-payors-extension named insurer 1..1
* ^status = #active
* status from ClaimsStatusVS
* subscriber only Reference($Patient-ips)
* subscriber ^definition = "This will be the principal member / family head."
* subscriberId MS
* beneficiary only Reference($Patient-ips)
* beneficiary ^definition = "The actual patient covered, who may not be the same as the principal member / family head."
* relationship 1..1
* period  1..1
//* insurer only Reference($Kenya-organization-ips)

