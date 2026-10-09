import 'package:flutter/material.dart';

import '../../../core/widgets/module_placeholder.dart';
import '../../../l10n/generated/app_localizations.dart';

class WorkoutsScreen extends StatelessWidget {
  const WorkoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModulePlaceholder(
      title: AppLocalizations.of(context).navWorkouts,
      icon: Icons.fitness_center_outlined,
    );
  }
}
