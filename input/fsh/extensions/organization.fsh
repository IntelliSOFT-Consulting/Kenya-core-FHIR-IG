Extension: FacilityLevelExtension
Id: facility-level-extension
Title: "Facility Level Extension"
Description: "Extension to capture the service level (e.g. Level 2 - Level 6B) of a healthcare facility."
Context: Organization
* value[x] only CodeableConcept
* valueCodeableConcept from FacilityLevelVS (required)

Extension: ApprovalStatusExtension
Id: approval-status-extension
Title: "Approval Status Extension"
Description: "Extension to capture the regulatory approval status of a healthcare facility."
Context: Organization
* value[x] only CodeableConcept
* valueCodeableConcept from ApprovalStatusVS (required)
