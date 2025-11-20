## Foundation for All Other IGs

The Kenya Core FHIR Implementation Guide (IG) serves as the national foundational layer that defines the base FHIR profiles, terminologies, and extensions to be reused and inherited by other domain-specific IGs (eClaims, ePrescription, Patient Summary, Referral, etc.).

It provides the "Kenya Base Set of Profiles" that establish:

- National data elements and extensions
- Common terminology bindings (e.g., ICD-11 for conditions, SNOMED/LOINC/NHDD codes)
- Consistent use of identifiers, codes, and references across all systems

The Kenya Core IG will be the "national language" for all health data exchange, upon which specialized IGs build their own "dialects".

### Relationship With Other Kenyan IGs

> Other international and national standards were reviewed and considered during the development process to assess the degree of alignment and to facilitate adoption of this standard. These implementation guides include: 
 
- [Kenya Core FHIR IG](https://igkenyacore.intellisoftkenya.com)
- [Kenya eClaims FHIR IG](https://igeclaims.intellisoftkenya.com)  
- [Kenya Patient Summary (KPS) FHIR IG](https://igpatientsummary.intellisoftkenya.com)
- [Kenya ePrescription FHIR IG](https://igeprescriptions.intellisoftkenya.com)
- [Kenya Lab Orders FHIR IG](https://iglaborders.intellisoftkenya.com)

### Defines Common Core Profiles

The Kenya Core IG defines common FHIR resource profiles that are used across all domains:

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr> <th>Category</th> <th>Common Core Profiles</th></tr></thead>
 <tbody>
    <tr>
<td>Patient & demographics </td><td> Patient, RelatedPerson, Practitioner, PractitionerRole </td></tr>
 <tr>
<td>Administrative </td><td>Organization, Location, Encounter </td></tr>
 <tr>
<td>Common data elements </td><td> Observation, Condition, Procedure </td></tr>
 <tr>
<td> Terminology & identifiers </td><td> CodeSystem, ValueSet, identifier patterns </td></tr></tbody></table>

Each domain IG (e.g., eClaims, ePrescription) references or extends these base profiles rather than redefining them. For example:

- **Kenya-eClaims-Patient** derives from **Kenya-Core-Patient**
- **Kenya-Prescription-Practitioner** derives from **Kenya-Core-Practitioner**

### Ensures Consistency Across IGs

Without a Core IG, each domain-specific IG risks defining its own version of a "Patient", "Practitioner", or "Organization" resource, leading to fragmentation. The Kenya Core IG eliminates this by:

- Defining canonical URLs and base constraints
- Harmonizing identifier systems (e.g., master patient ID, facility registry, provider registry)
- Ensuring common metadata (such as `meta.profile`) is consistent across systems

### Manages Shared Terminology & Code Systems

The Kenya Core IG is the authoritative source for national terminologies and value sets shared across all domains, including:

- Country codes and facility codes (from KHIS or the Kenya Master Facility List)
- Gender, marital status, encounter types
- Practitioner and service types
- National terminologies or mappings (ICD-10, LOINC, SNOMED subset, etc.)

Maintaining these assets centrally prevents duplication and ensures consistent code usage across all other IGs.

### Defines National Conformance Requirements

The Kenya Core IG includes:

- Base conformance rules for implementers (naming, identifiers, FHIR version, RESTful API rules, security, provenance)
- Base Implementation Guide templates for look-and-feel, branding, and documentation (MoH branding)
- Common security and interoperability frameworks, including terminology servers and canonical base URLs for Kenya's National Health Information Exchange (HIE)

### Supports Modular Architecture

Each domain IG imports and depends on the Kenya Core IG. Examples include:

- **Kenya eClaims IG**: focuses on claims workflows, referencing Kenya-Core-Patient, Kenya-Core-Organization, etc.
- **Kenya ePrescription IG**: focuses on prescribing workflows, reusing Kenya-Core-Practitioner, Kenya-Core-Medication, etc.
- **Kenya Patient Summary IG**: reuses Kenya-Core-Condition and Kenya-Core-Observation.
- **Kenya Referral IG**: reuses Kenya-Core-ServiceRequest and Kenya-Core-Task.

This approach enables modular development and independent evolution of domain IGs without breaking shared foundations.

### Architecture Diagram

The diagram below represents the architecture of the Kenya FHIR IGs, with the Kenya Core at the center. Domain IGs extend the Core and connect to the national HIE, ensuring a cohesive, interoperable ecosystem for health data exchange.

 <div> 
<img src="main.png" alt="summary" style="width:85%"/> <br><br>
</div>
