import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/constants.dart';

class DesktopViewBuilder extends StatelessWidget {
  final String titleText;
  final List<Widget> children;

  const DesktopViewBuilder({this.titleText, this.children});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        padding: kScreenPaddingDesktop,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleText,
              style: theme.textTheme.headline3,
            ),
            ...children
          ],
        ));
  }
}
