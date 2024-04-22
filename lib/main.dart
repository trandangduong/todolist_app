import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist_app/ui/index/index_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then(
    (value) => runApp(const MyApp()),
  );
}

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.deepPurple,
);
var kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xff363636),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To do list App',
      theme: ThemeData(
        colorScheme: kColorScheme,
        scaffoldBackgroundColor: kColorScheme.background,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onBackground,
        ),
        useMaterial3: true,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        scaffoldBackgroundColor: kDarkColorScheme.background,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kDarkColorScheme.onBackground,
        ),
      ),
      home: const IndexPage(),
    );
  }
}
