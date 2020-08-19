import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'constants.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (!size.isMobile) return Container();

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
              ...kNavigationItems.map(
                (e) => ListTile(
                  title: Text(e.text),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
