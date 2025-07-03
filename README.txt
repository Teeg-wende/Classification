# 🐦 Classification non supervisée d'oiseaux | M1 MAS

Projet de Master 1 MAS — Apprentissage non supervisé  
Année universitaire : 2024–2025  
Auteur du projet : Teeg-wendé Inoussa Ouedraogo  
Données fournies par : Anouar Meynaoui

---

## 📘 Description

Ce projet vise à analyser les morphologies d’oiseaux à l’aide de techniques d’apprentissage non supervisé, sans utiliser les étiquettes (`type`) fournies.  
L’objectif est de découvrir des regroupements naturels et d’interpréter les morphotypes caractéristiques selon leur mode de vie.

---

## 📁 Structure du dépôt

.
├── data/ # Données source (bird.csv)
├── docs/ # Export HTML via bookdown
├── FILENAME_files/ # Graphiques générés (bookdown)
├── Numero_etudiants.json # Informations sur les membres du groupe
├── fonctions.R # Fonctions d'analyse
├── index.Rmd # Rapport principal (bookdown)
├── style.css # Feuille de style personnalisée
├── README.md # Présentation du projet (ce fichier)
├── LICENSE # Informations légales
├── _bookdown.yml # Configuration de bookdown
├── _output.yml # Options de rendu (HTML/PDF)

---

## 📈 Méthodologie

1. **Exploration et nettoyage des données**
2. **Clustering** via :
   - K-means
   - Clustering hiérarchique
   - Clustering spectral
   - DBSCAN
3. **Comparaison des résultats**
4. **Évaluation via les vraies classes (`type`)**
5. **Analyse morphologique des groupes découverts**

---

## 🔧 Technologies

- R (>= 4.0)
- `tidyverse`, `cluster`, `factoextra`, `bookdown`, `ggplot2`, etc.

---

## 👤 Auteur

**Teeg-wendé Inoussa Ouedraogo**  
Étudiant en Master 1 MAS — Université Rennes 2  
📧 [teeg-wende-inoussa.ouedraogo@etudiant.univ-rennes2.fr](mailto:teeg-wende-inoussa.ouedraogo@etudiant.univ-rennes2.fr)

---

## ⚖️ Licence

Les données utilisées sont fournies par Anouar Meynaoui.  
Ce projet est protégé par la licence “Tous droits réservés” (voir `LICENSE`).
