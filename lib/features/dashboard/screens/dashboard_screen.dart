import 'package:flutter/material.dart';

import '../../../core/widgets/module_placeholder.dart';
import '../../../l10n/generated/app_localizations.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModulePlaceholder(
      title: AppLocalizations.of(context).navDashboard,
      icon: Icons.home_outlined,
    );
  }
}
