import 'package:flutter/material.dart';

import '../../l10n/generated/app_localizations.dart';

/// Temporary body shown by a module screen until its owner replaces it.
class ModulePlaceholder extends StatelessWidget {
  const ModulePlaceholder({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 56),
            const SizedBox(height: 16),
            Text(title, style: textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(
              AppLocalizations.of(context).moduleNotStarted,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
