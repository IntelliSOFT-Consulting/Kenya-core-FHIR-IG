ValueSet: ResultsRadiologyMeasurementObservationSnomedDicomUvKeps
Id: results-radiology-numobs-snomed-dicom-uv-keps
Title: "Results Radiology Measurement Observation (SNOMED-DICOM) - KePS"
Description: "Extensible value set including SNOMED CT and DICOM concepts for Linear, Area and Volume Measurements"
* ^extension.valueCode = #pc
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^copyright = "The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review [usage terms](http://www.snomed.org/snomed-ct/get-snomed-ct) or directly contact SNOMED International: info@snomed.org"
* ^immutable = false
* ^publisher = "HL7 International"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^contact.name = "HL7 International"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "+1 734 677 7777"
* ^contact.telecom[+].system = #fax
* ^contact.telecom[=].value = "+1 734 677 6622"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "info@hl7.org"
* ^experimental = false
* ^status = #active
* ^url = "http://example.org/ValueSet/results-radiology-numobs-snomed-dicom-uv-keps"
* DCM#121207 "Height"
* DCM#121211 "Path length"
* DCM#121206 "Distance"
* SNOMED_CT_INT#410668003 "Length"
* SNOMED_CT_INT#103355008 "Width"
* SNOMED_CT_INT#131197000 "Depth"
* SNOMED_CT_INT#81827009 "Diameter"
* SNOMED_CT_INT#103339001 "Long Axis"
* SNOMED_CT_INT#103340004 "Short Axis"
* SNOMED_CT_INT#131187009 "Major Axis"
* SNOMED_CT_INT#131188004 "Minor Axis"
* SNOMED_CT_INT#131189007 "Perpendicular Axis"
* SNOMED_CT_INT#131190003 "Radius"
* SNOMED_CT_INT#131191004 "Perimeter"
* SNOMED_CT_INT#74551000 "Circumference"
* SNOMED_CT_INT#131192006 "Diameter of circumscribed circle"
* SNOMED_CT_INT#42798000 "Area"
* SNOMED_CT_INT#131184002 "Area of defined region"
* DCM#121216 "Volume estimated from single 2D region"
* DCM#121218 "Volume estimated from two non-coplanar 2D regions"
* DCM#121217 "Volume estimated from three or more non-coplanar 2D regions"
* DCM#121222 "Volume of sphere"
* DCM#121221 "Volume of ellipsoid"
* DCM#121220 "Volume of circumscribed sphere"
* DCM#121219 "Volume of bounding three dimensional region"
* SNOMED_CT_INT#118565006 "Volume"