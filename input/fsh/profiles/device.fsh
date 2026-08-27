Profile: KenyaCoreDevice
Parent: Device
Id: kenya-core-device
Title: "Kenya Core Device Profile"
Description: "Kenya Core profile for a physical medical device (equipment, appliance, implant, monitor, etc.) used in the provision of care."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/kenya-core-device"

* insert IdentifierRequiredRule(identifier, 0..*)

* status 1..1 MS
* status ^short = "active | inactive | entered-in-error | unknown"

* insert CodeableConceptRule(type, 0..1, MS)
* type ^short = "The kind or type of device"

* manufacturer 0..1 MS
* manufacturer ^short = "Name of device manufacturer"

* manufactureDate 0..1 MS
* manufactureDate ^short = "Date when the device was made"

* expirationDate 0..1 MS
* expirationDate ^short = "Date and time of expiry of this device"

* lotNumber 0..1 MS
* lotNumber ^short = "Lot number of manufacture"

* serialNumber 0..1 MS
* serialNumber ^short = "Serial number assigned by the manufacturer"

* deviceName 0..* MS
* deviceName.name 1..1 MS
* deviceName.type 1..1 MS
* deviceName ^short = "The name(s) of the device as given by the manufacturer"

* modelNumber 0..1 MS
* modelNumber ^short = "The model number for the device"

* insert ReferenceRule(patient, KenyaCorePatient, 0..1)
* patient ^short = "Patient to whom the device is affixed"

* insert ReferenceRule(owner, KenyaCoreOrganization, 0..1)
* owner ^short = "Organization responsible for device"

* location 0..1 MS
* location only Reference(KenyaCoreLocation)
* location ^short = "Where the device is found"

* note 0..* MS
* note ^short = "Device notes and comments"
