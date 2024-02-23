Profile: KenyaImagingStudyUvKeps
Parent: ImagingStudy
Id: imaging-study-uv-keps
Title: "Imaging Study (KePS)"
Description: """This profile represents the constraints applied to the ImagingStudy resource by the IPS project, which specifies the information on a DICOM imaging study this imaging result is part of.
"""
* ^extension.valueCode = #pc
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^status = #active
* ^url = "http://example.org/StructureDefinition/imaging-study-uv-keps"
* identifier MS
* subject only Reference($Patient-uv-keps)
* subject MS
* subject.reference 1.. MS
* started MS
* procedureCode only CodeableConcept
* procedureCode MS
* procedureCode from $results-radiology-observations-uv-keps (extensible)
* procedureCode ^binding.extension.valueString = "ImagingProcedureCode"
* procedureCode ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* reasonCode only CodeableConcept
* reasonCode MS
* series MS
* series.uid MS
* series.modality MS
* series.instance MS
* series.instance.uid MS
* series.instance.sopClass MS