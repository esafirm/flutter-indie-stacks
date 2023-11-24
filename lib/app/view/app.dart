import 'package:flutter/material.dart';
import 'package:habitat/features/apiexample/view/api_example_page.dart';
import 'package:habitat/features/counter/counter.dart';
import 'package:habitat/infra/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CounterPage(),
      routes: {
        '/api': (_) => const APIExamplePage(),
      },
    );
  }
}
