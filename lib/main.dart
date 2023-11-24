import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:lokaverk/screens/login.dart';

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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Groceries',
      theme: theme,
      home: const LoginScreen(),
    );
  }
}