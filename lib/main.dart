import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/products_overview_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyShop',
      theme: FlexThemeData.light(
        scheme: FlexScheme.shark,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.shark),
      themeMode: ThemeMode.system,
      home: ProductsOverviewScreen(),
    );
  }
}
