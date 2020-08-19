import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio_flutter_web/header/header_view.dart';
import 'package:portfolio_flutter_web/navigation_bar/navigation_bar_view.dart';
import 'package:portfolio_flutter_web/skills/skills_view.dart';
import 'drawer/drawer_view.dart';
import 'package:portfolio_flutter_web/projects/projects_view.dart';

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

class PortfolioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final height = media.size.height;
    final width = media.size.width;

    final scrollController = ScrollController(initialScrollOffset: 1580);
    final theme = Theme.of(context);

    return Scaffold(
      endDrawer: DrawerView(),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            NavigationBarView(height: height, width: width),
            HeaderView(height: height, width: width),
            Divider(
              thickness: 3.0,
              color: theme.accentColor,
            ),
            ProjectsView(),
            Divider(
              thickness: 3.0,
              color: theme.accentColor,
            ),
            SkillsView(),
            Container(
              height: height,
              width: width,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
