Extension: LicenseStatusExtension
Id: license-status-extension
Title: "License Status Extension"
Description: "Extension to capture the status (active/inactive) of a practitioner's professional license."
Context: Practitioner.qualification
* value[x] only CodeableConcept
* valueCodeableConcept from KenyaLicenseStatusVS (required)

Extension: LicensingBodyExtension
Id: licensing-body-extension
Title: "Licensing Body Extension"
Description: "Extension to capture the Kenyan regulatory body that issued a practitioner's professional qualification."
Context: Practitioner.qualification
* value[x] only CodeableConcept
* valueCodeableConcept from KenyaRegulatoryBodyVS (required)
