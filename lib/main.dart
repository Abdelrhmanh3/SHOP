import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'HMA Store',
      theme: ThemeData(
          textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
          primaryColor: kPrimaryColor,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: kSecondaryColor)),
      home: HomeScreen(),
    );
  }
}
