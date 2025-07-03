# 🐦 Classification non supervisée d'oiseaux | M1 MAS

Projet de Master 1 MAS — Apprentissage non supervisé  
Année universitaire : 2024–2025  
Auteur : Anouar Meynaoui

---

## 📘 Description

Ce projet vise à explorer des données morphologiques d’oiseaux afin de mettre en évidence des regroupements naturels sans utiliser les étiquettes fournies (`type`). À l’aide de méthodes de **clustering non supervisé**, l’objectif est de :

- Identifier des morphotypes caractéristiques
- Comparer les méthodes de classification
- Interpréter les clusters selon la biologie des oiseaux

---

## 📁 Structure du dépôt

.
├── data/ # Données source (bird.csv)
├── docs/ # Export HTML via bookdown
├── FILENAME_files/ # Fichiers d’images liés à l’export
├── Numero_etudiants.json # Liste ou métadonnées des auteurs
├── fonctions.R # Fonctions d'analyse/statistique
├── index.Rmd # Fichier principal du rapport (Bookdown)
├── style.css # Style personnalisé
├── README.md # Présentation du projet (ce fichier)
├── LICENSE # Informations légales
├── _bookdown.yml # Config bookdown
├── _output.yml # Config de rendu (PDF/HTML)

---

## 📦 Outils et packages

- **R** (>= 4.0)
- `tidyverse`, `cluster`, `factoextra`, `bookdown`, `ggplot2`, `readr`

---

## 📈 Méthodologie

1. Prétraitement des données
2. Application de plusieurs méthodes :
   - K-means
   - Clustering hiérarchique
   - Clustering spectral
   - DBSCAN
3. Évaluation des résultats via les vraies classes (`type`)
4. Analyse morphologique des clusters

---

## 🔎 Résultat attendu

Un rapport dynamique (HTML ou PDF) généré via `bookdown`, incluant :

- Visualisation des clusters
- Comparaison des méthodes
- Interprétations biologiques

---

## 👤 Auteur

Anouar Meynaoui  
M1 MAS — Université Rennes 2  
Contact : [meynaoui.anouar@example.com](mailto:meynaoui.anouar@example.com)

---

## ⚖️ Licence

Ce projet est protégé par la licence “Tous droits réservés” (voir `LICENSE`).
