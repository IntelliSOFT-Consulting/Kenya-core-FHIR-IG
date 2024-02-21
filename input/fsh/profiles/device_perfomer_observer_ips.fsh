Profile: KenyaDeviceObserverIps
Parent: Device
Id: Kenya-device-observer-ips
Title: "Device - performer, observer"
Description: """This profile represents the constraints applied to the Device resource by the IPS project, which specifies an international patient summary based on the FHIR standard R4.;

This profile describes a device that plays the role of observer or performer."""
* ^purpose = "This profile constrains the representation of a device acting as observer in the international patient summary as specified by the IPS project."
* ^extension.valueCode = #pc
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^status = #active
* identifier MS
* manufacturer MS
* modelNumber MS