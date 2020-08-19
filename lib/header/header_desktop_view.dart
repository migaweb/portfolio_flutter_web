import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/constants.dart';
import 'package:portfolio_flutter_web/header/header_body.dart';
import 'package:portfolio_flutter_web/header/logo.dart';

class HeaderDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.6,
      padding: kScreenPaddingDesktop,
      child: Row(
        children: [
          Expanded(
            child: HeaderBody(
              isMobile: false,
            ),
            flex: 1,
          ),
          Expanded(child: Logo()),
          //FlutterLogo(size: 300)
        ],
      ),
    );
  }
}
