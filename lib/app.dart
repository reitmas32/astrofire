import 'package:astofire/ui/pages/home.dart';
import 'package:astofire/ui/themes/astro_theme.dart';
import 'package:flutter/material.dart';

class AstrofireApp extends StatelessWidget {
  const AstrofireApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      darkTheme: AstroTheme.dark,
      theme: AstroTheme.ligth,
      themeMode: ThemeMode.dark,
    );
  }
}
