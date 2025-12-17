CodeSystem: CountryCodesCS
Id: countries
Title: "Country Codes"
Description: "A code system representing country codes."
* ^status = #active
* ^content = #complete
* #ALBANIAN "Albanian"
* #AFGHAN "Afghan"
* #ALGERIAN "Algerian"
* #ARGENTINE "Argentine"
* #AUSTRIAN "Austrian"
* #AUSTRALIAN "Australian"
* #BANGLADESHI "Bangladeshi"
* #BELGIAN "Belgian"
* #BRAZILIAN "Brazilian"
* #CANADIAN "Canadian"
* #CHILEAN "Chilean"
* #BULGARIAN "Bulgarian"
* #CHINESE "Chinese"
* #COLOMBIAN "Colombian"
* #CROATIAN "Croatian"
* #CZECH "Czech"
* #DANISH "Danish"
* #EGYPTIAN "Egyptian"
* #FINNISH "Finnish"
* #FRENCH "French"
* #GERMAN "German"
* #GREEK "Greek"
* #HUNGARIAN "Hungarian"
* #INDIAN "Indian"
* #INDONESIAN "Indonesian"
* #IRAQI "Iraqi"
* #IRANIAN "Iranian"
* #IRISH "Irish"
* #ISRAELI "Israeli"
* #ITALIAN "Italian"
* #JAPANESE "Japanese"
* #JORDANIAN "Jordanian"
* #MALAYSIAN "Malaysian"
* #MEXICAN "Mexican"
* #KUWAITI "Kuwaiti"
* #LEBANESE "Lebanese"
* #MOROCCAN "Moroccan"
* #DUTCH "Dutch"
* #NEW-ZEALAND "New Zealand"
* #NIGERIAN "Nigerian"
* #PAKISTANI "Pakistani"
* #NORWEGIAN "Norwegian"
* #POLISH "Polish"
* #PORTUGUESE "Portuguese"
* #FILIPINO "Filipino"
* #QATARI "Qatari"
* #ROMANIAN "Romanian"
* #RUSSIAN "Russian"
* #SINGAPOREAN "Singaporean"
* #SAUDI-ARABIAN "Saudi Arabian"
* #SOUTH-AFRICAN "South African"
* #SOUTH-KOREAN "South Korean"
* #SWEDISH "Swedish"
* #SWISS "Swiss"
* #SPANISH "Spanish"
* #THAI "Thai"
* #TURKISH "Turkish"
* #BRITISH "British"
* #EMIRATI "Emirati"
* #UKRAINIAN "Ukrainian"
* #AMERICAN "American"
* #VIETNAMESE "Vietnamese"


CodeSystem: EpisodeOfCareStatusCS
Id: episode-of-care-status-cs
Title: "Episode of Care Status Code System"
Description: "A code system that defines the status of an episode of care."
* ^url = $episode-of-care-status
* ^status = #active
* ^content = #complete 
* #PLANNED "Planned" "The episode of care is planned."
* #ACTIVE "Active" "The episode of care is currently active."
* #ON-HOLD "On Hold" "The episode of care is on hold."
* #FINISHED "Finished" "The episode of care has been finished."
* #WAITLIST "Waitlist" "The patient is on a waitlist for the episode of care."
* #CANCELLED "Cancelled" "The episode of care has been cancelled."
* #ENTERED-IN-ERROR "Entered in Error" "The episode of care was entered in error."


CodeSystem: EpisodeOfCareTypeCS
Id: episode-of-care-type-cs
Title: "Episode of Care Type Code System"
Description: "A code system that defines types of episodes of care."    
* ^url = $episode-of-care-type
* ^status = #active
* ^content = #complete
* #MATERNAL-AND-CHILD-HEALTH-PROGRAM "Maternal and Child Health Program" "The episode of care is a maternal and child health program."
* #HIV-CARE-AND-TREATMENT-PROGRAM "HIV Care and Treatment Program" "The episode of care is an HIV care and treatment program."
* #TUBERCULOSIS-PROGRAM "Tuberculosis Program" "The episode of care is a tuberculosis program."
* #NON-COMMUNICABLE-DISEASE-PROGRAM "Non-Communicable Disease Program" "The episode of care is a non-communicable disease program."
* #MENTAL-HEALTH-PROGRAM "Mental Health Program" "The episode of care is a mental health program."
* #FAMILY-PLANNING-PROGRAM "Family Planning Program" "The episode of care is a family planning program."
* #ANTENATAL-CARE-PROGRAM "Antenatal Care Program" "The episode of care is an antenatal care program."
* #POSTNATAL-CARE-PROGRAM "Postnatal Care Program" "The episode of care is a postnatal care program."
* #IMMUNIZATION-PROGRAM "Immunization Program" "The episode of care is an immunization program."
* #NUTRITION-PROGRAM "Nutrition Program" "The episode of care is a nutrition program."
* #ADOLESCENT-AND-YOUTH-FRIENDLY-SERVICES-PROGRAM "Adolescent and Youth Friendly Services Program" "The episode of care is an adolescent and youth friendly services program."
* #CANCER-CARE-PROGRAM "Cancer Care Program" "The episode of care is a cancer care program."
* #PALLIATIVE-CARE-PROGRAM "Palliative Care Program" "The episode of care is a palliative care program."
* #ELDERLY-CARE-PROGRAM "Elderly Care Program" "The episode of care is an elderly care program."
* #REPRODUCTIVE-HEALTH-PROGRAM "Reproductive Health Program" "The episode of care is a reproductive health program."
* #DISABILITY-CARE-PROGRAM "Disability Care Program" "The episode of care is a disability care program."
* #SUBSTANCE-USE-DISORDER-PROGRAM "Substance Use Disorder Program" "The episode of care is a substance use disorder program."
* #OCCUPATIONAL-HEALTH-PROGRAM "Occupational Health Program" "The episode of care is an occupational health program."
* #SCHOOL-HEALTH-PROGRAM "School Health Program" "The episode of care is a school health program."

CodeSystem: RelatedPersonRelationshipCS
Id: related-person-relationship-cs
Title: "Related Person Relationship Code System"
Description: "A code system that defines relationships for related persons."
* ^url = $related-person-relationship
* ^status = #active
* ^content = #complete
* #SIBLING "Sibling" "The related person is a sibling of the patient."
* #ADOPTED-CHILD "Adopted Child" "The related person is an adopted child of the patient."
* #GRANDPARENT "Grandparent" "The related person is a grandparent of the patient."
* #RELATIVE "Relative" "The related person is a relative of the patient."
* #CAREGIVER "Caregiver" "The related person is a caregiver of the patient."


CodeSystem: EncounterStatusCS
Id: encounter-status-cs
Title: "Encounter Status Code System"
Description: "A code system that defines the status of an encounter."
* ^url = $encounter-status
* ^status = #active
* ^content = #complete
* #IN-PROGRESS "In Progress" "The encounter is currently in progress."
* #FINISHED "Finished" "The encounter has been finished."

CodeSystem: EncounterTypeCS
Id: encounter-type-cs
Title: "Encounter Type Code System"
Description: "A code system that defines types of encounters."
* ^url = $encounter-type
* ^status = #active
* ^content = #complete
* #EMERGENCY-VISIT "Emergency Visit" "The encounter is an emergency visit."
* #OUTPATIENT-VISIT "Outpatient Visit" "The encounter is an outpatient visit."
* #REFERRAL-VISIT "Referral Visit" "The encounter is a referral visit."
* #FOLLOW-UP-VISIT "Follow-up Visit" "The encounter is a follow-up visit."
* #INPATIENT-VISIT "Inpatient Visit" "The encounter is an inpatient visit."
* #CONSULTATION "Consultation" "The encounter is a consultation."