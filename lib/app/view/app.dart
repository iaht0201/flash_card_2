import 'package:chat_bot/flash_card/view/flashcard_screen.dart';
import 'package:chat_bot/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:home_widget/home_widget.dart';

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
      home: const FlashcardPage(),
    );
  }
}
