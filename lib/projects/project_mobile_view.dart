import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/components/mobile_view_builder.dart';
import 'package:portfolio_flutter_web/constants.dart';
import 'package:portfolio_flutter_web/projects/project_item_body.dart';
import 'package:portfolio_flutter_web/projects/projects_view.dart';

class ProjectMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobileViewBuilder(
      titleText: ProjectsView.title,
      children: [
        ...kProjectItems.map((e) => ProjectItemBody(item: e)).toList(),
      ],
    );
  }
}
