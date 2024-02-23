Alias: $Patient-ips = http://example.org/StructureDefinition/Kenya-patient-ips

Profile: KenyaAllergyIntoleranceIps
Parent: AllergyIntolerance
Id: AllergyIntolerance-uv-ips
Title: "Allergy Intolerance (IPS)"
Description: """This profile represents the constraints applied to the AllergyIntolerance resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an allergy or intolerance is represented in the patient summary as an instance of an AllergyIntolerance resource constrained by this profile.

It documents the relevant allergies or intolerances (conditions) for a patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy."""
* ^purpose = "This profile constrains the representation of a record of an allergy or intolerance of the patient, in the context of the international patient summary as specified by the IPS project of HL7 International."
* ^status = #active
* verificationStatus ^comment = "In the scope of the IPS the entered-in-error concept is not allowed."
* type MS
* code 1..1 MS
* patient only Reference($Patient-ips)
* patient MS
* patient.reference 1.. MS
* onset[x] only dateTime or Age or Period or Range or string
* onset[x] MS
* onset[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type.extension.valueBoolean = true
* reaction MS
* reaction.manifestation MS
* reaction.manifestation ^binding.description = "Code for the allergy or intolerance reaction manifestation from the SNOMED International Patient Set (IPS) subset of SNOMED CT (IPS Free Set)."
* reaction.severity MS
