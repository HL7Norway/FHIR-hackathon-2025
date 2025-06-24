# Hvordan bruke denne repoen som en mal

Denne guiden vil hjelpe deg med å bruke denne repoen som en mal for å lage din egen FHIR Implementation Guide (IG) ved å bruke GitHubs "Use this template" funksjon og GitHub Actions for generering.

## Trinn 1: Bruk repoen som en mal

![Use this template](use-this-template.png)

1. Gå til [HL7Norway/ig-mal](https://github.com/HL7Norway/ig-mal) repoen på GitHub.
2. Klikk på den grønne "Use this template"-knappen øverst til høyre
3. Velg "Create a new repository" fra rullegardinmenyen.

## Trinn 2: Opprett et nytt repository

1. Skriv inn et nytt repo-navn for din IG, for eksempel `min-ig`.
2. Legg til en beskrivelse hvis ønskelig.
3. Velg om repoen skal være offentlig eller privat.
4. Klikk på den grønne "Create repository from template"-knappen.

## Trinn 3: Konfigurer Implementation Guide

Åpne `ig.ini`-filen og oppdater banen til Implementation Guide JSON-filen:

```ini
[IG]
ig = fsh-generated/resources/ImplementationGuide-min-ig.json
template = https://github.com/HL7Norway/ig-template
```

## Trinn 4: Rediger FSH-filer

Rediger FSH-filene i `input/fsh/profiles` for å definere dine egne profiler og utvidelser. For eksempel, åpne `mal-Patient.fsh` og tilpass den etter dine behov.

## Trinn 5: Valider eksempler

Legg til dine egne eksempler i `input/examples` og sørg for at de valideres mot dine FSH-profiler.

**NB! Katalogen er ikke opprettet i malen. Du kan med fordel lage eksempler i FSH-filen til selve profilen, se eksempel-profilen.**

## Trinn 6: Sett opp GitHub Actions

Repoen inneholder allerede en GitHub Actions workflow for å generere og publisere Implementation Guide. Du kan finne denne filen i `.github/workflows/mal-gh-pages.yml`.

## Trinn 7: Kjør GitHub Actions

1. Gå til "Actions"-fanen i din nye repo på GitHub.
2. Velg workflowen `ig-mal-gh-pages`.
3. Klikk på "Run workflow"-knappen for å starte genereringen.

## Trinn 8: Sjekk utdata

Etter at workflowen har kjørt ferdig, vil du finne utdata i `gh-pages`-branchen. Åpne `index.html` i en nettleser for å se din genererte Implementation Guide.

## Eksempel på sushi-config.yaml

Her er et eksempel på en `sushi-config.yaml`-fil:

```yaml
id: din.fhir.ig
canonical: http://example.org/fhir/min-ig
name: DinIG
title: "Din Implementation Guide"
description: En detaljert beskrivelse av din Implementation Guide.
status: draft
version: 0.1.0
fhirVersion: 4.0.1
copyrightYear: 2025+
releaseLabel: ci-build
jurisdiction: urn:iso:std:iso:3166#NO "Norway"
publisher:
  name: Din Organisasjon
  url: https://www.example.org
menu:
  Home: index.html
  Artifacts: artifacts.html
  TOC: toc.html
```
