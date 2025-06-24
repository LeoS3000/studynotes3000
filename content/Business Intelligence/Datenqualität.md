## Datenqualität
### Dimensionen
- **Glaubwürdigkeit**: 
	- Korrektheit, Konsistenz und Zuverlässigkeit.
- **Nützlichkeit**: 
	- Vollständigkeit, Genauigkeit, Zeitnähe, Redundanzfreiheit und Relevanz.
- **Interpretierbarkeit**: 
	- Einheitlichkeit, Eindeutigkeit und Verständlichkeit.
- **Schlüsselintegrität**: 
	- Schlüssel-Eindeutigkeit, referentielle Integrität hinzugefügt.
### Voraussetzungen
- **Governance:** 
	- Klare Rollen, Verantwortlichkeiten und Rechenschaftspflicht.
- **Systeme & Prozesse:** 
	- Richtlinien, Prozesse und Infrastruktur.
- **Menschen und Fähigkeiten:** 
	- Sicherstellung der benötigten Kenntnisse.
- **Datensicherheit:** 
	- Genehmigte Verwendung der Daten.

### Kosten und Beispiele
- **Kosten von mangelnder Datenqualität**
    - **Fehlerhafte Daten:** Falsche, fehlende, veraltete oder nicht-eindeutige Werte, Duplikate.
    - **Schema- und Datenkonflikte:** Namens-, Struktur-, Identitäts-, Repräsentations- und Skalierungskonflikte, Verwendung von Synonymen und Homonymen.
- **Kosten für Kontrolle und Verbesserung der Datenqualität**
	- Training
	- Analyse
	- Reperatur
### Schema- und Datenkonflikte
- Namenskonflikt 
	- Verwendung von 
		- Synonymen 
		- Homonymen 
	- in Attributen und Entitätstypen
- Struktureller Konflikt 
	- Unterschiedliche Hierarchien und Abstraktionsniveaus 
	- Identitätskonflikte (unterschiedliche IDs) 
- Repräsentationskonflikt 
	- Unterschiedliche Kodierung und Datentypen 
	- Unterschiedliche Definitionen 
	- Skalierungskonflikte 
	- unterschiedliche Default- und Null-Werte  
- Datenkonflikt 
	- Fehlerhafte Daten: 
	- Falsche/ fehlende/ imputierte Werte 
	- Veraltete Werte 
	- Nicht-eindeutige Schlüssel 
	- Mehrfache Primärschlüsselnutzung
	- Duplikate
### Transformation und Cleaning
- **Reduktion:** Verringerung der Datenmenge.
- **Integration:** Zusammenführen von Daten aus verschiedenen Quellen.
- **Cleaning:** Bereinigung und Standardisierung der Daten.
### Data Cleaning
- Validierung der Sinnhaftigkeit.
- Markierung, Vorhersage/Inferenz und Imputation fehlender Werte.
- Finden und Berichtigung fehlerhafter Daten.
- Überprüfung und Anpassung der Datentypen.
- Prüfung auf Redundanzen.
- Behandlung von Ausreißern.
### Datentransformation
- Daten in eine für das Mining geeignete Form bringen
    - **Beispiele:** 
	    - Normalisierung (Skala 0-1), 
	    - Diskretisierung (Altersgruppen), 
	    - Feature Engineering (Perzentile) 
	    - Nutzung von Hierarchien (PLZ zu Bundesland).
### Datenreduktion
- **Dimensionalitätsreduktion**: 
	- Verringerung der Dimensionalität durch Rausfiltern der unwichtigeren Daten bspw. via Principal Component Analysis 
- **Parametrisierte Repräsentation:** 
	- Nutzung von mathematischen/ statistischen Methoden zur alternativen Repräsentation der Daten bspw. nur die Parameter einer linearen Regression speichern 
- **Datenkompression**:
	- Kompression der Daten zu Reduktion der Speicherkapazität (lossy vs. lossless)