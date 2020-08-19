import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/models/project_item.dart';

List<ProjectItem> kProjectItems = [
  ProjectItem(
    title: 'DäckData',
    description:
        'Business application, It can be run as part of DD5, as a standalone feature or integrated into your existing business system.',
    technologies: ['.NET', 'MVC', 'SQL'],
  ),
  ProjectItem(
      title: 'Chut App',
      description: 'Chut App is a chat application wishing you would shut up.',
      technologies: ['Flutter', 'Firebase']),
  ProjectItem(
      title: 'Chut App',
      description: 'Chut App is a chat application wishing you would shut up.',
      technologies: ['Flutter', 'Firebase'])
];

List<String> kSkills = [
  'Flutter',
  'Firebase',
  'Microservices',
  'Node',
  'Typescript',
  'Javascript',
  '.NET',
  'SQL'
];

List<Color> kSkillsColors = [
  Colors.amber,
  Colors.deepOrange,
  Colors.pinkAccent,
  Colors.lightGreen
];
