Profile: KenyaCoreDocumentReference
Parent: DocumentReference
Id: kenya-core-documentreference
Title: "Kenya Core DocumentReference Profile"
Description: "DocumentReference profile for Kenya Core."
* meta.profile 1..*
* meta.profile = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-documentreference|1.0.0"
* meta.profile ^fixedUri = "https://fhir.sha.go.ke/fhir/StructureDefinition/kenya-core-documentreference|1.0.0" 
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/document-reference-status
* type 1..1 MS
* type ^short = "Document type"
* type from http://hl7.org/fhir/us/core/ValueSet/us-core-documentreference-type
* category 0..* MS
* category ^short = "Grouping tags"
* category from https://build.fhir.org/ig/HL7/US-Core/ValueSet-us-core-documentreference-category.html
* subject 1..1 MS
* subject ^short = "Patient"
* date 0..1 MS
* date ^short = "When created/indexed"
* author 0..* MS
* author ^short = "Who authored"
* custodian 0..1 MS
* custodian ^short = "Org that holds the doc"
* content 1..* MS
* content.attachment 1..1 MS
* content.attachment ^short = "The document payload/URL"
* content.attachment.contentType from http://hl7.org/fhir/ValueSet/mimetypes