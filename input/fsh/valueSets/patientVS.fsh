Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

ValueSet: GenderVS
Id: gender-vs
Title: "Gender ValueSet"
Description: "ValueSet for gender using SNOMED CT codes"
* ^experimental = false
* $SCT#248153007 "Male (gender)"
* $SCT#248152002 "Female (gender)"

ValueSet: ConditionSeverityVS
Id: condition-severity-vs
Title: "Condition Severity ValueSet"
Description: "ValueSet for Condition Severity using SNOMED CT codes"
* ^experimental = false
* $SCT#24484000 "Severe"
* $SCT#1255665007 "Moderate"
* $SCT#255604002 "Mild"

ValueSet: ProblemTypeVS
Id: problem-type-vs
Title: "Problem Type ValueSet"
Description: " ValueSet"
* ^experimental = false
* $LNC#75326-9 "Problem"

ValueSet: UnknownAbsentConditionVS
Id: unknown-absent-condition-vs
Title: "Condition Problem Absent or Unknown ValueSet"
Description: "ValueSet for Condition Problem whether absent or Unknown using SNOMED CT codes"
* ^experimental = false
* $SCT#261665006 "Unknown"
* $SCT#2667000 "Absent"

ValueSet: UnknownAbsentProcedureVS
Id: unknown-absent-procedure-vs
Title: "Procedure Absent or Unknown ValueSet"
Description: "ValueSet for a Procedure whether absent or Unknown using SNOMED CT codes"
* ^experimental = false
* $SCT#69466000 "Unknown Procedure"
* $SCT#2667000 "Absent"

ValueSet: UnknownAbsentVaccineCodeVS
Id: unknown-absent-vaccine-code-vs
Title: "Vaccine Code Absent or Unknown ValueSet"
Description: "ValueSet for  Vaccine Code whether absent or Unknown using SNOMED CT codes"
* ^experimental = false
* $SCT#410516002 "Known Absent"
* $SCT#373068000 "Not Known"
