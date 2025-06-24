## Modellgüte und ML Pipelines
### Maschinelles Lernen (oder die Suche nach 𝒇(𝒙))
- Annahme: 𝑓(𝑥) beschreibt den Mechanismus zur Generierung der Beobachtungsdaten 
- Aufgabe: Bestimme g(𝑥), die die Trainingsdaten bestmöglich beschreibt
### Einordnung
- Ziel: bestmögliches Modell finden
- wann ist ein Modell gut, welche Indikatoren werden zur Beurteilung verwendet? 
- Dimensionen der Beurteilung 
	- Genauigkeit/ Modellperformance auf ungesehenen Daten (Fokus in Veranstaltung) 
	- Interpretierbarkeit des Modells 
	- Anpassbarkeit 
	- Erforderliche Ressourcen für Training und Anwendung
### Regression - Under- und Overfitting
![[481ab3e6607d23d5874e322ddd2f61bc_MD5.jpeg|500]]
### Klassifikation – Under- und Overfitting
![[d559d75f104a75356205eff972b74ff7_MD5.jpeg|500]]
### Konfusionsmatrix

|                   | Ground Truth (+)    | Ground Truth (-)    |
| ----------------- | ------------------- | ------------------- |
| **Predicted (+)** | True Positive (TP)  | False Positive (FP) |
| **Predicted (-)** | False Negative (FN) | True Negative (TN)  |

#### Metriken:
- **Precision** = TP / (TP + FP)
- **Recall** = TP / (TP + FN)
- **Accuracy** = (TP + TN) / (TP + FP + TN + FN)
- **F₁ Score** $F₁ =\frac {2 * (Precision * Recall)} {(Precision + Recall)}$
#### Asymmetrische Fallkosten
##### Kosten pro Ereigniss

|                   | Ground Truth (+) | Ground Truth (-) |
| ----------------- | ---------------- | ---------------- |
| **Predicted (+)** | 26.63            | 5.32             |
| **Predicted (-)** | 146.14           | 0                |
TP = Durchschn. Reparaturkosten 
FP = Zusätzliche Wartungskosten 
FN = Ungeplantes Event + Rep.-/ Ersatzkosten
#### Ohne Modell

|                   | Ground Truth (+) | Ground Truth (-) |
| ----------------- | ---------------- | ---------------- |
| **Predicted (+)** | 0                | 0                |
| **Predicted (-)** | 6,8%             | 93,1%            |
- nichts wird vorhergesagt
- $146,14*0,068+0*0,931=9,94$
#### Mit Modell

|                   | Ground Truth (+) | Ground Truth (-) |
| ----------------- | ---------------- | ---------------- |
| **Predicted (+)** | 4,8%             | 29,2%            |
| **Predicted (-)** | 0.2%             | 64,0%            |
- $26,63*0,048+5,32*0,292+146,14*0,002+0*0,64=3,2$ 
- auch wenn die Vorhersagen nicht perfekt sind, sind die durchschnittskosten dank asymmetrischer Fallkosten deutlich geringer
### Evaluation von Regressionsmodellen
#### Testset als Probe der ungesehenen Daten 
- Grundidee: „Ungesehenes“ Testset ermöglicht Bewertung der Generalisierbarkeit 
- Problem Overfitting und fehlende Generalisierbarkeit 
	- Kein oder kein zufällig gewähltes Testset 
	- Modell wird auf Testset optimiert 
	- Target Leakage: Features nutzen, die für ungesehene Daten nicht zur Verfügung stehen; Trainingsdaten (z.B. Doppelte, Gruppen, …)
#### Test-Validation-Train Split
- Grundidee: Ein internes “Testset“, auf dem wir Optimierungsentscheidungen treffen (= Validierungsset) und ein „echtes“ Testset, auf dem die finale Metrik berechnet wird
- Nachteil: Trainingsdatensatz wird verkleinert
#### 5 Fold Cross-Validation
- Datensatz split in 5 gleich große Teile
- Modell wird mit 4 von 5 trainiert und 1 getestet
- wird 5 mal wiederholt für alle Teile
- Score ist der Durchschnitt davon
### Auswahl von Modelloptionen
- Man kann nicht nur Modell wählen sondern auch
	- Unterschiedliche Feature (und weitere datenbezogene Aspekte) 
	- Unterschiedliche Algorithmen 
	- Unterschiedliche Hyperparameter
#### Hyperparameter
- Modelle haben unterschiedliche Hyperparameter
- man weiß nicht welche am besten sind 
- Dokumentation der Modelle hilft, Rahmen zu setzen
- Grid-Search: Kombinationen von Hyperparametern evaluieren
	- Beispiel: 
	- Grid: $x_1$ und $x_2$ haben jeweils 10 Schritte à 0.1
		- = 100 Kombinationen 
	- Score: Für jede Kombination wird ein Modell trainiert und Performance gemessen 
	- Optimierung: Wähle Parameter mit bester Performance
#### Ausgewählte HyperP in logistischer Regression
- **Penalty (Regularisierungstyp)**:
    - **L1**: Führt zur sparsamen Modellierung, indem es die Koeffizienten der weniger wichtigen Merkmale auf null setzt.
    - **None**: Keine Regularisierung. Dies kann zu einem Überanpassungsproblem führen, wenn das Modell zu viele Parameter hat.
- **C (Regularisierungsstärke)**:
    - Der Parameter **C** ist der Inverse der Regularisierungsstärke. 
    - größerer Wert von **C**: weniger Regularisierung, Modell mehr Flexibilität
- **Class weight (Klassengewicht)**:
    - verwendet, um Ungleichgewicht der Klassen zu berücksichtigen
- **Solver (Optimierungsalgorithmus)**:
    - Bestimmt, welcher Algorithmus zur Lösung des Optimierungsproblems verwendet wird.