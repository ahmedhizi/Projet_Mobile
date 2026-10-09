import 'package:flutter/material.dart';

import '../../features/dashboard/screens/dashboard_screen.dart';
import '../../features/nutrition/screens/nutrition_screen.dart';
import '../../features/pantry_alerts/screens/pantry_alerts_screen.dart';
import '../../features/profile/screens/profile_screen.dart';
import '../../features/routes/screens/routes_screen.dart';
import '../../features/workouts/screens/workouts_screen.dart';
import '../../l10n/generated/app_localizations.dart';

/// Bottom navigation between the dashboard and the five modules.
class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _index = 0;

  static const List<Widget> _screens = [
    DashboardScreen(),
    NutritionScreen(),
    WorkoutsScreen(),
    ProfileScreen(),
    RoutesScreen(),
    PantryAlertsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l10n.appTitle)),
      body: IndexedStack(index: _index, children: _screens),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (index) => setState(() => _index = index),
        destinations: [
          NavigationDestination(
              icon: const Icon(Icons.home_outlined), label: l10n.navDashboard),
          NavigationDestination(
              icon: const Icon(Icons.restaurant_outlined),
              label: l10n.navNutrition),
          NavigationDestination(
              icon: const Icon(Icons.fitness_center_outlined),
              label: l10n.navWorkouts),
          NavigationDestination(
              icon: const Icon(Icons.person_outline), label: l10n.navProfile),
          NavigationDestination(
              icon: const Icon(Icons.route_outlined), label: l10n.navRoutes),
          NavigationDestination(
              icon: const Icon(Icons.kitchen_outlined), label: l10n.navPantry),
        ],
      ),
    );
  }
}
