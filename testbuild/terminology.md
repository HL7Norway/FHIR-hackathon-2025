# Terminology - FHIR Hackathon 2025 v1.4.0

* [**Table of Contents**](toc.md)
* **Terminology**

## Terminology

This page contains more detailed information about the Nordic tx FHIR server API and Terminology track.

### Basic use cases

The basic use cases are described in the [track description page](https://hl7norway.github.io/FHIR-hackathon-2025/currentbuild/track-descriptions.html#use-cases) and includes building IG using the nordic terminology server and accessing the terminology API.

### Advanced use cases

Some advanced terminology assignments.

#### Add Codesystem to kodeverk IG

1. Define a codesystem and corresponding valueset as FHIR resources:
1. [CodeSystem definition](https://hl7.org/fhir/R4/codesystem.html)
1. [ValueSet definiton](https://hl7.org/fhir/R4/valueset.html)

1. Debug the definition using IG publisher tools or fshschool tools on the internet.
1. Add a pull request to[kodeverk IG](https://github.com/HL7Norway/kodeverk)for the CodeSystem/ValueSet definitons.

#### Add Codesystem and ValueSet definition tx-nordic

Use the [tx-nordic](https://tx-nordics.fhir.org/fhir/r4) API to add a NamingSystem, CodeSystem and ValueSet definition to the server.

#### Build an IG that uses a ValueSet/CodeSystem

Build an IG using different terminology servers. What happens?

1. Build a FHIR IG containting a profile that uses one of your defined ValueSets.
1. Add an example that includes codes from the CodeSystem.
1. Build the IG referring to the[tx-nordic](https://tx-nordics.fhir.org/fhir/r4).
1. Inspect the results, including the QA report to see if there are any errors.
1. Compare QA report building using tx-nordic and not building using tx-nordic server.

#### Map FAT Codesystem to FHIR CodeSystem

Inspect [finnkode.no](https://finnkode.helsedirektoratet.no/) and the API documentation for [FAT-API](https://fat.kote.helsedirektoratet.no/index.html).

1. Is it possible to map the contents available for administrative codesystems to FHIR CodeSystems and ValueSets definitions?
1. Make an example of a mapping containing the information available from FAT-API for a CodeSystem, preferably with a ValueSet containing all the code from the mapped CodeSystem.
1. Can the mapping be described using a[FHIR StructureMap](https://hl7.org/fhir/R4/structuremap.html)or is another mapping language better suited?
1. Make script for translation from FAT codesystem to FHIR codesystem.

