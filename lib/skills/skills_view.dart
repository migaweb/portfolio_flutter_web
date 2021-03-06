import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/components/mobile_desktop_view_builder.dart';
import 'package:portfolio_flutter_web/skills/skills_desktop_view.dart';
import 'package:portfolio_flutter_web/skills/skills_mobile_view.dart';

class SkillsView extends StatelessWidget {
  static const String title = 'Skills';
  final Key key;
  SkillsView(this.key) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return MobileDesktopViewBuilder(
      desktopView: SkillsDesktopView(),
      mobileView: SkillsMobileView(),
      showMobile: width < 1180,
    );
  }
}
