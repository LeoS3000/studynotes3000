## Clustering
### Unternehmenskontext
- Annahme: Markt heterogen 
- Ansatz: Segmente Identifizieren
- Anwendung: Bedarfsoriente Ansprache
--> Ansprechbare Gruppen z.B. Sinus Milieus
### Ähnlichkeitsmaße / Abstände von Beobachtungen
- benötigt, um cluster zu definieren
- wie weit sind werte entfernt
### K-Means
- Centroid-based: Jeder Datenpunkt wird dem nächsten der k Mittelpunkte zugeordnet 
- Einfach nachvollziehbar aber instabil
- Algorithmus 
	- Lege k Mittelpunkte zufällig fest 
	- Ordne jeden Punkt dem Mittelpunkt zu, der am nächsten gelegen ist 
	- Bestimme die neue k Mittelpunkte aufgrund der zugeordneten Punkte 
- Bewertung 
	- Einfach zu implementieren 
	- Instabile Ergebnisse (anfällig für Noise) 
	- Eher „runde“ Cluster
### DBSCAN - Density-Based Spatial Clustering of Applications with Noise
- Density-based: Findet Cluster basierend auf der Dichte im Radius r um jeden Punkt 
- Erfordert gleiche Dichte innerhalb und niedrige Dichte zwischen Clustern
- Algorithmus 
	- Weist alle Punkte in einem Radius r um einen gegeben Punkt den gleichen Cluster zu, wenn es weniger als x sind, ist der Punkt Noise 
	- Alle Punkte werden auf weitere umgebende Punkte überprüft 
- Bewertung 
	- Kann nicht-runde Cluster erkennen 
	- Schlechte Ergebnisse bei Überlappungen oder wenn Cluster unterschiedliche Dichte aufweisen 
	- Benötigt kein k
### Gaussian Mixture Models
- Generativ: Sucht nach den k Verteilungen, die die Daten am besten erklären 
- Können neue Punkte generieren und Unsicherheit quantifizieren
- Algorithmus (Expectation-Maximization) 
	- Zufällige Festlegung der Verteilungs- parameter (Normalverteilungen) 
	- Zugehörigkeit der Punkte zu Verteilungen bestimmen (E-Step) 
	- Gewichtete Neuberechnung der Verteilungs- parameter (M-Step); Wiederholung E-Step 
- Bewertung 
	- Robust gegen Outlier 
	- Nur „runde“ Cluster 
	- Hängt stark von Initialisierung ab
### Eigenschaften von Clustering-Algorithmen
- Hard vs. Fuzzy
	- Ist der Output die Zuweisung zu einem Cluster oder eine Wahrscheinlichkeit für alle Cluster?
- Complete vs. Partial
	- Werden Outliers ausgelassen oder werden sie einem Cluster zugewiesen?
- Partitonal vs. Hierarchical
	- Werden die Punkte gleichzeitig (global) oder schrittweise (lokal) aufgeteilt?
- Discriminative vs. Generative
	- Gibt es eine Entscheidungsfunktion (diskriminative) oder eine Wahrscheinlichkeitsverteilung zu der Cluster?
- Apriori vs. Post-hoc
	- Wird die Anzahl der Cluster k automatisch festgelegt?
**--> Welcher Algorithmus am besten ist, kommt auf die Daten an**
### Herausforderungen
- Vielzahl von Algorithmen – keiner davon ist unabhängig von den gegebenen Daten immer der beste
- Instabilität durch Rauschen und Ausreißer und die Wahl der Hyperparameter wie $k$ haben hohen Einfluss auf Ergebnisse
- Mathematisch optimale Cluster sind unter Umständen nicht die Nützlichsten. „Nützlichkeit“ ist schwierig messbar
- Fragen: 
	- wie geht man mit neuen Daten/ Kunden um 
	- wie oft die Cluster aktualisieren
### Rule Mining - Warenkorb Analyse ???
- Frage: Welchen Zusammenhang gibt es zwischen Produkten?
- Ansatz: Rule Mining 
- Anwendung: Targeted Marketing
	- Gezieltere Produktvorschläge 
	- Bündelangebote (bspw. „komplettes Outfit“) 
	- Preisdiskriminierung
### Dimensionsreduktion
- Problem: Hohe Dimensionalität erschwert Analyse/ Inferenz und Visualisierung 
- Lösung: $D$ Dimensionen im $N$-dimensionalen Raum finden, sodass $D<N$ aber das Maximum an Informationen erhalten bleibt
- Manifold Learning Methoden wie T-SNE
- Methoden der Linearen Algebra (z.B. PCA)