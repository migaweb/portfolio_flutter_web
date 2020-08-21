import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/components/mobile_desktop_view_builder.dart';

import 'package:portfolio_flutter_web/portfolio/portfolio_view.dart';
import 'navigation_bar_item.dart';

class NavigationBarView extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final Function onNavigate;

  NavigationBarView(
      {Key key, this.height, this.width, this.isMobile, this.onNavigate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
      mobileView: NavigationBarMobile(),
      desktopView: NavigationBarDesktop(onPressed: onNavigate),
    );
  }
}

class NavigationBarDesktop extends StatelessWidget {
  const NavigationBarDesktop({
    @required this.onPressed,
  });

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
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
          ...PortfolioView.kNavigationItems.map((e) {
            return NavigationBarItem(
              onPressed: () {
                onPressed(key: e.key);
              },
              text: e.text,
            );
          })
        ],
      ),
    );
  }
}

class NavigationBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
  }
}
