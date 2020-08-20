import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/components/mobile_view_builder.dart';
import 'package:portfolio_flutter_web/constants.dart';
import 'package:portfolio_flutter_web/skills/outline_skills_container.dart';
import 'package:portfolio_flutter_web/skills/skills_view.dart';

class SkillsMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MobileViewBuilder(
      titleText: SkillsView.title,
      children: [
        for (var index = 0; index < kSkills.length; index++)
          OutlineSkillsContainer(
            index: index,
            rowIndex: 0,
            theme: theme,
            isMobile: true,
          ),
      ],
    );
  }
}
