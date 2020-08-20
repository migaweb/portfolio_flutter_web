import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/components/mobile_desktop_view_builder.dart';
import 'package:portfolio_flutter_web/projects/project_desktop_view.dart';
import 'package:portfolio_flutter_web/projects/project_mobile_view.dart';

class ProjectsView extends StatelessWidget {
  static const String title = 'Projects';
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return MobileDesktopViewBuilder(
      mobileView: ProjectMobileView(),
      desktopView: ProjectDesktopView(),
      showMobile: width < 800,
    );
  }
}
