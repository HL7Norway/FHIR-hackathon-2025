### Use cases

Quick writeup of the use cases for the Hackathon.

#### Pasientens måledata (PMD) FHIR API

#### Make a FHIR version of the OKT API

This is an excercise in translating an existing API, both data structures and interactions, to the FHIR REST API. It should give participants practical, hands-on experience in designing and implementing FHIR-enabled services.

##### Step 1: Design the OKT FHIR API

First, we will look at the [OKT API](https://utviklerportal.nhn.no/informasjonstjenester/felles-journalloeft/okt-prototype/okt-api) and discuss which FHIR resources and REST interactions we can translate the API to.

##### Step 2: Implement the API with HAPI FHIR

When the design of the FHIR API is finished, we will implement the FHIR API as a facade, using the HAPI FHIR Plain Server. We will start with [FHIR-hackathon-2025-okt](https://github.com/HL7Norway/FHIR-hackathon-2025-okt), a simple Spring Boot project that has an in-memory data store and implements the proprietary OKT API. We will add the HAPI FHIR dependencies and get busy coding resource providers and transformation logic. We will run our new FHIR service locally and test it through REST interactions.

##### Prerequisites

* Some knowledge of Java, Maven, and Spring Boot is recommended
* A development environment with a Java 17+ JDK and a recent version of Maven

#### Nordic tx FHIR server API

#### FHIR IG building and authoring

FHIR IG authoring for documenting a FHIR RestfulAPI can seem like a big challenge to new FHIR developers. In this track we introduce the participants to FHIR IG authoring, building and how to publish a draft on Github.

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
