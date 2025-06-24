# Generere PlantUML (diagrammer)

Denne filen er en GitHub Actions workflow som brukes til å generere PlantUML-diagrammer og publisere dem til repoen. Her er en detaljert forklaring av hvert trinn i workflowen.

## Workflow-navn

```yaml
name: Generate PlantUML
```

## Aktivering av Workflow

```yaml
on:
  push:
    branches:
      - main
  workflow_dispatch:
```

Denne delen spesifiserer at workflowen kjøres automatisk ved push til `main`-branchen eller manuelt ved å bruke "Run workflow"-knappen i GitHub Actions-grensesnittet.

## Jobber

Workflowen består av en jobb kalt `generate_plantuml`.

```yaml
jobs:
  generate_plantuml:
    runs-on: ubuntu-latest
    name: plantuml
```

Denne jobben kjører på `ubuntu-latest`-miljøet og har navnet `plantuml`.

### Trinn 1: Sjekk ut koden

```yaml
steps:
  - name: checkout
    uses: actions/checkout@v4
    with:
      fetch-depth: 1
```

Dette trinnet sjekker ut repoen slik at workflowen kan få tilgang til koden. `fetch-depth: 1` begrenser historikken som hentes for å redusere nedlastingstiden.

### Trinn 2: Generer PlantUML-diagrammer

```yaml
  - name: plantuml
    id: plantuml
    uses: grassedge/generate-plantuml-action@v1.5
    with:
      path: mal/input/images
      message: "Render PlantUML files"
    env:
      GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

Dette trinnet bruker `grassedge/generate-plantuml-action@v1.5` for å generere PlantUML-diagrammer fra filene i `mal/input/images`-mappen.

- `path`: Angir mappen som inneholder PlantUML-filene.
- `message`: Angir commit-meldingen for endringene som gjøres.
- `env.GITHUB_TOKEN`: Brukes for autentisering mot GitHub API for å kunne pushe endringer.

Ved å følge denne workflowen, kan du automatisk generere og publisere PlantUML-diagrammer til repoen ved hver push til `main`-branchen eller ved manuell kjøring av workflowen.
