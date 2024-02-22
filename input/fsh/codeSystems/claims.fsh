CodeSystem:   KNHTS.CLMSTS
Title:        "KNHTS.CLMS CodeSystem for claim status"
Description:  "CodeSystem for KNHTS Claim status"

* ^experimental = false
* ^caseSensitive = false
* ^name = "KNHTS_CLMS"
* #STS01 "NEW" "Active"
* #STS02 "NOTIFIED" "Identification done and payor notified"
* #STS03 "PREAUTHORIZED" "Pre-authorization done.*"
* #STS04 "COMPLETE" "Provider has checked that all requirements are met and the claim is ready for submission. Done at the end of a visit / after discharge."
* #STS05 "CANCELLED" "Cancelled at provider, before submission."
* #STS06 "SUBMITTED" "Submitted to payer."
* #STS07 "RECEIVED" "Received at payer."
* #STS08 "APPROVED" "Approved"
* #STS09 "REJECTED" "The payer has indicated that the claim will not be paid."
* #STS10 "PAID" "The claim has been paid and the payee should expect to receive or have received  a remittance."
* #STS11 "EXPIRED" "Expired"
* #STS12 "QA" "The claim is undergoing review."

