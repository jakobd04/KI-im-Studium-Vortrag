- Man hat ein Problem und lässt sich von KI eine Lösung schreiben, die einwandfrei funktioniert
- Man bemerkt keine Probleme, also kann man sich das checken sparen. Problematisch vor allem, wenn man es selbst nicht checken kann, weil man ein blutiger Anfänger ist 

- ABER hat die KI Dinge beachtet, an die ich selber nicht gedacht habe, weil ich direkt Claude die Zügel in die Hand gebe?
- Gibt es eventuell Probleme, die nicht am Output ersichtlich sind?
- Gibt es viel "cleanere" Ansätze, die man nie in betracht gezogen hat, weil die "leichte" Lösung ZU SCHNELL zusammengeklatscht wurde?

# Beispiele:
- Ein script, dass remote und local directories synchronisiert: (würde ich interaktiv machen)
  - rsync geht leicht?
  - perfekt: "Claude bitte schreib ein script, dass konstant rsync im loop aufruft, um diese Ordner zu syncen"
  - ergebnis: Ordner sind konstant synchronisiert
  - ABER: gibt es hier eventuell große Probleme, die gar nicht auffallen?
  - Wie arbeitet rsync überhaupt? Ist es überhaupt ein guter Ansatz?
  - Das Ergebnis sieht gut aus, aber naiv gebaut, synchroniert das script wirklich KONSTANT, das lastet einen gesamten CPU Core auf dem Server aus, obwohl alle 3 Sekunden synchronisieren wahrscheinlich schon vollkommen ausreicht
  - Kann man nicht auch auf remote und local reaktiv Änderungen erkennen? Dann müsste man gar nicht loopen, sondern synchronisiert nur on demand

- Ideal wäre noch ein Beispiel zu einem leicht missverstandenen Thema, wo man eventuell ein falsches Verständnis und Selbstbewusstsein zu einem Thema aufbaut und am Ende total sprachlos vor einer schlechten Note steht, obwohl man sich doch so sicher war. 