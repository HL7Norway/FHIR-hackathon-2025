# Home - FHIR Hackathon 2025 v1.2.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/hackathon/2025/ImplementationGuide/hl7.fhir.no.hackathon.2025 | *Version*:1.2.0 |
| Draft as of 2025-11-10 | *Computable Name*:FHIRHackathon2025 |

### Norwegian FHIR Hackathon 2025

The Norwegian FHIR Hackathon 2025 takes place on EHiN preconference on the 10. november 2025. The Norwegian FHIR hackathon is a collaborative effort of HL7 Norway in cooperation with [NHN](https://www.nhn.no/), [Helsedirektoratet](https://www.helsedirektoratet.no/), [Bedredelt](https://bedredelt.no/), [Felleskatalogen](https://www.felleskatalogen.no/medisin/) and [HL7 Norge](https://www.hl7.no/)

### Registration

[Registration is now open, please use registration form at EHiN](https://event.checkin.no/167096/prekonferanse-ehin-2025)
 **Please select "Norwegian FHIR Hackathon 2025" and fill out the registration form.**

### Pre-meetings

We will arrange two pre meetings before the hackathon. The pre meetings will be arranged one and two weeks before the actual hackathon (on october 27th and november 3rd 1000-1100). The track leads will introduce the different tracks and there will be time for questions and discussions about how to prepare for the actual hackathon. Both pre-meetings will be digital only on Teams, and you will receive an invite for the pre meeting via e-mail (you can also download an ical from the [meeting pages](https://hl7norway.github.io/FHIR-hackathon-2025/currentbuild/pre-agenda.html)).

### Why should you attend?

The main goals of the Norwegian FHIR Hackathon is to build FHIR competence in the Norwegian e-health community by implementing and testing actual FHIR RESTful API's and software. The Norwegian FHIR Hackathon is a typical learning-by-doing event where you can expect to build, write and test things yourself.

During the Norwegian FHIR Hackathon you can:

* Implement and test implementation of the FHIR API for [Pasientens måledata](https://utviklerportal.nhn.no/informasjonstjenester/pasientens-maaledata) (PMD-API) 
* Implement and test data exchange to/from different software products using PMD-API
 
* Implement and test FHIR interfaces for services with existing proprietary API's 
* Use-case: [Oversikt over kommunale tjenester API (OKT)](https://utviklerportal.nhn.no/informasjonstjenester/felles-journalloeft/okt-prototype/okt-api/openapi/okt-api-prototype)
 
* Implement and test use of FHIR terminology services 
* [Nordic terminology server](https://tx-nordics.fhir.org/fhir/r4)
 
* Write and publish documentation of FHIR API's by authoring and publishing a FHIR Implementation Guide

> DISCLAIMER: The results from the FHIR Hackaton signifies no obligation from the API owner (e.g. NHN/CSIRO), to make changes to their published API-services or software.

### Who should attend?

The event will be of value to individuals working in the healthcare industry and software providers in healthcare.

* Developers
* Solution architects
* Information architects
* Enterprise architects
* Project managers

### Preparations for participants

* Basic knowledge of RESTful API's is usefull to be able to participate in testing and development
* Knowledge of at least one of the following areas: 
* Development of RESTful API clients/servers
* Information modelling
* Testing RESTful APIs
* Using RESTful APIs using Postman
 
* Some basic knowledge of the HL7 FHIR standard is valuable, but no prerequisite (intro to FHIR will be provided). HL7 also provides some great video resources for this purpose: 
* [FHIR 101](https://vimeo.com/1102006982/68c2e4fcfb)
* [How to read an implementation guide](https://vimeo.com/1102008456/cc0e9cddbd)
* [Newcomer orientation](https://vimeo.com/542197402/8fb80fea04)
 

### How to attend

* Please use the attendee form published by [EHiN 2025](https://event.checkin.no/167096/prekonferanse-ehin-2025) to secure your place on the hackathon.
* Attend the startup meetings one and two the weeks before, on monday 27th of October and monday 3rd of November from 1000-1100 (this will be a digital only meetings).
* Make your preparations for the workshop.
* Meet us at [X meeting point](https://maps.app.goo.gl/EcvP399Myg3NAuzr8) (EHIN venue) for the first Norwegian FHIR Hackathon 10th november 2025.

### Questions and contact

Please contact [Thomas Tveit Rosenlund](mailto:thomas.tveit.rosenlund@helsedir.no) if you got any questions regarding the event.

### Other hackathons in the Nordics

All the nordic countries are arranging FHIR hackathon in 2025/2026. More information on the [Nordic FHIR Hackathon page](https://fhir.fi/hackathon/)



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.no.hackathon.2025",
  "url" : "http://hl7.no/fhir/ig/hackathon/2025/ImplementationGuide/hl7.fhir.no.hackathon.2025",
  "version" : "1.2.0",
  "name" : "FHIRHackathon2025",
  "title" : "FHIR Hackathon 2025",
  "status" : "draft",
  "date" : "2025-11-10T16:26:29+00:00",
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
  "description" : "Implementation guide to plan the event and document and publish results from Norwegian FHIR Hackathon 2025",
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
  "packageId" : "hl7.fhir.no.hackathon.2025",
  "license" : "CC0-1.0",
  "fhirVersion" : ["6.0.0-ballot3"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r5",
      "version" : "6.5.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r5",
      "version" : "5.2.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r5#0.8.0"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mal-observation-blodprove"
        },
        "name" : "Blodprøve",
        "description" : "Profil for vanlige blodprøver",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mal-patient"
        },
        "name" : "Pasient",
        "description" : "Informasjon om pasienten, basert på no-basis.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/Pasient-1"
        },
        "name" : "Pasient-1",
        "description" : "Eksempel på pasient med navn og fødselsnummer",
        "isExample" : true,
        "profile" : [
          "http://hl7.no/fhir/ig/hackathon/2025/StructureDefinition/mal-patient"
        ]
      }
    ],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "sourceUrl" : "index.html",
          "name" : "index.html",
          "title" : "Home",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "hack-agenda.html",
          "name" : "hack-agenda.html",
          "title" : "Hack Agenda",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "ig-publishing.html",
          "name" : "ig-publishing.html",
          "title" : "Ig Publishing",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "ig-publishing-results.html",
          "name" : "ig-publishing-results.html",
          "title" : "Ig Publishing Results",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "practical-info.html",
          "name" : "practical-info.html",
          "title" : "Practical Info",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "pre-agenda.html",
          "name" : "pre-agenda.html",
          "title" : "Pre Agenda",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "resultater-pmd.html",
          "name" : "resultater-pmd.html",
          "title" : "Resultater Pmd",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "terminology.html",
          "name" : "terminology.html",
          "title" : "Terminology",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "track-descriptions.html",
          "name" : "track-descriptions.html",
          "title" : "Track Descriptions",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "copyrightyear"
        },
        "value" : "2025+"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "releaselabel"
        },
        "value" : "ci-build"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "autoload-resources"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/capabilities"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/examples"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/extensions"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/models"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/operations"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/profiles"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/resources"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/vocabulary"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/maps"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/testing"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/history"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "fsh-generated/resources"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-pages"
        },
        "value" : "template/config"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-pages"
        },
        "value" : "input/images"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-liquid"
        },
        "value" : "template/liquid"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-liquid"
        },
        "value" : "input/liquid"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-qa"
        },
        "value" : "temp/qa"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-temp"
        },
        "value" : "temp/pages"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-output"
        },
        "value" : "output"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-tx-cache"
        },
        "value" : "input-cache/txcache"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-suppressed-warnings"
        },
        "value" : "input/ignoreWarnings.txt"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-history"
        },
        "value" : "http://hl7.no/fhir/ig/hackathon/2025/history.html"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "template-html"
        },
        "value" : "template-page.html"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "template-md"
        },
        "value" : "template-page-md.html"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-contact"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-context"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-copyright"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-jurisdiction"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-license"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-publisher"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-version"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-wg"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "active-tables"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "fmm-definition"
        },
        "value" : "http://hl7.org/fhir/versions.html#maturity"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "propagate-status"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "excludelogbinaryformat"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "tabbed-snapshots"
        },
        "value" : "true"
      }
    ]
  }
}

```
