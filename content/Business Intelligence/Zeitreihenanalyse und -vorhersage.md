## Zeitreihenanalyse und -vorhersage
### - Zeitreihe: 
- Sequenz von Datenpunkten in zeitlicher Reihenfolge.
- **Datenpunkt:** Einzelner Wert oder Beobachtung.
- **Zeitstempel:** Spezifischer Zeitpunkt der Datenerfassung.
- **Trend:** Allgemeine Richtung der Zeitreihe über einen längeren Zeitraum.
- **Sensoren:** Erfassen Eigenschaften der Umgebung und wandeln physikalische Größen in elektrische um.
### - Samplingrate: 
- Häufigkeit der Wertaufnahme durch Sensoren.
- Abhängig von der Anwendung.
- Datenaggregation zur Reduzierung der Datenmenge.
### Daten zu Zeitreihen
- **Univariate Zeitreihe:** Genau ein Merkmal.
- **Multivariate Zeitreihe:** Mehr als ein Merkmal.
- **Granularität:** Abstände zwischen Beobachtungen, hängt mit der Frequenz zusammen.
### Industrie 4.0 & IoT
- Sensoren spielen zentrale Rolle in der Vernetzung von Geräten.
- Beispiel: Kaffeemaschine erfasst Temperatur, Wassermenge, Pumpendruck.
- Auswertung für Predictive Maintenance oder Nutzungsverhaltensanalyse.
- **Event Logs:** Speichern Daten für Process Mining.
    - Minimum: Fall-ID, Aktivitätsname, Zeitstempel.
    - Optionale Attribute möglich.
    - Fall-ID: Prozessinstanz, zu der das Event gehört.
    - Aktivität: Beschreibt die Aktion.
    - Zeitstempel: Datum und Uhrzeit des Ereignisses.
    - Abfolge (Trace): Folge von Ereignissen eines Falls, geordnet nach Zeitstempel.
    - Variante: Abfolgen von Fällen mit gleicher Aktivitätenreihenfolge.
### Process Mining
- Generiert Prozessmodelle aus Prozessdaten.
- Analyse von Prozess-Performance, Konformität und Optimierung.
Untersuchung der zeitlichen Struktur von Daten, um Muster, Trends und Abhängigkeiten zu identifizieren.
- **Ziel:**
    - Ein Modell finden, das die zeitlichen Änderungen der Daten erklärt.
    - Nutzung für retrospektive Analysen und Prognosen.
    - Identifikation von Trends, Saisonalität und Autokorrelationen.
- **Voraussetzung:**
    - Die Werte liegen in **diskreten Zeitpunkten** vor.
    - Die **Abstände zwischen den Zeitpunkten** sind gleich (z. B. tägliche, monatliche oder jährliche Daten).
### Zerlegung von Zeitreihen
- Zeitreihen bestehen aus mehreren Komponenten, die separat analysiert werden können:
    - **Trend:** Langfristige Richtung der Werte über die Zeit hinweg.
    - **Saisonalität:** Wiederkehrende Muster innerhalb eines festen Zeitraums (z. B. jährliche oder wöchentliche Schwankungen).
    - **Autokorrelation:** Abhängigkeit der aktuellen Werte von vergangenen Werten.
    - **Residual-/Rauschkomponente:** Zufällige Schwankungen oder Fehlerwerte.
    $$x_t=T_t+S_t+R_t$$
- **Ziel der Zerlegung:**
    - Trennung der einzelnen Komponenten, um gezielt Modellierungen oder Vorhersagen zu verbessern.
### Stationarität
- Eine Zeitreihe ist **stationär**, wenn sie keine systematischen Änderungen im Mittelwert oder in der Varianz aufweist.
- **Eigenschaften stationärer Zeitreihen:**
    - Kein langfristiger Trend.
    - Keine starke Saisonalität.
    - Konstante Varianz und Mittelwert.
- **Warum**
    - Viele statistische Modelle (z. B. ARIMA) funktionieren nur mit stationären Daten.
    - Stationäre Zeitreihen ermöglichen eine einfachere Modellierung der Autokorrelation.
- **Methoden zur Stationarisierung:**
    - **Trendentfernung:** Mittels Differencing oder Regression.
    - **Saisonalitätsentfernung:** Berechnung saisonaler Mittelwerte und deren Subtraktion.
### Box-Jenkins-Verfahren (ARIMA-Modellierung)
- **Ziel:** Entwicklung eines statistischen Modells zur Beschreibung und Vorhersage von Zeitreihen.
- **Schritte des Box-Jenkins-Ansatzes:**
    1. **Identifikation des Modells:**
        - Analyse der Zeitreihe auf Stationarität.
        - Bestimmung der Reihenfolge von AR, MA und Differencing (ℓ für AR, q für MA, d für Differencing).
    2. **Schätzung der Modellparameter:**
        - Anwendung von statistischen Verfahren zur Bestimmung optimaler Werte für p, d und q.
    3. **Validierung des Modells:**
        - Überprüfung der Modellgüte durch statistische Tests (z. B. AIC, BIC).
        - Analyse der Residuen auf Normalverteilung und Unabhängigkeit.
    4. **Prognose:**
        - Verwendung des finalen Modells für zukünftige Vorhersagen.
### Trendbereinigung
- **Ziel:** Entfernung des langfristigen Trends aus der Zeitreihe.
- **Methoden:**
	- **Saisonales Mittel:** Berechnung eines saisonalen Durchschnitts und Subtraktion von den Originalwerten.
    - **Differencing:** Bildung von Differenzen zwischen aufeinanderfolgenden Werten (z. B. $x_t - x_{t-1}$).
- **Trendbereinigte Zeitreihe:**
    - Berechnung der trendbereinigten Werte: $\hat{x}=x_t - T_t$
    - Berechnung der trend- und saisonbereinigten Werte: $\hat{\hat{x}}=\hat{x}_t - S_t.$
### Autokorrelation
- **Definition:** Korrelation eines Werts mit seinen vorherigen Werten.
- **Bedeutung:** Zeigt auf, ob frühere Werte Einfluss auf aktuelle Werte haben.
- **Darstellung:**
    - Autokorrelationsfunktion (ACF) und partielle Autokorrelationsfunktion (PACF).
    - Verwendung zur Modellbestimmung für AR, MA oder ARMA-Modelle.
### Modelle für Autokorrelationen
- **AR (AutoRegressiv):**
    - Modelliert die Beziehung eines Werts zu seinen vorherigen Werten.
    - Formel: $$x_t=c+∑ϕ_ix_{t−i}+ϵ_t$$ wobei $\phi$ die Gewichte und $\epsilon$ der Fehlerterm ist.
    - Parameter $p$ gibt an, wie viele vorherige Werte einbezogen werden.
- **MA (Moving Average):**
    - Modelliert die Beziehung eines Werts zu vergangenen Fehlertermen.
    - Formel: $$x_t=c+∑θ_iϵ_{t−i}+ϵ_t$$
    - Parameter $q$ bestimmt die Anzahl der einbezogenen Fehlerterme.
- **ARMA (AutoRegressiv-Moving-Average):**
    - Kombination aus AR und MA.
    - Erklärt Zeitreihenwerte durch vergangene Werte und Fehlerterme.
    - Formel: $$x_t= c + \sum \phi_i x_{t-i} + \sum \theta_j \epsilon_{t-j} + \epsilon_t$$
- **ARIMA (AutoRegressive Integrated Moving Average):**
    - Erweiterung von ARMA mit Differencing ($d$) zur Trendbereinigung.
    - Drei Parameter:
        - $p$: Anzahl der AR-Terme.
        - $d$: Anzahl der Differenzierungen.
        - $q$: Anzahl der MA-Terme.
    - Modellierung von nichtstationären Zeitreihen möglich.
### Auswahl der Modellparameter (p, d, q)
- **p (AR-Anteil):** Bestimmung anhand der partiellen Autokorrelationsfunktion (PACF).
- **d (Differencing-Anzahl):** Testweise Differenzierungen, bis die Zeitreihe stationär wird.
- **q (MA-Anteil):** Bestimmung anhand der Autokorrelationsfunktion (ACF).
- **Modellbewertung:**
    - Akaike-Informationskriterium (AIC) oder Bayes-Informationskriterium (BIC) zur Auswahl des besten Modells.
    - Residuenanalyse zur Überprüfung der Modellgüte.