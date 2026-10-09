import 'package:flutter/material.dart';

import '../../../core/widgets/module_placeholder.dart';
import '../../../l10n/generated/app_localizations.dart';

class RoutesScreen extends StatelessWidget {
  const RoutesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ModulePlaceholder(
      title: AppLocalizations.of(context).navRoutes,
      icon: Icons.route_outlined,
    );
  }
}
