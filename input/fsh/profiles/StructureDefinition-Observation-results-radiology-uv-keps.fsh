Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $Observation-results-uv-keps = http://example.org/StructureDefinition/Observation-results-uv-keps
Alias: $imaging-study-uv-keps = http://example.org/StructureDefinition/imaging-study-uv-keps
Alias: $Patient-uv-keps = http://example.org/StructureDefinition/Kenya-patient-ips
Alias: $Range-uv-keps = http://example.org/StructureDefinition/Kenya-range-uv-keps
Alias: $results-radiology-observations-uv-keps = http://example.org/ValueSet/kenya-results-radiology-observations-uv-keps
Alias: $results-radiology-txtobs-snomed-dicom-loinc-uv-keps = http://example.org/ValueSet/results-radiology-txtobs-snomed-dicom-loinc-uv-keps
Alias: $results-radiology-numobs-snomed-dicom-uv-keps = http://example.org/ValueSet/results-radiology-numobs-snomed-dicom-uv-keps
Alias: $Practitioner-uv-keps = http://example.org/StructureDefinition/Practitioner-uv-keps
Alias: $Organization-uv-keps = http://example.org/StructureDefinition/Organization-keps
Alias: $PractitionerRole-uv-keps = http://example.org/StructureDefinition/PractitionerRole-uv-keps
Alias: $Device-observer-uv-keps = http://example.org/StructureDefinition/Device-observer-uv-keps

Profile: ObservationResultsRadiologyUvKeps
Parent: $Observation-results-uv-keps
Id: observation-results-radiology-uv-keps
Title: "Observation Results: radiology (KePS)"
Description: """This profile represents the constraints applied to the Observation resource by the KePs project, which specifies a radiology observation for the international patient summary based on the FHIR standard R4. 

This observation may represent the conclusions of a diagnostic procedure such a Chest RX, or it may group the set of results produced by that single or multi-modality procedure. 

In the latter case, the main observation (this one) carries the overall conclusion of the study and/or a global interpretation by the observer of the study as value of this observation; and may references the atomic results of the study as "child observations".

It allows also providing details about the related study using the partOf element referring to an ImagingStudy resource.
"""
* ^experimental = false
* obeys hasMemberOrComponent
* partOf only Reference($imaging-study-uv-keps)
* status = #final (exactly)
* status ^extension.valueString = "default: final"
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^definition = "The status of the result value. Only final results feed patient summaries."
* category only CodeableConcept
* category ^slicing.rules = #open
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^definition = "A code that classifies the general type of observation being made. In this profile, fixed to \"imaging\"."
* category contains radiology 1..1 MS
* category[radiology] only CodeableConcept
* category[radiology] = $observation-category#imaging
* code only CodeableConcept
* code MS
* code from $results-radiology-observations-uv-keps (extensible)
* code ^label = "Diagnostic Procedure Code"
* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".\r\nIn this profile the code of the containing observation (the organizer result in the CDA implementation) may correspond to the procedure code (e.g. Chest X-Ray)."
* code ^binding.extension.valueString = "ObservationCode"
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* subject only Reference($Patient-uv-keps)
* subject MS
* subject ^definition = "The patient, or group of patients, location, or device whose characteristics (direct or indirect) are described by the observation and into whose record the observation is placed.  Comments: Indirect characteristics may be those of a specimen, fetus, donor, other observer (for example a relative or EMT), or any observation made about the subject.\r\n\r\nIn this profile is constrained to the patient"
* effective[x] MS
* effective[x] obeys keps-1
* performer 1.. MS
* performer only Reference($Practitioner-uv-keps or $PractitionerRole-uv-keps or $Organization-uv-keps or CareTeam or $Patient-uv-keps or RelatedPerson)
* valueString only string
* valueString MS
* valueString ^label = "Overall Conclusion"
* bodySite only CodeableConcept
* bodySite ^label = "body site"
* device only Reference($Device-observer-uv-keps)
* hasMember only Reference(ObservationResultsRadiologyUvKeps or $Observation-results-uv-keps)
* component MS
* component ^slicing.description = "Slicing based on value[x] type."
* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "value"
* component ^slicing.rules = #closed
* component ^requirements = "Required if not(exists(Observation.valueString))"
* component ^min = 0
// * component[observationText] ^sliceName = "observationText"
// * component[observationText] ^short = "Observation Text"
// * component[observationText].code only CodeableConcept
// * component[observationText].code from $results-radiology-txtobs-snomed-dicom-loinc-uv-keps (extensible)
// * component[observationText].code ^binding.extension.valueString = "ObservationCode"
// * component[observationText].code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
// * component[observationText].value[x] 1..
// * component[observationText].value[x] only string
// * component[observationCode] ^sliceName = "observationCode"
// * component[observationCode] ^short = "Observation Code"
// * component[observationCode].code only CodeableConcept
// * component[observationCode].code from $results-radiology-observations-uv-keps (extensible)
// * component[observationCode].value[x] 1..
// * component[observationCode].value[x] only CodeableConcept
// * component[numericQuantityMeasurement] ^sliceName = "numericQuantityMeasurement"
// * component[numericQuantityMeasurement] ^short = "Observation Measurement, including linear, area and volume quantity measurements"
// * component[numericQuantityMeasurement].code only CodeableConcept
// * component[numericQuantityMeasurement].code from $results-radiology-numobs-snomed-dicom-uv-keps (extensible)
// * component[numericQuantityMeasurement].code ^binding.description = "Codes identifying numeric measurements"
// * component[numericQuantityMeasurement].code ^binding.extension.valueString = "ObservationMeasurements"
// * component[numericQuantityMeasurement].code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
// * component[numericQuantityMeasurement].value[x] 1..
// * component[numericQuantityMeasurement].value[x] only $Quantity-uv-ips
// * component[numericRangeMeasurement] ^sliceName = "numericRangeMeasurement"
// * component[numericRangeMeasurement] ^short = "Observation Measurement, including linear, area and volume range measurements"
// * component[numericRangeMeasurement].code only CodeableConcept
// * component[numericRangeMeasurement].code from $results-radiology-numobs-snomed-dicom-uv-keps (extensible)
// * component[numericRangeMeasurement].code ^binding.description = "Codes identifying numeric measurements"
// * component[numericRangeMeasurement].code ^binding.extension.valueString = "ObservationMeasurements"
// * component[numericRangeMeasurement].code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
// * component[numericRangeMeasurement].value[x] 1..
// * component[numericRangeMeasurement].value[x] only $Range-uv-keps
// * component[numericRatioMeasurement] ^sliceName = "numericRatioMeasurement"
// * component[numericRatioMeasurement] ^short = "Observation Measurement, including linear, area and volume ratio measurements"
// * component[numericRatioMeasurement].code only CodeableConcept
// * component[numericRatioMeasurement].code from $results-radiology-numobs-snomed-dicom-uv-keps (extensible)
// * component[numericRatioMeasurement].code ^binding.description = "Codes identifying numeric measurements"
// * component[numericRatioMeasurement].code ^binding.extension.valueString = "ObservationMeasurements"
// * component[numericRatioMeasurement].code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
// * component[numericRatioMeasurement].value[x] 1..
// * component[numericRatioMeasurement].value[x] only $Ratio-uv-ips
// * component[numericSampledDataMeasurement] ^sliceName = "numericSampledDataMeasurement"
// * component[numericSampledDataMeasurement] ^short = "Observation Measurement, including linear, area and volume sampled data measurements"
// * component[numericSampledDataMeasurement].code only CodeableConcept
// * component[numericSampledDataMeasurement].code from $results-radiology-numobs-snomed-dicom-uv-keps (extensible)
// * component[numericSampledDataMeasurement].code ^binding.description = "Codes identifying numeric measurements"
// * component[numericSampledDataMeasurement].code ^binding.extension.valueString = "ObservationMeasurements"
// * component[numericSampledDataMeasurement].code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
// * component[numericSampledDataMeasurement].value[x] 1..
// * component[numericSampledDataMeasurement].value[x] only SampledData

Invariant: hasMemberOrComponent
Description: "component and hasMember are mutually exclusive"
* severity = #error
* expression = "hasMember.empty() or component.empty()"

Invariant: keps-1
Description: "Datetime must be at least to day."
* severity = #error
* expression = "$this.ofType(dateTime).empty() or ($this as dateTime).toString().length() >= 8"
* xpath = "not(boolean(effectiveDateTime)) or f:matches(effectiveDateTime,/\\d{4}-[01]\\d-[0-3]\\dT[0-2]\\d:[0-5]\\d([+-][0-2]\\d:[0-5]\\d|Z)/)"