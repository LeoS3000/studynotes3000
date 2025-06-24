#### Aufbau
- **Eingabeschicht (Input Layer)**
    - so viele Neuronen, wie es **Merkmale** (Features) pro Datenpunkt gibt
- **Verborgene Schichten (Hidden Layers)**
    - Mindestens **eine** Hidden Layer (oft mehrere).
	    - besteht aus mehreren Neuronen
	    - gewichtete Summe ihrer Eingaben berechnen 
	    - **nicht-lineare Aktivierungsfunktion** anwenden
- **Ausgabeschicht (Output Layer)**
    - Liefert die **Vorhersage** oder **Klassifikation**.
    - Anzahl der Neuronen hängt von der Aufgabe ab
    - 1 Neuron für binäre Klassifikation, mehrere Neuronen für Multi-Klassen-Klassifikation
#### Algorithmus
- Kombination vieler Neuronen in mehreren Ebenen 
- Nicht-lineare Aktivierungsfunktionen 
- Parameterschätzungen erfolgen durch Lösung eines Optimierungsproblems (Minimierung der Fehler)
#### Bewertung
- State-of-the-art Performance 
- Ergebnisse sind schlecht interpretierbar 
- Lange Trainingszeiten und hohe Rechenleistungen erforderlich