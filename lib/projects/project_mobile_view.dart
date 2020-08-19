import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/constants.dart';
import 'package:portfolio_flutter_web/projects/project_item_body.dart';

class ProjectMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text('Projects', style: theme.textTheme.headline3),
        ...kProjectItems.map((e) => ProjectItemBody(item: e)).toList(),
      ],
    ));
  }
}
