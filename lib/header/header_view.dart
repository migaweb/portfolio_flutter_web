import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/components/mobile_desktop_view_builder.dart';
import 'package:portfolio_flutter_web/header/header_desktop_view.dart';
import 'package:portfolio_flutter_web/header/header_mobile_view.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
      mobileView: HeaderMobileView(),
      desktopView: HeaderDesktopView(),
    );

    // ResponsiveBuilder(
    //   builder: (_, size) {
    //     if (size.isMobile) return HeaderMobileView();
    //     return ;
    //   },
    // );
  }
}
