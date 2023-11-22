import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:lokaverk/screens/home_page.dart';

final colorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 85, 17, 103),
  background: const Color.fromARGB(255, 85, 17, 103),
);

final theme = ThemeData().copyWith(
  textTheme: GoogleFonts.alefTextTheme().copyWith(
    titleSmall: GoogleFonts.alef(
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.alef(
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.alef(
      fontWeight: FontWeight.bold,
    ),
  ),
);

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lokaverk',
      theme: theme,
      home: const HomePageScreen(),
    );
  }
}
