# Pasient - FHIR Hackathon 2025 v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pasient**

## Resource Profile: Pasient 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/hackathon/2025/StructureDefinition/mal-patient | *Version*:0.7.0 |
| Draft as of 2025-01-22 | *Computable Name*:MalPatient |

 
Informasjon om pasienten, basert på no-basis. 

**Usages:**

* Examples for this Profile: [Patient/Pasient-1](Patient-Pasient-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.hackathon.2025|current/StructureDefinition/mal-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mal-patient.csv), [Excel](StructureDefinition-mal-patient.xlsx), [Schematron](StructureDefinition-mal-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mal-patient",
  "url" : "http://hl7.no/fhir/ig/hackathon/2025/StructureDefinition/mal-patient",
  "version" : "0.7.0",
  "name" : "MalPatient",
  "title" : "Pasient",
  "status" : "draft",
  "date" : "2025-01-22",
  "publisher" : "HL7 Norge",
  "contact" : [
    {
      "name" : "HL7 Norge",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.hl7.no"
        }
      ]
    }
  ],
  "description" : "Informasjon om pasienten, basert på no-basis.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "NO",
          "display" : "Norway"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.no/fhir/StructureDefinition/no-basis-Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "mustSupport" : true
      },
      {
        "id" : "Patient.name.family",
        "path" : "Patient.name.family",
        "mustSupport" : true
      }
    ]
  }
}

```
