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


//Claims Response

CodeSystem:   KNHTS.CLMSRSPSTS
Title:        "KNHTS.CLMSRSP CodeSystem for claim response status"
Description:  "CodeSystem for KNHTS Claim status"

* ^experimental = false
* ^caseSensitive = false
* ^name = "KNHTS_CLMS_RSP"
* #STS01 "NEW" "New Claims response"
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


//Claims Response

CodeSystem:   KNHTS.CLMSTYPS
Title:        "KNHTS.CLMSTPS CodeSystem for claim types"
Description:  "CodeSystem for KNHTS Claim types"

* ^experimental = false
* ^caseSensitive = false
* ^name = " KNHTS_CLMS_TYPS"

* #CLMTPS01 "OUTPATIENT" "Claim for outpatient services."
* #CLMTPS02 "INPATIENT" "Claim for in-patient services."
* #CLMTPS03 "DAY_CASE" "Claim for day case services e.g. day surgery."


CodeSystem:   KNHTS.CLMSSBTYPS
Title:        "KNHTS.CLMSTPS CodeSystem for claim Sub-types"
Description:  "CodeSystem for KNHTS Claim Sub-types"

* ^experimental = false
* ^caseSensitive = false
* ^name = " KNHTS_CLMS_SBTYPS"

* #CLMSBTPS01 "PHC_OUTPATIENT" "Outpatient Health Services (Primary Healthcare Fund)"
* #CLMSBTPS02 "PHC_EAR" "Ear Health Services (Primary Healthcare Fund)"
* #CLMSBTPS03 "PHC_EYE" "Eye Health Services (Primary Healthcare Fund)"
* #CLMSBTPS04 "PHC_MENTAL" "Mental and Behavioral Health Services (Primary Healthcare Fund)"
* #CLMSBTPS05 "PHC_SCREENING" "Screening Services (Primary Healthcare Fund)"
* #CLMSBTPS06 "PHC_REHABILITATIVE" "Rehabilitative Services (Primary Healthcare Fund)"
* #CLMSBTPS07 "PHC_ASSISTIVE" "Assistive Devices (Primary Healthcare Fund)"
* #CLMSBTPS08 "PHC_MATERNITY" "Maternity Healthcare Services (Primary Healthcare Fund)"
* #CLMSBTPS09 "PHC_INPATIENT" "Inpatient Services (Primary Healthcare Fund)"
* #CLMSBTPS10 "PHC_LAST_EXPENSE" "Last Expense (Primary Healthcare Fund)"
* #CLMSBTPS11 "SHIF_OUTPATIENT" "Outpatient (Social Health Insurance Fund)"
* #CLMSBTPS12 "SHIF_INPATIENT" "Inpatient (Social Health Insurance Fund)"
* #CLMSBTPS13 "SHIF_MATERNITY" "Maternity (Social Health Insurance Fund)"
* #CLMSBTPS14 "SHIF_SURGICAL" "Surgical (Social Health Insurance Fund)"
* #CLMSBTPS15 "SHIF_NCD" "NCD Screening (Social Health Insurance Fund)"
* #CLMSBTPS16 "SHIF_CONGENITAL" "Congenital Screening (Social Health Insurance Fund)"
* #CLMSBTPS17 "SHIF_REHABILITATION" "Rehabilitation Services (Social Health Insurance Fund)"
* #CLMSBTPS18 "SHIF_CRITICAL_CARE" "Critical Care Services (Social Health Insurance Fund)"
* #CLMSBTPS19 "SHIF_PALLIATIVE_CARE" "Palliative Care Services (Social Health Insurance Fund)"
* #CLMSBTPS20 "SHIF_RADIOLOGY" "Radiology Services (Social Health Insurance Fund)"
* #CLMSBTPS21 "SHIF_CANCER_MANAGEMENT" "Cancer Management (Social Health Insurance Fund)"
* #CLMSBTPS22 "SHIF_ASSISTIVE_DEVICES" "Assistive Devices (Social Health Insurance Fund)"
* #CLMSBTPS23 "SHIF_OVERSEAS_TREATMENT" "Overseas Treatment (Social Health Insurance Fund)"
* #CLMSBTPS24 "SHIF_MORTUARY_FEE" "Mortuary Fee (Social Health Insurance Fund)"
* #CLMSBTPS25 "SHIF_DIALYSIS" "Dialysis Services (Social Health Insurance Fund)"
* #CLMSBTPS26 "SHIF_TRANSPLANT" "Transplant Services (Social Health Insurance Fund)"
* #CLMSBTPS29 "ECCIF_CHRONIC" "Chronic Illness Fund (Chronic and Critical Illness Fund)"
* #CLMSBTPS30 "ECCIF_AMBULANCE" "Ambulance Services (Emergency Fund)"


CodeSystem:   KNHTS.CLMSZONE
Title:        "KNHTS.CLMSZONE CodeSystem for claim Zones"
Description:  "CodeSystem for KNHTS Claim Zones"

* ^experimental = false
* ^caseSensitive = false
* ^name = " KNHTS_CLMS_ZONES"

* #CLMSZONE01 "Zone 1" "Mandera, Samburu, Nairobi"
* #CLMSZONE02 "Zone 2" "Kiambu, Nakuru, Muranga"
* #CLMSZONE03 "Zone 3" "Trans Nzoia, Kakamega, Bungoma, Busia, Turkana"
* #CLMSZONE04 "Zone 4" "Siaya, Meru, Embu, Isiolo, Tharaka Nithi, Garissa"
* #CLMSZONE05 "Zone 5" "Nyeri, Wajir, Makueni, Kwale, Taita Taveta, Kajiado, Kisii, Nyamira, Bomet"
* #CLMSZONE06 "Zone 6" "Kirinyaga, Kitui, Machakos, Nyandarua, Laikipia, Kisumu"
* #CLMSZONE07 "Zone 7" "Marsabit, Narok,  Nandi,  Kericho, Baringo, Uasin Gishu, West Pokot, Elgeyo Marakwet, Vihiga"
* #CLMSZONE08 "Zone 8" "Migori, Homabay, Lamu, Kilifi, Mombasa, Tana River"


CodeSystem:   KNHTS.CLMSACCOMODATIONTYPE
Title:        "KNHTS.CLMSACCOMODATIONTYPE CodeSystem for claim accomodation type"
Description:  "CodeSystem for KNHTS Claim Accomodation Types"

* ^experimental = false
* ^caseSensitive = false
* ^name = " KNHTS_CLMS_ACCOMODATIONTYPES"

* #CLMSACCTYPES01 "FEMALE_MEDICAL" "Female Medical"
* #CLMSACCTYPES02 "MALE_MEDICAL" "Male Medical"
* #CLMSACCTYPES03 "FEMALE_SURGICAL" "Female Surgical"
* #CLMSACCTYPES04 "MALE_SURGICAL" "Male Surgical"
* #CLMSACCTYPES05 "GYNAECOLOGY" "Gynaecology"
* #CLMSACCTYPES06 "MATERNITY" "Maternity"
* #CLMSACCTYPES07 "NBU" "New Born Unit"
* #CLMSACCTYPES08 "PSYCHIATRIC" "Psychiatric Unit"
* #CLMSACCTYPES09 "BURNS" "Burns"
* #CLMSACCTYPES10 "ICU" "Intensive Care Unit"
* #CLMSACCTYPES11 "HDU" "High Dependency Unit"
* #CLMSACCTYPES12 "NICU" "Neonatal Intensive Care Unit"
* #CLMSACCTYPES13 "ISOLATION" "Isolation"


CodeSystem:   KNHTS.CLMSDISP
Title:        "KNHTS.CLMSDISP CodeSystem for claim disposition"
Description:  "CodeSystem for KNHTS Claim Disposition"

* ^experimental = false
* ^caseSensitive = false
* ^name = " KNHTS_CLMS_DISPOSITION"

* #CLMSDISP01 "Improved" "Improved"
* #CLMSDISP02 "Recovered" "Recovered"
* #CLMSDISP03 "Against_Advice" "Leave against/discharged against medical advice"
* #CLMSDISP04 "Absconded" "Absconded"
* #CLMSDISP05 "DIED" "DIED"



