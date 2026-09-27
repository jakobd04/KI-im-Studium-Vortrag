# KI im Studium <!-- .slide: style="text-align: center" -->

---

### Outline

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
>Im Studium mache ich endlich nur noch, was mich interessiert
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
- KI macht selbständige Exkurse zugänglicher <!-- .element: class="fragment fade-in-then-semi-out" -->
- Kann erfrischend sein und sich langfristig auszahlen <!-- .element: class="fragment fade-in-then-semi-out" -->

Auch hier: <!-- .element: class="fragment fade-in" -->

**Die Art der KI Nutzung macht den Unterschied!** <!-- .element: class="fragment fade-in" -->

---

<!-- .slide: data-auto-animate="true" -->
**Die Art der KI Nutzung macht den Unterschied!**

- Nicht einfach Antworten akzeptieren <!-- .element: class="fragment fade-in-then-semi-out" -->
- Erst wenn man wirklich verstanden hat "Warum oder Warum nicht" <!-- .element: class="fragment fade-in-then-semi-out" -->

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
- [rsync](https://rsync.samba.org/) erkennt automatisch neue Dateien in der Cloud und downloaded sie
<!-- .element: class="fragment fade-in-then-semi-out" -->
- Klappt wunderbar also: „Claude mach, dass das immer sofort lädt...“ <!-- .element: class="fragment fade-in-then-semi-out" -->

---

<!-- .slide: data-auto-animate="true" -->
**Naives Ergebnis:**

```console
while True:
    rsync -a cloud.com/team_a/files /home/user/work/team_a
```
<!-- .element: class="fragment fade-in-then-semi-out" -->
- Team Lädt neue Dateien hoch $\Rightarrow$ landen direkt auf dem eigenen Laptop <!-- .element: class="fragment fade-in-then-semi-out" -->

Passt schon so oder? <!-- .element: class="fragment fade-in-then-semi-out" -->

**Aber was passiert eigentlich im Hintergrund?** <!-- .element: class="fragment fade-in-then-semi-out" -->

---

<!-- .slide: data-auto-animate="true" -->
**Aber was passiert eigentlich im Hintergrund?**

- [rsync](https://rsync.samba.org/) muss irgendwie erkennen, ob neue Dateien da sind 
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
- Je 30s Verzögerung wäre akzeptabel gewesen <!-- .element: class="fragment fade-in-then-semi-out" -->
- Evtl. bietet die Cloud einen besseren Mechanismus an (bspw. Benachrichtigung bei Änderung) <!-- .element: class="fragment fade-in-then-semi-out" -->

Notes:
- Mittlerweile denkt die KI selber an manche klassische unerwünschte Nebeneffekte wie diesen
- Aber das Problem Schema existiert weiterhin

---

**Beispiel Lernphase**

Offen?

---

### Eigenleistung

---

