import 'package:bouncy_bargains/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: XAppTheme.lightTheme,
      darkTheme: XAppTheme.darkTheme,
    );
  }
}