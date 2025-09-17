### Use cases

Quick writeup of the use cases for the Hackathon.  
**NOTE! The agenda is currently under active development and there changes will occur without further notice.**  

#### Pasientens måledata (PMD) FHIR API

Excercise on using the Pasientens måledata API to exchange data to/from the PMD API.

##### Step 1: Introduction to Pasientens måledata (PMD) FHIR API.
About the API and design choices 

Based on your product/solution/needs do Step 2 and/or Step 3.

##### Step 2: Use documentation from developer portal and retrieve data.
Help available if needed.

##### Step 3: Use documentation from developer portal and write data.
Help availanle if needed.

##### Step 4: Find someone who did the opposite in task 2 and 3, and test that data from one can be read by the other.
If you´ve done both 2 and 3, try testing both against other participants.

##### Step 5: If you have GUI - try showing data from multiple other vendors.

* [PMD API documentation](https://utviklerportal.nhn.no/informasjonstjenester/pasientens-maaledata/)
* [PMD/VKP API FHIR profiles on SIMPLIFIER](https://simplifier.net/VelferdteknologiskknutepunktR4)

#### Make a FHIR version of the OKT API

This is an exercise in translating an existing API, both data structures and interactions, to FHIR resources and the FHIR REST API. It should give participants practical, hands-on experience in designing and implementing FHIR-enabled services.

We will look at the proprietary [OKT API](https://utviklerportal.nhn.no/informasjonstjenester/felles-journalloeft/okt-prototype/okt-api) from NHN, and discuss which FHIR resources and REST interactions we can translate the API into.

Several resources might fit the purpose, including `EpisodeOfCare`, `CarePlan`, and `ServiceRequest`. We will discuss the resource descriptions and the data fields to see which one is the best match. Other projects, e.g. the use of [`EpisodeOfCare` in Velferdsteknologisk knutepunkt (VKP)](https://simplifier.net/guide/velferdsteknologiskknutepunktvkp-r4/episodeofcare?version=current) will also be considered.

The more technically inclined may also demonstrate the conversion from the proprietary API to FHIR, either in code or in FHIR, using `StructureMap` resources. Examples of both will be provided among the hackathon resources.

##### Prerequisites

* A FHIR implementation guide with some proposals will be shared before the hackathon. Familiarity with the proprietary OKT API and the proposed structures will allow us to get started with the discussion of possible solutions quicker during the hackathon.

#### Nordic tx FHIR server API

#### FHIR IG building and authoring

FHIR IG authoring for documenting a FHIR RestfulAPI can seem like a big challenge to new FHIR developers. In this track we introduce the participants to FHIR IG authoring, building and how to publish a draft on Github. The participation in this track can be combined with participation in PMD/OKT API development tracks, to document results from work in those tracks.

##### Prerequisites

There is no need for prior knowledge on FHIR or IG building before participation. You can build an IG entirely on Github but it will be faster if you have preinstalled the necesary tools on you own computer. Basic knowlege of HL7 FHIR standard is helpful, also a thought about a use-case you want to work with before the workshop.

##### Learning goals

* Basic understanding of the role of FHIR profiling  
* Know the necessary tools for building FHIR IG's  
  * IG publisher  
  * SUSHI  
* Learn how to write FHIR documentation using FSH  
* Learn how to use the tools for FHIR IG authoring  
* Learn how to present a draft IG on Github, using Github.io  
