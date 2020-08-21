import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter_web/portfolio/portfolio_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Micke',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline3:
              GoogleFonts.montserrat(fontSize: 38.0, color: Colors.black),
          headline4:
              GoogleFonts.montserrat(fontSize: 30.0, color: Colors.black),
        ),
      ),
      home: PortfolioView(),
    );
  }
}
