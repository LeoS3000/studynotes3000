## Regression und Wirkungsprognosen
### Was ist eine linearen Regressionsanalyse?
- Modell, dass die Beziehung zwischen einer abhängigen Variablen und einer oder mehreren unabhängigen Variablen beschreibt
- Voraussetzung: intervallskalierte abhängige Variable
	- Variable kategorial → logistische Regression 
### Maschinelles Lernen – die Suche nach 𝒇(𝒙)
- Annahme: 𝑓(𝑥) beschreibt den Zusammenhang zwischen den erklärenden Variablen und der Zielgröße 
- Aufgabe: “Bestimmung der Parameter der Funktion”
### Einfache Lineare Regression
#### Beispiele
- Hat die _Körpergröße_ einen Einfluss auf das **Gewicht** einer Person?
- Haben _Werbeanzeigen_ auf Social Media Kanälen einen Einfluss auf die **Anzahl der Webseitenbesuche** auf der Homepage des Unternehmens? 
#### Ziel
- Wert einer abhängigen Variable aufgrund **einer** unabhängigen Variable vorherzusagen. 
- Je größer der lineare Zusammenhang zwischen der unabhängigen und der abhängigen Variable ist, desto genauer ist die Vorhersage.
#### Was ist ein linearer Zusammenhang zwischen 2 Variablen? Wie kann man ihn quantifizieren?
???
#### Linearer Zusammenhang
- Trend in den Daten, der durch eine gerade Linie dargestellt werden kann
- Wenn beide Variablen gleichzeitig und mit einer konstanten Rate steigen oder fallen, liegt eine positive lineare Beziehung vor.
#### Korrelationskoeffizient nach Pearson
- Einfache Kovarianz
$$ Cov(x,y) = \frac {\sum_{i=1}^n(x_i-\bar{x})(y_i-\bar{y})} {N-1}$$
- nicht normiert --> Werte zwischen plus und minus unendlich
- Pearson-Korrelationskoeffizient:
$$ r = \frac {\sum_{i=1}^n(x_i-\bar{x})(y_i-\bar{y})} {\sqrt {Var(x)*Var(y)}} $$
- kann Werte zwischen -1 und +1 annehmen und lässt sich wie folgt interpretieren. 
	+1: gänzlich positiver linearer Zusammenhang (je mehr, desto mehr)
	-1: gänzlich negativer linearer Zusammenhang (je mehr, desto weniger)
	0: kein linearer Zusammenhang
#### Berechnung
$$ \hat{y} = b*x+a $$
wobei 
	$\hat{y}=$ Geschätze abhänige Variable
	$b=$ Steigung
	$x=$ Unabhängige Variable
	$a=$ Aufpunkt --> Schnittpunkt mit y-Achse
#### Fehler
$$ y- \hat{y} = \epsilon $$
$$ y = b*x+a+\epsilon$$
- Bei Berechnung wird versucht Regressionskoeffizienten so festzulegen, dass Summe der quadrierten Residuen minimal ist 
- Kriterium der kleinsten Quadrate oder OLS- „Ordinary Least Squares“
#### Methode der kleinsten Quadrate
- Fehler für jedes Wertepaar berechnen
- Summe der Fehlerquadrate (SSE, sum of square error) minimieren
$$ min SSE = \sum_{i=1}^n \epsilon_i^2 = \sum_{i=1}^n(y_i-\hat{y_i})^2 $$
- analytische Lösung für $b$ (nur bei einfachem Modell)
$$ b =  \frac {\sum_{i=1}^n((x_i-\bar{x})(y_i-\bar{y}))} {\sum_{i=1}^n(x_i-\bar{x})^2} = \frac {cov(x,y)} {var(x)} $$
und für a gilt dann:
$$ a = \bar{y} - b\bar{x}$$
### Multiple Lineare Regression
#### Beispiele
- Haben die _Körpergröße_ und das _Geschlecht_ einen Einfluss auf das **Gewicht** einer Person? 
- Haben _Werbeanzeigen auf Social Media Kanälen_ und _E-Mail-Werbung_ einen Einfluss auf die **Anzahl der Webseitenbesuche** auf der Homepage der Firma?
#### Ziel
- Wert einer abhängigen Variable aufgrund **mehreren** unabhängigen Variable vorherzusagen. 
#### Berechnung
$$ \hat{y} = b_1*x_1+b_2*x_2+...+b_k*x_k+a $$
#### Interpretation 
- ähnlich wie einfache
- alle unabhängigen Variablen 0 --> ergibt Wert $a$
- Ändert sich eine unabhängige Variable um eine Einheit, gibt der zugehörige Koeffizient an, um wieviel sich die abhängige Variable $y$ verändert. 
- Ein Anstieg der unabhängigen Variable $x_i$ erhöht bzw. vermindert die abhängige Variable $y$ um $b_i$ Einheiten.
### Modellgüte und Vergleich der linearen Regressionen
#### Determinationskoeffizient ($R^2$) 
- Bestimmtheitsmaß für die Güte
- der Anteil der Varianz, der durch die unabhängigen Variablen erklärt werden kann
	-  Varianzaufklärung
$$ R^2 = \frac {s_{\hat{y}}^2}{s_y^2}$$
- wobei 
	$R^2$ zwischen 0 und 1
	${s_{\hat{y}}^2}$  Varianz der vorhergesagten Werte
	$s_y^2$  Varianz der beobachteten Werte
#### Angepasstes $R^2$: $R_{ang}^2$
- erlaubt mehrere Regressionsmodelle hinsichtlich ihrer Vorhersagegüte vergleichen
$$ R_{ang}^2 = 1-(1-R^2)*\frac{n-1}{n-k-1} $$
- wobei
	$n$ Anzahl der Punkte in Datenstichprobe
	$k$ Anzahl der unabhängigen Regressoren, d. h. die Anzahl der Variablen im Modell, ohne die Konstante
#### Vergleich der Regressionkoeffizienten $b$ mehrerer Regressionsmodelle
- $b$ ist abhängig von der entsprechenden Skalierung zu interpretieren, d.h. Gewichte verschiedener Regressionsgleichungen können nicht miteinander direkt vergliechen werden
- Lösung: Standardisierter Regressionskoeffizient
$$ \beta_{yx} = b*\frac{S_x}{S_y}=\frac{cov(xy)}{S_x^2}*\frac{S_x}{S_y} = \frac{cov(xy)}{S_x*S_y} $$
- wobei
	$\beta_{yx}$ Standardisierter Regressionskoeffizient
	$b$  Regrssionskoeffizient
	$S$ Standardabweichung
### Voraussetzungen
2. Linearität
3. Homoskedastizität: Die Residuen müssen eine konstante Varianz haben. 
4. Normalität: Normalverteilte Fehlerkomponente 
5. Keine Multikollinearität: Keine hohe Korrelation zwischen den unabhängigen Variablen 
	- bedeutet, dass zwei oder mehrere unabhängige Variablen stark miteinander korrelieren. 
	- Problem: der Effekt der einzelnen unabhängigen Variablen auf die abhängige Variable kann nicht klar von einander getrennt werden.
6. Keine Autokorrelation: Die Fehlerkomponente sollte keine Autokorrelation aufweisen
	- wenn Beobachtungen in einer Zeitreihe abhängig voneinander sind. 
	- Teil einer Zeitreihe mit sich selbst zu einem anderen Zeitpunkt korreliert. 
	- treten insbesondere dann auf, wenn 
		1. die Zeit zwischen den Beobachtungen sehr kurz ist, 
		2. sich das Antwortverhalten nur sehr langsam verändert, 
		3. wichtige Prädiktorvariablen aus dem Modell herausgelassen werden
		4. die funktionale Form (z.B. linear) der Beziehung zwischen den Prädiktoren und dem Antwortergebnis falsch spezifiziert ist.
### Modellbewertung mithilfe der Konfusionsmatrix
- Tabelle, die verwendet wird, um die Leistung eines Klassifizierungsmodells zu bewerten
- oder die Leistung eines Algorithmus visualisieren
- wesentlicher Teil:  Anzahl der richtigen und falschen Vorhersagen
	- klassenweise summiert
- kann mit heatmap visualisert werden 
### Welche Faktoren sind beim Modell wichtig?
- Koeffizienten mit der Funktion *summary()* in sklearn anzeigen lassen.
Optimization terminated successfully.
         Current function value: 0.490732
         Iterations 6

| Logit Regression Results |                  |                   |           |     |     |     |
| ------------------------ | ---------------- | ----------------- | --------- | --- | --- | --- |
| Dep. Variable:           | Outcome          | No. Observations: | 576       |     |     |     |
| Model:                   | Logit            | Df Residuals:     | 567       |     |     |     |
| Method:                  | MLE              | Df Model:         |           |     |     |     |
| Date:                    | Thu, 13 Feb 2025 | Pseudo R-squ.:    | 0.2413    |     |     |     |
| Time:                    | 14:58:15         | Log-Likelihood:   | -282.66   |     |     |     |
| converged:               | True             | LL-Null:          | -372.56   |     |     |     |
| Covariance Type:         | nonrobust        | LLR p-value:      | 1.140e-34 |     |     |     |
- **Dep. Variable (Outcome)**:   binäre Variable, z. B. ob eine Person kauft
- **No. Observations**: 576 Datenpunkte wurden verwendet
- **Model**: Logit (logistische Regression)
- **Method**: MLE (Maximum-Likelihood-Estimation zur Parameterschätzung)
- **Pseudo R-squared**: 0.2413: Art von Bestimmtheitsmaß für logistische Regression, ähnlich zu R² in der linearen Regression – zeigt an, wie gut das Modell die Daten erklärt
- **Log-Likelihood**: -282.66: wird zur Bewertung des Modells verwendet
- **LLR p-value**: 1.140e-34: sehr klein, bedeutet, dass das Modell insgesamt signifikant ist

|                          | coef    | std err | Z      | P> Z\| | [0.025 | 0.975] |
| ------------------------ | ------- | ------- | ------ | ------ | ------ | ------ |
| const                    | -7.8164 | 0.793   | -9.862 | 0.000  | -9.370 | -6.263 |
| Purchases                | 0.0916  | 0.037   | 2.483  | 0.013  | 0.019  | 0.164  |
| Time                     | 0.0327  | 0.004   | 8.014  | 0.000  | 0.025  | 0.041  |
| BloodPressure            | -0.0142 | 0.006   | -2.290 | 0.022  | -0.026 | -0.002 |
| SkinThickness            | 0.0036  | 0.008   | 0.462  | 0.644  | -0.012 | 0.019  |
| Insulin                  | -0.0016 | 0.001   | -1.526 | 0.127  | -0.004 | 0.000  |
| BMI                      | 0.0887  | 0.017   | 5.234  | 0.000  | 0.055  | 0.122  |
| DiabetesPedigreeFunction | 0.8806  | 0.342   | 2.577  | 0.010  | 0.211  | 1.550  |
| Age                      | 0.0133  | 0.011   | 1.194  | 0.233  | -0.009 | 0.035  |

- **positiver Koeffizient** --> Erhöhung der Variablen erhöht Wahrscheinlichkeit des positiven Outcomes 
- **negativer Koeffizient** --> Erhöhung der Variablen verringert Wahrscheinlichkeit des positiven Outcomes 
- **p-Wert (< 0.05 signifikant)** zeigt an, ob eine Variable statistisch signifikant ist
    - **Signifikante Variablen** (p < 0.05): `Purchases`, `Time`, `BloodPressure`, `BMI`, `DiabetesPedigreeFunction`
    - **Nicht signifikante Variablen**: `SkinThickness`, `Insulin`, `Age` (deren Einfluss auf das Outcome ist nicht statistisch gesichert).