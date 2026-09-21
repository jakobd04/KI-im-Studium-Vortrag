# Rein funktionale UIs
Ihr baut ein tool und irgendwie müssen Leute (potentiell nur interner Mitarbeiter) damit interagieren.
Hier hat man eine Aufgabe vor sich, wo es erstmal heißt: Es soll funktionieren, nicht wunderschön, nicht perfekt ergonomisch. Auf einer UI baut nichts mehr auf. Wenn es hier kleine Fehler gibt wie bspw.: "Dieser Knopf reagiert nur, wenn der Teil ganz in view gescrollt ist", entstehen daraus keine weiteren Fehler.
- Ein LLM kann diese UI viel schneller zusammenkleistern als ihr es je könntet
- Kleine Bugs propagieren nicht gleichermaßen durch ein größeres System (natürlich muss die UI korrekt an die API dahinter angebunden sein, aber UI interne Fehler sind gemeint)
- Es muss nicht schön sein, nur bedienbar

# LaTeX & Co
Ihr schreibt eine Hausarbeit und habt alle Texte schon in simplem Markdown geschrieben.
Eine KI kann den gesamten LaTeX Boilerplate schreiben und das viel schneller als ihr. Sie kann auch mathematische Formeln korrekt in LaTeX übersetzen.
- Hier noch mehr als bei der UI kann man Qualitäts Makel mit dem Auge erkennen, es reicht also wenn die finale PDF keine Fehler hat, selbst wann das LaTeX dahinter vielleicht komplett schlecht geschrieben ist, wenn es funktioniert. 

# Kurze einmal Skripte
Ihr müsst ein paar hundert Excels in CSV übertragen. Manuell ziemlich aufwändig. Auch hier kann ein LLM in Sekunden ein vollkommen fehlerfreies Skript auspucken, dass die Aufgabe erledigt.
- Ist es hässlich geschrieben? Egal, die Aufgabe muss einmal erledigt werden und das wars
- Man lässt es einmal laufen und checkt, ob die CSVs alle richtig formatiert sind, guckt einmal kurz über das Skript, ob es keine groben Fehler gibt, fertig

# Allgemein
Aufgaben die Folgende Bedingungen erfüllen kann man gut "vibe coden":
- Es ist eine kleine einmalige Aufgabe, die automatisiert wird
- Es zählt alleinig, dass der NICHT-inhaltliche Output am Ende gut aussieht, nicht ob der Code oder das LaTeX gut geschrieben ist
- Es geht darum eine simple Lösung für ein simples Problem zu haben: Bspw eben eine UI für ein schon bestehendes Programm
- ABER auch hier gilt immer, ab eine gewissen Größe gibt es nunmal gewisse Designdecions die getroffen werden müssen und hier sollte man sich aller dieser Entscheidungen bewusst sein, was nicht der Fall ist, wenn man komplett "vibe coded"