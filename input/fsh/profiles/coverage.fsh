Profile: KenyanCoverage
Parent: Coverage
Id: kenyan-coverage
Title: "Coverage Profile"
Description: "The Coverage profile is intended to provide the identifiers and descriptors of a specific insurance plan for a specific individual - essentially the insurance card information. This may alternately provide the individual or organization, selfpay, which will pay for products and services rendered."
* identifier 1..1 MS

* status 1..1 MS
* status from ClaimsStatusVS

* subscriber 1..1 MS
* subscriber only Reference(KenyaPatient)
  * ^definition = "This will be the principal member"

* subscriberId 1..1 MS

* beneficiary 1..1 MS
* beneficiary only Reference(KenyaPatient)
* beneficiary ^definition = "The actual patient covered, who may not be the same as the principal member / family head."

* relationship 0..1 MS

* period  0..1 MS
