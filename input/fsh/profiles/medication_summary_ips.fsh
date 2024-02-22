Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Ratio-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Ratio-uv-ips
Alias: $medication-snomed-absent-unknown-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/medication-snomed-absent-unknown-uv-ips
Alias: $medicine-doseform = http://hl7.org/fhir/uv/ips/ValueSet/medicine-doseform
Alias: $medicine-active-substances-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/medicine-active-substances-uv-ips

Profile: KenyanMedicationIPS
Parent: Medication
Id: Kenyan-medication-ips
Title: "Medication (IPS)"
Description: "This profile represents the constraints applied to the Medication resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A medication is described in the patient summary as an instance of a Medication resource constrained by this profile."
* ^experimental = false
* ^status = #active
* ^publisher = "HL7 International"
* ^purpose = "This profile constrains the representation of a medication, in the context of the international patient summary as specified by the IPS project of HL7 International."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #pc
* . ^comment = "IPS Medication"
* code 1..1 MS
* code ^short = "Medication that was administered or was to be administered (medication code from any code system)"
* code ^definition = "Medication that was administered or was to be administered. \r\n\r\nSeveral kinds of medication coding could be provided as:\r\n\r\n1. The IDMP Pharmaceutical Product Identifier (PhPID), Level 1, [Substance(s)]. Example: Amoxicillin and Clavulanate Potassium; or any other equivalent coded concept;\r\n2. The IDMP Pharmaceutical Product Identifier (PhPID), Level 2 [Substance(s) + Strength + reference strength]. Example: Amoxicillin 875 mg and Clavulanate Potassium 125 mg; or any other equivalent coded concept;\r\n3. The IDMP Pharmaceutical Product Identifier (PhPID), Level 3 [Substance(s) + administrable dose form]. Example: Amoxicillin and Clavulanate Potassium, Oral Tablet; or any other equivalent coded concept;\r\n4. The IDMP Pharmaceutical Product Identifier (PhPID), Level 4 [Substance(s) + strength + reference strength + administrable dose form]. Example: Amoxicillin 875 mg and clavulanate potassium 125 mg, oral tablet; or any other equivalent coded concept 5. The IDMP Medicinal Product Identifier (MPID) or any equivalent Medicinal Product Identifier. IDMP MPID uniquely identifies a Medicinal Product, reflecting (but not replacing) any other authorization numbers allocated by a regulator. MPID implies one (set of) PhPID. The MPID shall use a common segment pattern related to a Medicinal Product, which, when each segment is valued shall define a specific MPID concept.\r\n6. The IDMP Packaged Medicinal Product Identifier (PCID) or any equivalent Packaged Medicinal Product Identifier. Uniquely identifies a Medicinal Product based on its packaging. This implies one MPID can be associated with more than one PCID, if the same Medicinal Product has more than one type of package.\r\n7. Any other kind of code that that identifies, classifies or cluster the administered product (e.g. the medicinal product or the product class)\r\n\r\nThe value sets used for the PhPID, MPID and PCID identifiers are provisional and include only few equivalent concepts used for exemplification purposes, they will be updated with real IDMP identifiers when they will become available."
* code ^binding.description = "SNOMED CT medications (Pharmaceutical / biologic product) or a code for absent/unknown medication"
* code ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.extension[=].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/medications-snomed-ct-ips-free-set"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "SNOMED medication terms available in IPS Free Set"
* code ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.extension[=].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/whoatc-uv-ips"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "WHO ATC classification"
* code ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.extension[=].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-medications-uv-ips"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Codes for absent or unknown medication"
* form MS
* form ^definition = "Describes the form of the item.  Powder; tablets; capsule.\r\n\r\nAdministrable Pharmaceutical Dose Form. \r\nThis code represents the form of the medication (e.g. tablet, capsule, liquid)\r\n\r\nSince the EDQM Standards Terms, together with UCUM, is one of the IDMP terminologies actually available for usage, this code system has been selected as referecne terminology for representing Pharmaceutical Dose forms;Pakages and Route of Administration.\r\n\r\nIt is known that also alternative jurisdictional and international terminologies are known to be used for this concept domain, as NCI or SNOMED CT."
* ingredient MS
* ingredient.item[x] MS
* ingredient.item[x] ^comment = "The IDMP ISO 11238 standard addresses the identification and exchange of regulated information on substances. \r\nThe Global Ingredient Archival System (GInAS) will provide a common global identifier for all of the substances used in medicinal products, providing a definition of substances globally consistent with this standard.\r\nThose identifiers however are yet available for concrete usage, therefore in this version of the template, SNOMED CT has been chosen as reference terminology also for the active substances.\r\nThis choice will be revised based on the availability and the maturity of GInAS."
* ingredient.item[x] ^binding.description = "SNOMED CT drug substances"
* ingredient.strength MS