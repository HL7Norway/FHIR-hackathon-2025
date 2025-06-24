# Publisere til egen server med FTP

Denne filen er en GitHub Actions workflow som brukes til å laste opp innholdet fra `gh-pages`-branchen til en FTP-server for publisering til en web-server. Hemmelige variabler (secrets) brukes for å sikre autentiseringsinformasjon. Her er en detaljert forklaring av hvert trinn i workflowen og hvordan du bruker secrets.

## Workflow-navn

```yaml
name: Deploy to FTP
```

Dette setter navnet på workflowen til `Deploy to FTP`.

## Aktivering av workflow

```yaml
on:
  push:
    branches:
      - gh-pages
  workflow_dispatch:
```

Denne delen spesifiserer at workflowen kjøres automatisk ved push til `gh-pages`-branchen eller manuelt ved bruk av "Run workflow"-knappen i GitHub Actions-grensesnittet.

## Jobber

Workflowen består av en jobb kalt `ftp-deploy`.

```yaml
jobs:
  ftp-deploy:
    runs-on: ubuntu-latest
```

Denne jobben kjører på `ubuntu-latest`-miljøet.

### Trinn 1: Sjekk ut koden

```yaml
steps:
  - name: Checkout repository
    uses: actions/checkout@v4
    with:
      fetch-depth: 1
```

Dette trinnet sjekker ut repoen slik at workflowen kan få tilgang til koden. `fetch-depth: 1` begrenser historikken som hentes for å redusere nedlastingstiden.

### Trinn 2: Installer lftp

```yaml
  - name: Install lftp
    run: sudo apt-get install lftp
```

Dette trinnet installerer `lftp` for å håndtere FTP-opplastinger.

### Trinn 3: Deploy til FTP-server

```yaml
  - name: Deploy to FTP server
    env:
      FTP_SERVER: ${{ secrets.FTP_SERVER }}
      FTP_USERNAME: ${{ secrets.FTP_USERNAME }}
      FTP_PASSWORD: ${{ secrets.FTP_PASSWORD }}
    run: |
      lftp -f "
      open $FTP_SERVER
      user $FTP_USERNAME $FTP_PASSWORD
      mirror -R ./ /path/to/remote/directory
      bye
      "
```

Dette trinnet bruker `lftp`-kommandoen for å laste opp innholdet til FTP-serveren.

### Bruk av Secrets

- **env**: Miljøvariablene `FTP_SERVER`, `FTP_USERNAME`, og `FTP_PASSWORD` er definert som secrets. Secrets er sikre variabler som brukes til å lagre sensitiv informasjon som autentiseringsdetaljer. Disse kan legges til i repoet under `Settings` > `Secrets and variables` > `Actions`.

## Hvordan legge til Secrets i GitHub

1. Gå til repoet ditt på GitHub.
2. Klikk på `Settings`.
3. Velg `Secrets and variables` > `Actions`.
4. Klikk på `New repository secret`.
5. Legg til en ny secret ved å fylle inn navn (f.eks. `FTP_SERVER`) og verdi (f.eks. `ftp.example.com`).
6. Gjenta for `FTP_USERNAME` og `FTP_PASSWORD`.

Ved å bruke secrets på denne måten, sikrer du at autentiseringsinformasjonen din er beskyttet og ikke eksponeres i koden.
