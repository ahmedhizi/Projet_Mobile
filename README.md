# jarya.tn

Application mobile Flutter de suivi sportif, nutrition et garde-manger.
Langues : arabe tunisien, anglais, français.

## Démarrer

```bash
flutter pub get
flutter run
```

Le projet est vérifié avec Flutter 3.24 (Dart 3.5). Quelques versions de
plugins sont plafonnées dans `pubspec.yaml` pour rester compatibles avec cette
version ; elles pourront être relevées si toute l'équipe passe à un Flutter plus
récent.

## Architecture

```
lib/
  main.dart, app.dart        point d'entrée, MaterialApp, langues
  core/                      code partagé par tous les modules
    constants/  theme/  routing/  services/  widgets/  utils/
  features/                  un dossier par module
    dashboard/               partagé
    nutrition/               module 1
    workouts/                module 2
    profile/                 module 3
    routes/                  module 4
    pantry_alerts/           module 5
  l10n/                      app_ar.arb, app_en.arb, app_fr.arb
assets/
  fonts/                     Poppins (latin), Tajawal (arabe)
  common/                    images et icônes partagées
  <module>/images, <module>/icons
test/features/<module>/
```

Chaque module contient les mêmes dossiers :

| Dossier | Contenu |
| --- | --- |
| `screens/` | les écrans (une page = un fichier) |
| `components/` | les widgets réutilisés dans les écrans du module |
| `models/` | les classes de données |
| `services/` | accès au matériel et aux API (caméra, GPS, HTTP...) |
| `repositories/` | lecture et écriture des données |
| `logic/` | calculs et algorithmes, en Dart pur et testables |
| `utils/` | petites fonctions d'aide propres au module |

Règles :

- Un module n'importe jamais les fichiers d'un autre module. Ce qui est
  partagé va dans `core/`.
- Aucun texte en dur dans les écrans : ajouter la clé dans les trois fichiers
  `lib/l10n/app_*.arb`, puis lancer `flutter gen-l10n`.
- Les fichiers d'un module vont dans `assets/<module>/`.

Pas encore décidé, donc pas encore configuré : gestion d'état, base SQLite,
charte graphique (couleurs), Firebase (`google-services.json`), permissions
Android et iOS.

## Branches

| Branche | Rôle |
| --- | --- |
| `main` | version stable, prête pour une démo |
| `develop` | intégration hebdomadaire |
| `feature/nutrition` | module 1 |
| `feature/workouts` | module 2 |
| `feature/profile` | module 3 |
| `feature/routes` | module 4 |
| `feature/pantry-alerts` | module 5 |

Chacun travaille sur la branche de son module, puis ouvre une pull request
vers `develop`. `develop` est fusionnée dans `main` à chaque jalon.

Avant chaque pull request :

```bash
dart format lib test
flutter analyze
flutter test
```
