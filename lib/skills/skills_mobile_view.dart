import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/constants.dart';
import 'package:portfolio_flutter_web/skills/outline_skills_container.dart';

class SkillsMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        padding: kScreenPaddingMobile,
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
            for (var index = 0; index < kSkills.length; index++)
              OutlineSkillsContainer(
                index: index,
                rowIndex: 0,
                theme: theme,
                isMobile: true,
              ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ));
  }
}
