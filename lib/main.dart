import 'package:coursera_dl/home_page.dart';
import 'package:coursera_dl/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = zincLight;
    return MaterialApp(
      title: 'Coursera DL',
      supportedLocales: FLocalizations.supportedLocales,
      localizationsDelegates: const [...FLocalizations.localizationsDelegates],
      theme: theme.toApproximateMaterialTheme(),
      builder: (_, child) => FAnimatedTheme(
        data: theme,
        child: FToaster(child: child!),
      ),
      home: const FScaffold(child: HomePage()),
    );
  }
}
