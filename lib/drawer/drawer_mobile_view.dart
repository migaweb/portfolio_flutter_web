import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/portfolio/portfolio_view.dart';

class DrawerMobileView extends StatelessWidget {
  final Function onNavigate;
  DrawerMobileView({this.onNavigate});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Mikael Storman Gustavsson'),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.blue],
                tileMode: TileMode.repeated,
              ),
            ),
          ),
          ...PortfolioView.kNavigationItems.map(
            (e) => ListTile(
              title: Text(e.text),
              onTap: () {
                onNavigate(key: e.key);
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
