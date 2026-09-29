# KI im Studium <!-- .slide: style="text-align: center" -->

---

### Lernpsychologie

---

<!-- .slide: data-auto-animate="true" -->
### Wieso ein Studium?

---

<!-- .slide: data-auto-animate="true" -->
### Wieso ein Studium?

- Geld? <!-- .element: class="fragment semi-fade-out" data-fragment-index="1"-->
- Prestige? <!-- .element: class="fragment fade-in-then-semi-out" data-fragment-index="1" -->
- Neugier? <!-- .element: class="fragment fade-in-then-semi-out" data-fragment-index="2" -->

Notes:
- Finanzielle Gründe & Wunsch nach akademischem Prestige sind valide, aber:
- Ohne Neugier schleppend
- Am besten Gedanken drüber machen
- Aber für viele ist Neugier dabei

---

<!-- .slide: data-auto-animate="true"-->
>Im Studium beschäftige ich mich endlich mit Themen, die mich interessieren
>
> — Viele von uns

**Leider auch nicht immer :\(** <!-- .element: class="fragment fade-in" -->

---

<!-- .slide: data-auto-animate="true" -->
**Leider auch nicht immer :\(**
- Abgaben & Lernen können stressig & lästig sein <!-- .element: class="fragment fade-in-then-semi-out" -->
- Mit KI geht es schneller und leichter <!-- .element: class="fragment fade-in-then-semi-out" -->

**Aber:** <!-- .element: class="fragment fade-in" -->
- Oftmals gibt es interessante Ausschnitte <!-- .element: class="fragment fade-in-then-semi-out" -->
- Durch „Claude erklär mir…“ geht das verloren <!-- .element: class="fragment fade-in-then-semi-out" -->

Notes:
- Besonders, wenn man in der Schule nicht „Lernen“ gelernt hat anfällig

---

<!-- .slide: data-auto-animate="true" -->
**Statt die intrinsische Motivation zu ersticken:**
- Neugier und Interesse nachgehen <!-- .element: class="fragment fade-in-then-semi-out" -->
- KI macht selbstständige Exkurse zugänglicher <!-- .element: class="fragment fade-in-then-semi-out" -->
- Kann erfrischend sein und sich langfristig auszahlen <!-- .element: class="fragment fade-in-then-semi-out" -->

Auch hier: <!-- .element: class="fragment fade-in" -->

**Die Art der KI Nutzung macht den Unterschied!** <!-- .element: class="fragment fade-in" -->

---

<!-- .slide: data-auto-animate="true" -->
**Die Art der KI Nutzung macht den Unterschied!**

- Nicht einfach Antworten akzeptieren <!-- .element: class="fragment fade-in-then-semi-out" -->
- Erst wenn man wirklich verstanden hat „Warum?“ oder „Warum nicht?“ <!-- .element: class="fragment fade-in-then-semi-out" -->

---

<!-- .slide: data-auto-animate="true" -->
### Ist KI zu gut?

---

<!-- .slide: data-auto-animate="true" -->
### Ist KI zu gut?

- KI löst viele Probleme Fehlerlos <!-- .element: class="fragment fade-in-then-semi-out" -->
- Verleitet zu blindem Vertrauen <!-- .element: class="fragment fade-in-then-semi-out" -->
- Besonders, wenn als Anfänger noch Wissen fehlt <!-- .element: class="fragment fade-in-then-semi-out" -->

**Aber:** <!-- .element: class="fragment fade-in" -->
- Weiß die KI, welche Mittel erlaubt/gegeben sind? <!-- .element: class="fragment fade-in-then-semi-out" -->
- Nimmt KI unerwünschte Nebeneffekte inkauf? <!-- .element: class="fragment fade-in-then-semi-out" -->
- Gibt es unbeachtete „saubere“ Lösungen? <!-- .element: class="fragment fade-in-then-semi-out" -->


Notes:
- Technische Info: Eine sehr schwere Klausur, die KI besteht

---

<!-- .slide: data-auto-animate="true" -->
**Szenario:**

Euer Team benutzt einen Cloud Ordner & ihr wollt neu hochgeladene Dateien der Mitarbeiter direkt auf euren Laptop laden.

**Wie kann man das angehen?**

---

<!-- .slide: data-auto-animate="true" -->
**Wie kann man das angehen?**

- Erstmal ein Download Tool finden <!-- .element: class="fragment fade-in-then-semi-out" data-fragment-index="1" -->
- [rsync](https://rsync.samba.org/) wird vom LLM empfohlen:
<!-- .element: class="fragment fade-in-then-semi-out" data-fragment-index="2" -->
```console
rsync -a cloud.com/team_a/files /home/user/work/team_a
```
<!-- .element: class="fragment fade-in-then-semi-out" data-fragment-index="2" -->
- [rsync](https://rsync.samba.org/) läuft einmal und erkennt was lokal fehlt
<!-- .element: class="fragment fade-in-then-semi-out" -->
- Klappt wunderbar also: „Claude mach, dass das immer läuft...“ <!-- .element: class="fragment fade-in-then-semi-out" -->

---

<!-- .slide: data-auto-animate="true" -->
**Naives Ergebnis:**

```console
while True:
    rsync -a cloud.com/team_a/files /home/user/work/team_a
```
- Team Lädt neue Dateien hoch $\Rightarrow$ landen direkt auf dem eigenen Laptop <!-- .element: class="fragment fade-in-then-semi-out" -->

Passt schon so oder? <!-- .element: class="fragment fade-in-then-semi-out" -->

**Aber was passiert eigentlich im Hintergrund?** <!-- .element: class="fragment fade-in-then-semi-out" -->

---

<!-- .slide: data-auto-animate="true" -->
**Aber was passiert eigentlich im Hintergrund?**

- [rsync](https://rsync.samba.org/) muss irgendwie cloud und lokal abgleichen
<!-- .element: class="fragment fade-in-then-semi-out" -->
$\Rightarrow$ Auch ein Scan ohne neue Dateien kostet Rechenleistung
<!-- .element: class="fragment fade-in-then-semi-out" -->

**Ergebnis?** <!-- .element: class="fragment fade-in" -->

---

<!-- .slide: data-auto-animate="true" -->
**Ergebnis?**

- Naiver Loop lastet evtl. einen Server CPU-Kern aus <!-- .element: class="fragment fade-in-then-semi-out" -->
- Die KI hat aber gemacht, was gefragt war <!-- .element: class="fragment fade-in-then-semi-out" -->
- Ihr müsst selber an alle Nebeneffekte denken <!-- .element: class="fragment fade-in-then-semi-out" -->

**Lösungen?** <!-- .element: class="fragment fade-in" -->
- Etwas Verzögerung wäre akzeptabel gewesen <!-- .element: class="fragment fade-in-then-semi-out" -->
- Evtl. bietet die Cloud einen besseren Mechanismus an (bspw. Benachrichtigung bei Änderung) <!-- .element: class="fragment fade-in-then-semi-out" -->

Notes:
- Mittlerweile denkt die KI selber an manche klassische unerwünschte Nebeneffekte wie diesen
- Aber das Problem Schema existiert weiterhin

---

<!-- .slide: data-auto-animate="true" -->
### Valide Nutzung

---

<!-- .slide: data-auto-animate="true" -->
### Valide Nutzung

- KI kann trotzdem sehr hilfreich sein <!-- .element: class="fragment fade-in-then-semi-out" -->
- Es gibt viel _reine_ Fleißarbeit
<!-- .element: class="fragment fade-in-then-semi-out" -->

**Beispiel: LaTeX** <!-- .element: class="fragment fade-in" -->

---

<!-- .slide: data-auto-animate="true" -->
**Beispiel: LaTeX**

- Soll helfen _eure_ Ergebnisse zu digitalisieren
<!-- .element: class="fragment fade-in-then-semi-out" -->
- Ein LLM ist schneller und (oft) besser darin <!-- .element: class="fragment fade-in-then-semi-out" -->
- Typesetting ist Mittel zum Zweck $\Rightarrow$ Kann man gut an KI outsourcen
<!-- .element: class="fragment fade-in-then-semi-out" -->

**Wichtig:** <!-- .element: class="fragment fade-in" -->
- Texte ausformulieren $\neq$ Formel in LaTeX Schreibweise bringen oder Formatierung <!-- .element: class="fragment fade-in-then-semi-out" -->

---

**Beispiel: Simple Einmal-Skripte**

- Bspw. _einmalig_ tausende Dateiformate ändern
<!-- .element: class="fragment fade-in-then-semi-out" -->
- Ist schnell und effektiv <!-- .element: class="fragment fade-in-then-semi-out" -->
- Ineffiziente Lösungen kosten nicht konstant <!-- .element: class="fragment fade-in-then-semi-out" -->

**Auch hier:** <!-- .element: class="fragment fade-in" -->
- Ab gewisser Komplexität muss man <!-- .element: class="fragment fade-in" -->
  - Design Entscheidungen treffen <!-- .element: class="fragment fade-in" -->
  - Nebeneffekte bedenken <!-- .element: class="fragment fade-in" -->

---

### Am Ende geht es auch um euch
