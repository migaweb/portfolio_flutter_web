import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/constants.dart';
import 'package:portfolio_flutter_web/skills/outline_skills_container.dart';

class SkillsDesktopView extends StatelessWidget {
  final double width;
  final double height;

  const SkillsDesktopView({this.width, this.height});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        width: width * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Skills',
              style: theme.textTheme.headline3,
            ),
            SizedBox(height: 20),
            for (var rowIndex = 0;
                rowIndex < kSkills.length / 4;
                rowIndex++) ...[
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
          ],
        ));
  }
}
