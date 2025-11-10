### PMD track summary

12 deltakere

Alle kom igjennom testcasene
Test av APIet og dokumentasjonen
Ideer for videreutvikling av PMD

* kontekst rundt måledata
* Hva betyr målingen
* måleserien som dette er en del av
* kvaliteten på data og opphavet til data
* Hvem har ansvaret for datakvaliteten
* Fikk testet hvor bred profil som vi skal tillate i PMD
* Hvordan folk utenfor NHN bruker FHIR

#### Background

The developer portal for PMD is at https://utviklerportal.nhn.no/informasjonstjenester/pasientens-maaledata.

#### Demo App

Demo app for observation post/get and some utilities:

[Demo app](https://fhir-hackathon-pmd.vercel.app/)

#### Identified issues

##### Error messages are not that descriptive

It would be very nice for developers, but not the biggest priority.

##### Big bundles do not go through

The platform does not accept a Bundle of 10 Mb. The use case is when you onboard a new patient and
want to record a lot of historical data.

This is probably a load balancer configuration issue.

We don’t know what file size is accepted. It would be nice to have this in documentation.

##### Conditional Create is not supported

Yet.

It will be essential, when data starts to stream in from multiple sources. It is also convenient
for a single source of data, as it greatly simplifies deduplication.

##### Results of a Bundle are not returned directly

It’s not clear how the Bundle is processed.

#### Open Questions

##### How to record Provenance?

It is important to capture the source of the data. How should this be recorded and communicated?

A simple solution is to use the
[`Observation.meta.source`](https://www.hl7.org/fhir/resource-definitions.html#Meta.source)
element.

The FHIR standard also has the Provenance resource type that should probably be used, as it
enables the entire flow of data to be recorded, and accommodates more data.

Some implementations use the Provenance resource as a separate entity. It may be difficult to
record the Provenance resource together with the Observation, especially when recording a lot of
data in Bundles using conditional create.

A simple implementation adopted in some early implementations is to contain the Provenance in the
Observation. This is not a good fit for batch processing, and makes searching by provenance hard -
but it is easy to implement.

In some cases, like dosing medication, context around a measurement is very important. For a
primary clinician approximate weight might be enough, for cancer treatment the weight is very
sensitive.

#### Notable Results

It is good that the profile is permissive

Sensotrend was able to post data used in other environments, with minor changes. The biggest change
was the use of identifiers instead of id’s in `.subject` and `.performer references`.

### OKT track summary

* 10 participants
* Det er alltid mindre tid enn det man har tenkt, mye å diskutere
* Tre ressurser som kan uttrykke det som tilbys gjennom OKT-API  
* ServiceReqest, CarePlan eller Episode of Care for OKT  

#### EpisodeOfCare - hvilke felter som er implementert i pilot

* Eksempler i en IG, identifisert noen endringer  
* Datafelt trengs ikke i modellen
* Testet og forbedrert EpisodeofCare profilen
