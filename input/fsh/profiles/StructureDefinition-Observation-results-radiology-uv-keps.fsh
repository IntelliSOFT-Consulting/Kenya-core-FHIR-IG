Profile: ObservationResultsRadiologyUvKeps
Parent: $Observation-results-uv-keps
Id: observation-results-radiology-uv-keps
Title: "Observation Results: radiology (KePS)"
Description: """This profile represents the constraints applied to the Observation resource by the KePs project, which specifies a radiology observation based on the FHIR standard R4. 

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