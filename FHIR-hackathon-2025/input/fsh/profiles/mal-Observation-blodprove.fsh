Profile:     MalObservationBlood
Id:          mal-observation-blodprove
Parent:      Observation
Title:       "Blodprøve"
Description: "Profil for vanlige blodprøver"
* ^status = #draft
* ^date = "2025-01-31"
* ^publisher = "Organisasjonen min"

* subject only Reference(Patient) // Pasienten som blodprøven er tatt av
* effectiveDateTime MS // Dato og tid for blodprøve
* code MS // Kode for blodprøve 
* valueQuantity MS // Resultat av blodprøve