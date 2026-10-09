import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'jarya.tn';

  @override
  String get navDashboard => 'Accueil';

  @override
  String get navNutrition => 'Nutrition';

  @override
  String get navWorkouts => 'Entraînements';

  @override
  String get navProfile => 'Profil';

  @override
  String get navRoutes => 'Parcours';

  @override
  String get navPantry => 'Garde-manger';

  @override
  String get moduleNotStarted => 'Ce module n\'est pas encore commencé.';
}
