# Validere FSH-filer

Denne GitHub Actions workflowen er designet for å validere FHIR Shorthand (FSH)-filer i et prosjekt, slik at du slipper å generere ny IG hver gang. I tillegg har noen [online validatorer](https://fshonline.fshschool.org/) problemer hvis man f.eks. benytter seg av no-basis.

Den benytter seg av [fsh-validator](https://github.com/glichtner/fsh-validator) - [se dokumentasjon](https://fsh-validator.readthedocs.io/en/latest/).

## Trigger

Manuell utløsing (`workflow_dispatch`).

## Miljøvariabler

- `IG`: mal

Husk å endre denne til ditt navn på katalogen som IG'en ligger i.

## Jobber

### validate

**Kjører på:** `ubuntu-latest`

#### Steg

1. **Checkout repository**
   - Bruker `actions/checkout@v4` for å sjekke ut koden fra repository.

   ```yaml
   - name: Checkout repository
     uses: actions/checkout@v4
   ```

2. **Setup Node.js**
   - Bruker `actions/setup-node@v4` for å sette opp Node.js versjon 16.

   ```yaml
   - name: Setup Node.js
     uses: actions/setup-node@v4
     with:
       node-version: '16'
   ```

3. **Set up Python**
   - Bruker `actions/setup-python@v5` for å sette opp Python versjon 3.x.

   ```yaml
   - name: Set up Python
     uses: actions/setup-python@v5
     with:
       python-version: '3.x'
   ```

4. **Install fsh-sushi**
   - Installerer `fsh-sushi` globalt ved hjelp av npm.

   ```yaml
   - name: Install fsh-sushi
     run: npm install -g fsh-sushi
   ```

5. **Install hl7.fhir.no.basis-2.2.0-snapshots in local cache**
   - Installerer nødvendige FHIR-pakker og setter opp lokal cache.

   ```yaml
   - name: Install hl7.fhir.no.basis-2.2.0-snapshots in local cache
     run: |
       echo "NPM install fhir r4 core 4.0.1 from package registry"
       npm --registry https://packages.simplifier.net install hl7.fhir.r4.core@4.0.1
       echo "NPM install fhir no-basis220 from https://github.com/HL7Norway/resources/"
       curl -L -o hl7.fhir.no.basis-2.2.0-snapshots.tgz https://raw.githubusercontent.com/HL7Norway/resources/main/snapshots/hl7.fhir.no.basis-2.2.0-snapshots.tgz
       npm install hl7.fhir.no.basis-2.2.0-snapshots.tgz
       echo "Create .fhir packages cache directory for no-basis"
       mkdir -p $HOME/.fhir/packages/hl7.fhir.no.basis#2.2.0/package
       echo "Copy local no-basis snapshot to .fhir package cache directory"
       cp -r ./node_modules/hl7.fhir.no.basis/* $HOME/.fhir/packages/hl7.fhir.no.basis#2.2.0/package
   ```

6. **Install fsh-validator**
   - Installer `fsh-validator` fra GitHub.

   ```yaml
   - name: Install fsh-validator
     run: pip install -U git+https://github.com/glichtner/fsh-validator
   ```

7. **Run fsh-validator**
   - Kjører `fsh-validator` for å validere alle FSH-filer i spesifisert katalog.

   ```yaml
   - name: Run fsh-validator
     run: |
       cd ${{ env.IG }}/input/fsh/profiles/
       fsh-validator *.fsh
   ```

8. **Upload output file**
   - Laster opp valideringsresultatene som en artefakt.

   ```yaml
   - name: Upload output file
     uses: actions/upload-artifact@v2
     with:
       name: validation-results
       path: ${{ env.IG }}/input/fsh/profiles/validation-results.txt
   ```

## Konfigurasjon av brukeren

For å bruke denne workflowen som en mal, må brukeren:

1. Sikre at prosjektstrukturen matcher stiene som brukes i workflowen, spesielt `input/fsh/profiles/`.
2. Justere eventuelle spesifikke versjoner eller avhengigheter i henhold til prosjektets behov.
3. Manuelt utløse workflowen ved å bruke GitHub Actions grensesnittet eller API-et (siden workflowen er satt opp til å trigges manuelt med `workflow_dispatch`).

For mer informasjon, se den originale workflow-filen [her](https://github.com/HL7Norway/ig-mal/blob/main/.github/workflows/validate-fsh.yml).
