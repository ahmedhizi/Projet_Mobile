import 'package:flutter/material.dart';

import 'core/routing/home_shell.dart';
import 'core/theme/app_theme.dart';
import 'l10n/generated/app_localizations.dart';

class JaryaApp extends StatelessWidget {
  const JaryaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      // The font depends on the script, so the theme is built once the
      // locale is known.
      builder: (context, child) => Theme(
        data: AppTheme.forLocale(Localizations.localeOf(context)),
        child: child!,
      ),
      home: const HomeShell(),
    );
  }
}
