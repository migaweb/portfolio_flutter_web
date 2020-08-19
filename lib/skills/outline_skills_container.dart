import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/constants.dart';

class OutlineSkillsContainer extends StatelessWidget {
  final int index;
  final int rowIndex;
  final ThemeData theme;
  final bool isMobile;

  const OutlineSkillsContainer(
      {Key key, this.index, this.rowIndex, this.theme, this.isMobile = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parsedIndex = isMobile ?? false ? index : (index * 2) + rowIndex;

    return Container(
      width: isMobile ?? false ? double.infinity : null,
      margin: EdgeInsets.only(
          left: !isMobile && index != 0 ? 8.0 : 0, bottom: isMobile ? 8.0 : 0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3.0,
          color: kSkillsColors[index % kSkillsColors.length],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(kSkills.elementAt(parsedIndex),
          style: theme.textTheme.headline4),
    );
  }
}
