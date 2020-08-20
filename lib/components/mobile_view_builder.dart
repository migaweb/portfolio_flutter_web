import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/constants.dart';

class MobileViewBuilder extends StatelessWidget {
  final String titleText;
  final List<Widget> children;

  const MobileViewBuilder({this.titleText, this.children});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        padding: kScreenPaddingMobile,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            AutoSizeText(
              titleText,
              maxLines: 1,
              style: theme.textTheme.headline3,
            ),
            SizedBox(height: 20.0),
            ...children,
            SizedBox(
              height: 10.0,
            ),
          ],
        ));
  }
}
