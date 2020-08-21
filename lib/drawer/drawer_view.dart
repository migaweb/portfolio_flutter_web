import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/components/mobile_desktop_view_builder.dart';
import 'package:portfolio_flutter_web/drawer/drawer_mobile_view.dart';

class DrawerView extends StatelessWidget {
  final Function onNavigate;

  const DrawerView({this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
      mobileView: DrawerMobileView(
        onNavigate: onNavigate,
      ),
      desktopView: Container(),
    );
  }
}
