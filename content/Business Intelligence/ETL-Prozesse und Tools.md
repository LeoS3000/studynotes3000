## ETL-Prozesse und Tools 
### Allgemein
- Der ETL-Prozess besteht aus den folgenden Schritten:
    - **Extract:** Extrahieren von Daten aus heterogenen, internen und externen Quellen (OLTP-Systeme, Web, Dokumente, Datenbanken).
    - **Transform:** Transformation, Bereinigung (Cleaning) und Zusammenführung der Rohdaten.
    - **Load:** Sortieren, Konsolidieren, Indizieren und Berechnen von Views.
    - **Refresh:** Regelmäßige Updates
- **zentrale Rolle** beim Aufbau von Data Warehouses
### Staging
- Warum: Vermeidung erneuter Extraktion aus den Quellen 
- Was: Schritt zwischen Datenproduktion und Überführung in das Data Warehouse 
- Wie: Temporäre Zwischenspeicherung extrahierter Rohdaten vor der Integration, möglichst geringe bzw. gar keine Transformation oder Veränderung der Quelldaten
### Von ETL zu ELT
- Transformation erfolgt erst nach dem Laden 
- Flexibilität und Weiterentwicklung des Prozesses