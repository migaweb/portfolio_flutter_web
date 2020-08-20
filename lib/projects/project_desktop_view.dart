import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/components/desktop_view_builder.dart';
import 'package:portfolio_flutter_web/constants.dart';
import 'package:portfolio_flutter_web/projects/project_item_body.dart';
import 'package:portfolio_flutter_web/projects/projects_view.dart';

class ProjectDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DesktopViewBuilder(
      titleText: ProjectsView.title,
      children: [
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...kProjectItems
                .map((e) => Expanded(
                      child: ProjectItemBody(item: e),
                    ))
                .toList(),
          ],
        ),
        SizedBox(
          height: 70,
        ),
      ],
    );
  }
}
