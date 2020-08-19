import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/constants.dart';
import 'package:portfolio_flutter_web/projects/project_item_body.dart';

class ProjectDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.0,
        ),
        Text('Projects', style: theme.textTheme.headline3),
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
    ));
  }
}
