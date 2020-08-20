import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/components/desktop_view_builder.dart';
import 'package:portfolio_flutter_web/constants.dart';
import 'package:portfolio_flutter_web/skills/outline_skills_container.dart';
import 'package:portfolio_flutter_web/skills/skills_view.dart';

class SkillsDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DesktopViewBuilder(titleText: SkillsView.title, children: [
      SizedBox(height: 20),
      for (var rowIndex = 0; rowIndex < kSkills.length / 4; rowIndex++) ...[
        Row(
          children: [
            for (var index = 0; index < kSkills.length / 2; index++)
              Expanded(
                child: OutlineSkillsContainer(
                    index: index, rowIndex: rowIndex, theme: theme),
              ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    ]);
  }
}
