CodeSystem: CountryCodesCS
Id: countries
Title: "Country Codes"
Description: "A code system representing country codes."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = false

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
 
CodeSystem: RelatedPersonRelationshipCS
Id: related-person-relationship-cs
Title: "Related Person Relationship Code System"
Description: "A code system that defines relationships for related persons." 
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = false

* #SIBLING "Sibling" "The related person is a sibling of the patient."
* #ADOPTED-CHILD "Adopted Child" "The related person is an adopted child of the patient."
* #GRANDPARENT "Grandparent" "The related person is a grandparent of the patient."
* #RELATIVE "Relative" "The related person is a relative of the patient."
* #CAREGIVER "Caregiver" "The related person is a caregiver of the patient."


 
CodeSystem: EncounterTypeCS
Id: encounter-type-cs
Title: "Encounter Type Code System"
Description: "A code system that defines types of encounters." 
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = false

* #EMERGENCY-VISIT "Emergency Visit" "The encounter is an emergency visit."
* #OUTPATIENT-VISIT "Outpatient Visit" "The encounter is an outpatient visit."
* #REFERRAL-VISIT "Referral Visit" "The encounter is a referral visit."
* #FOLLOW-UP-VISIT "Follow-up Visit" "The encounter is a follow-up visit."
* #INPATIENT-VISIT "Inpatient Visit" "The encounter is an inpatient visit."
* #CONSULTATION "Consultation" "The encounter is a consultation."