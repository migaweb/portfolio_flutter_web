import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/constants.dart';
import 'package:portfolio_flutter_web/models/experience_data.dart';
import 'package:portfolio_flutter_web/utils/styles.dart';

class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer({
    @required this.experience,
    @required this.index,
  });

  final ExperienceData experience;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3.0,
          color: kSkillsColors[index],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            experience.company,
            style: textStyle(isBold: true),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            experience.timeline,
            style: textStyle(isGrey: true),
          ),
          SizedBox(
            height: 10.0,
          ),
          for (var experience in experience.description)
            Text(
              '- $experience',
              style: textStyle(),
            ),
        ],
      ),
    );
  }
}
