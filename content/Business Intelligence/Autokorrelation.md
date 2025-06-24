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
### ARIMA (AutoRegressive Integrated Moving Average):**
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
- **Modellbewertung:** Residuenanalyse zur Überprüfung der Modellgüte.