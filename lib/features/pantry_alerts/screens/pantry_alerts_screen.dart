import 'package:flutter/material.dart';

import '../../../core/widgets/module_placeholder.dart';
import '../../../l10n/generated/app_localizations.dart';

class PantryAlertsScreen extends StatelessWidget {
  const PantryAlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModulePlaceholder(
      title: AppLocalizations.of(context).navPantry,
      icon: Icons.kitchen_outlined,
    );
  }
}
