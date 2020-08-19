import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/skills/skills_desktop_view.dart';
import 'package:portfolio_flutter_web/skills/skills_mobile_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (_, size) {
      if (size.screenSize.width < 1180)
        return SkillsMobileView(
          height: size.screenSize.height,
          width: size.screenSize.width,
        );

      return SkillsDesktopView(
        height: size.screenSize.height,
        width: size.screenSize.width,
      );
    });
  }
}
