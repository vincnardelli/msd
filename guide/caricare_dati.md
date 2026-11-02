---
layout: page
title: Dati e modelli in Python
permalink: /guide/dati_e_modelli
parent: Guide
nav_order: 3
---

# 📊 Dati e modelli in Python
{:.no_toc}

Un promemoria delle istruzioni che usiamo nel corso. Ogni notebook comincia con

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import statsmodels.formula.api as smf

DATI = "https://www.vincnardelli.com/msd/dati/"
```

1. TOC
{:toc}

## Leggere ed esplorare i dati

| cosa | istruzione |
|---|---|
| leggere un CSV | `df = pd.read_csv(DATI + "credit.csv")` |
| leggere un Excel | `df = pd.read_excel("file.xlsx")` |
| prime righe | `df.head()` |
| righe e colonne | `df.shape` |
| tipi delle colonne | `df.info()` |
| statistiche di base | `df.describe()` |
| una colonna | `df["Income"]` |
| più colonne | `df[["Income", "Balance"]]` |
| filtrare le righe | `df[df["Income"] > 50]` |
| frequenze di una variabile qualitativa | `df["Student"].value_counts()` |
| valori mancanti | `df.isna().sum()` |
| media, deviazione standard | `df["Income"].mean()`, `df["Income"].std()` |
| covarianza, correlazione | `df["Income"].cov(df["Balance"])`, `df["Income"].corr(df["Balance"])` |

## Grafici

```python
plt.hist(df["Income"], bins=30)                 # istogramma
plt.scatter(df["Income"], df["Balance"])        # grafico a dispersione
df.boxplot(column="Balance", by="Student")      # boxplot per gruppi
plt.show()
```

## Regressione lineare

```python
modello = smf.ols("Balance ~ Income + Student", data=df).fit()
modello.summary()        # la tabella completa: coefficienti, errori standard, t, p-value, R²
modello.params           # i coefficienti
modello.conf_int()       # intervalli di confidenza
np.sqrt(modello.scale)   # RSE, errore standard dei residui
modello.predict(pd.DataFrame({"Income": [20, 50], "Student": ["No", "Yes"]}))
```

Le variabili qualitative (testo) diventano dummy da sole: nell'output compaiono come `Student[T.Yes]`, rispetto alla categoria di riferimento (la prima in ordine alfabetico). Un nome di colonna con il punto va scritto `Q('Room.Board')`.

## Regressione logistica

La variabile dipendente deve essere 0/1:

```python
df["y"] = (df["default"] == "Yes").astype(int)
logit = smf.logit("y ~ balance + student", data=df).fit()
logit.summary()
np.exp(logit.params)          # odds ratio
prob = logit.predict(df)      # probabilità
pred = (prob > 0.5).astype(int)
pd.crosstab(pred, df["y"], rownames=["Predetto"], colnames=["Effettivo"])   # confusion matrix
-2 * logit.llf, -2 * logit.llnull, logit.aic   # devianza residua, devianza nulla, AIC
```

## Alberi e random forest

scikit-learn vuole i predittori in una tabella di soli numeri (`X`) e la risposta in `y`:

```python
from sklearn.tree import DecisionTreeRegressor, plot_tree
from sklearn.ensemble import RandomForestRegressor

X = df[["Income", "Limit", "Rating"]]
y = df["Balance"]
albero = DecisionTreeRegressor(max_depth=3).fit(X, y)
plot_tree(albero, feature_names=X.columns, filled=True)

foresta = RandomForestRegressor(n_estimators=500, oob_score=True, random_state=123).fit(X, y)
foresta.feature_importances_  # importanza delle variabili
```

Per la classificazione si usano `DecisionTreeClassifier` e `RandomForestClassifier`.
