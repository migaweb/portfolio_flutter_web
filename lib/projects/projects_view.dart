import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/components/mobile_desktop_view_builder.dart';
import 'package:portfolio_flutter_web/projects/project_desktop_view.dart';
import 'package:portfolio_flutter_web/projects/project_mobile_view.dart';

class ProjectsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
        mobileView: ProjectMobileView(), desktopView: ProjectDesktopView());
  }
}
