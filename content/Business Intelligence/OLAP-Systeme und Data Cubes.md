## OLAP-Systeme und Data Cubes
- **OLAP** (Online Analytical Processing) ermöglicht die schnelle Analyse von **mehrdimensionalen Informationen**.
### Anforderungen
-  an OLAP-Systeme sind durch **FASMI** definiert:
    - **Fast:** Geringe Antwortzeiten (interaktiver Betriebsmodus).
    - **Analysis:** Intuitive Werkzeuge unterstützen die Analyse durch Endnutzer.
    - **Shared:** Mehrbenutzerbetrieb mit Rechte- und Rollenkonzept.
    - **Multidimensional Information:** Strukturierung der Information nach Dimensionen.
- **Data Cubes** sind eine zentrale Datenstruktur in OLAP. Die Idee ist, **Queries zu vereinfachen und zu beschleunigen**, indem mögliche Kombinationen von Daten vorab berechnet werden.
### Eigenschaften
- Ein Data Cube besteht aus:
    - **Dimensionen:** Funktional unabhängige Attribute, deren Kreuzprodukt den Data Cube aufspannt.
    - **Fakten:** Quantitative Kennzahlen (Measures), die die Zelleninhalte ausfüllen, wie z.B. Umsätze.
    - **Hierarchien:** (Partielle) Ordnung, in der die Dimensionen zueinander stehen (z.B. Zeitverlauf).
- **Hierarchien** können in Leveln organisiert sein, z.B. Region > Land > Stadt > Kunde. Es gibt auch **parallele Hierarchien**, die unabhängig voneinander existieren können.
- **Aggregation** (Summarizability) ist ein wichtiges Konzept, um Fakten über verschiedene Dimensionen zu berechnen.
### OLAP-Operationen
- **Slice:** Auswahl einer Teilmenge des Data Cubes durch Filtern nach einer Dimension (z.B. Country Manager Deutschland).
- **Dice:** Auswahl eines Teilcubes durch Filtern nach mehreren Dimensionen (z.B. Weihnachts- vs. Ostergeschäft in der EU).
- **Drill-Down:** Detaillierung der Daten durch Navigieren in einer Hierarchie nach unten (z.B. von Produktkategorie zu einzelnen Produkten).
- **Roll-Up:** Aggregation der Daten durch Navigieren in einer Hierarchie nach oben (z.B. von einzelnen Produkten zu Produktkategorien).
### Schemata für Data Warehouses
- **Star Schema:** Ein einfaches Schema mit einer zentralen Faktentabelle und Dimensionstabellen.
- **Snowflake Schema:** Eine Erweiterung des Star Schemas, bei dem Dimensionstabellen weiter normalisiert werden.
- **Galaxy Schema (Fact Constellation):** Mehrere Faktentabellen, die sich Dimensionstabellen teilen.
### Materialisierung
- Die **Materialisierung** bezieht sich auf die Vorberechnung und Speicherung von Cuboids (Teilwürfel).
- Es gibt drei Ansätze:
    - **Keine Materialisierung:** Nur Basis Cuboids werden vorberechnet, was bei mehrdimensionalen Aggregaten langsam sein kann.
    - **Partielle Materialisierung:** Selektive Berechnung einer Teilmenge der möglichen Cuboids oder Subcubes, die ein bestimmtes Kriterium erfüllen.
    - **Vollständige Materialisierung:** Alle Cuboids werden vorberechnet und als vollständiger Cube gespeichert, erfordert viel Speicherplatz.
- Es gibt einen **Trade-off zwischen Geschwindigkeit und Speicherplatz**.