import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'jarya.tn';

  @override
  String get navDashboard => 'Home';

  @override
  String get navNutrition => 'Nutrition';

  @override
  String get navWorkouts => 'Workouts';

  @override
  String get navProfile => 'Profile';

  @override
  String get navRoutes => 'Routes';

  @override
  String get navPantry => 'Pantry';

  @override
  String get moduleNotStarted => 'This module has not been started yet.';
}
