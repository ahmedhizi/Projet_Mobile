import 'package:flutter/material.dart';

import '../../../core/widgets/module_placeholder.dart';
import '../../../l10n/generated/app_localizations.dart';

class NutritionScreen extends StatelessWidget {
  const NutritionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModulePlaceholder(
      title: AppLocalizations.of(context).navNutrition,
      icon: Icons.restaurant_outlined,
    );
  }
}
