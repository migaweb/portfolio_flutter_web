import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'constants.dart';
import 'navigation_bar_item.dart';

class NavigationBarView extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;

  NavigationBarView({Key key, this.height, this.width, this.isMobile})
      : super(key: key);
  final Function onPressed = () {
    print('clicked');
  };
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        if (size.isMobile)
          return Container(
            height: 60,
            width: double.infinity,
            color: Colors.blue,
            child: Row(
              children: [
                FlutterLogo(size: 45, colors: Colors.amber),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.menu, color: Colors.white),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
              ],
            ),
          );
        return Container(
          height: 100,
          width: width,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            children: [
              FlutterLogo(
                size: 50,
                colors: Colors.amber,
              ),
              Spacer(),
              ...kNavigationItems.map((e) {
                return NavigationBarItem(
                  onPressed: onPressed,
                  text: e.text,
                );
              })
            ],
          ),
        );
      },
    );
  }
}
