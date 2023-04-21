import 'package:flutter/material.dart';
import 'package:plant/view/page/details_page.dart';
import 'package:plant/view/page/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    MaterialColor colorMint = const MaterialColor(
      0xFF96D9D2,
      <int, Color>{
        50: Color(0xFF96D9D2),
        100: Color(0xFF96D9D2),
        200: Color(0xFF96D9D2),
        300: Color(0xFF96D9D2),
        400: Color(0xFF96D9D2),
        500: Color(0xFF96D9D2),
        600: Color(0xFF96D9D2),
        700: Color(0xFF96D9D2),
        800: Color(0xFF96D9D2),
        900: Color(0xFF96D9D2),
      },
    );

    return MaterialApp(
      title: 'Flutter template intbros',
      theme: ThemeData(
        primarySwatch: colorMint,
        scaffoldBackgroundColor: colorMint,
        appBarTheme: const AppBarTheme(
          elevation: 0,
        ),
      ),
      home: const ListPage()/*DetailsPage()*/,
    );
  }
}
