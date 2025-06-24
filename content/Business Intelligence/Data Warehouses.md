#### Data Warehouse
- zentraler Speicher von internen und externen Daten
- zur performanten Analyse und zum Reporting in Unternehmen
- Datengrundlage für Business Intelligence
#### Data Warehousing
- die Datenbeschaffung aus internen und extern Quellen
- die Datentransformation und - aufbereitung gemäß der Quell- und Zieldatenbankschemata
- die Datenqualitätssicherung und die Speicherung
- die auf OLAP basierende Datenanalyse
### Eigenschaften
- Ein DW ist **subjektorientiert**, **integriert**, **zeitvariant** und **nicht-volatil**.
    - **Subjektorientiert:** Fokus auf relevante Aspekte des Unternehmens.
    - **Integriert:** Verbindet unterschiedliche Quellen.
    - **Zeitvariant:** Historische und aktuelle Daten im Zeitverlauf.
    - **Nicht-volatil:** Unveränderbarkeit der Daten.
- Ein DW wird als **"single source of truth"** bezeichnet.
### Operative Datenbanken (OLTP) vs. Data Warehouses (OLAP)
- **OLTP** (Operative Systeme):
    - Ziel: Geschäft betreiben.
    - Nutzer: Personal nah am Tagesgeschäft.
    - Daten: Unverdichtete Einzeldaten.
    - Zeithorizont: Aktuelle Geschäftsdaten.
    - Zugriff: Häufige, wiederholte, kurze Lese- und Schreiboperationen.
- **OLAP** (Data Warehouse):
    - Ziel: Entscheidungsunterstützung, Geschäft analysieren.
    - Nutzer: Entscheidungs- und Führungskräfte.
    - Daten: Multidimensionale, subjektbezogene, abgeleitete Daten.
    - Zeithorizont: Historischer Verlauf.
    - Zugriff: Seltene, längere Operationen zum Lesen, Anfügen und Verdichten.
### Herausforderungen beim Befüllen von Data Warehouses
- **Struktur- und Aggregationsprobleme** sind eine wesentliche Herausforderung.
    - **Unvollständigkeit** der Daten kann zu Problemen führen.
    - **Inkonsistente Zuordnungen**, wie z.B. Mehrfachzuordnungen in der Zeitdimension (Kalenderwochen vs. Monate), führen zu Inkonsistenzen.
- Die **Zeitdimension** ist oft Teil von Abfragen und muss gut implementiert werden.
    - Mögliche Implementierungen sind: **Timestamp in der Faktentabelle** oder eine **zusätzliche Zeitdimensionstabelle** mit Fremdschlüsseln.
    - Die **Häufigkeit des Ladevorgangs** (Import aus OLTP-Systemen) muss beachtet werden.
    - Die **historische Integrität** (Non-Volatility) ist wichtig in Bezug auf materialisierte vs. nicht-materialisierte Faktentabellen.
- **Konsistente und vollständige Hierarchien** in den Dimensionstabellen sind notwendig, um Operationen wie Drill-Down und Roll-Up zu gewährleisten.