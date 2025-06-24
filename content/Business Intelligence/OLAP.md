#### FASMI
- **Fast:** Geringe Antwortzeiten (interaktiver Betriebsmodus).
- **Analysis:** Intuitive Werkzeuge unterstützen die Analyse durch Endnutzer.
- **Shared:** Mehrbenutzerbetrieb mit Rechte- und Rollenkonzept.
- **Multidimensional Information:** Strukturierung der Information nach Dimensionen.
#### Eigenschaften
- **Dimensionen:** Funktional unabhängige Attribute, deren Kreuzprodukt den Data Cube aufspannt.
- **Fakten:** Quantitative Kennzahlen (Measures), die die Zelleninhalte ausfüllen, wie z.B. Umsätze.
- **Hierarchien:** (Partielle) Ordnung, in der die Dimensionen zueinander stehen (z.B. Zeitverlauf).
	- **Leveln**
	- **parallele Hierarchien**
- **Aggregation** (Summarizability) ist ein wichtiges Konzept, um Fakten über verschiedene Dimensionen zu berechnen.
#### Operationen
- **Slice:** Auswahl einer Teilmenge des Data Cubes durch Filtern nach einer Dimension 
- **Dice:** Auswahl eines Teilcubes durch Filtern nach mehreren Dimensionen 
- **Drill-Down:** Detaillierung der Daten durch Navigieren in einer Hierarchie nach unten
- **Roll-Up:** Aggregation der Daten durch Navigieren in einer Hierarchie nach oben 
### Schemata für Data Warehouses
- **Star Schema:** zentralen Faktentabelle und Dimensionstabellen.
- **Snowflake Schema:** Erweiterung des Star Schemas: Dimensionstabellen weiter normalisiert
- **Galaxy Schema:** Mehrere Faktentabellen, die sich Dimensionstabellen teilen
### Materialisierung
- Vorberechnung und Speicherung von Cuboids
    - **Keine Materialisierung:** Nur Basis Cuboids werden vorberechnet, was bei mehrdimensionalen Aggregaten langsam sein kann.
    - **Partielle Materialisierung:** Selektive Berechnung einer Teilmenge der möglichen Cuboids oder Subcubes, die ein bestimmtes Kriterium erfüllen.
    - **Vollständige Materialisierung:** Alle Cuboids werden vorberechnet und als vollständiger Cube gespeichert, erfordert viel Speicherplatz.
- Es gibt einen **Trade-off zwischen Geschwindigkeit und Speicherplatz**.