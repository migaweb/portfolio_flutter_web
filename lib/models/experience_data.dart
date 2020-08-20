import 'package:flutter/foundation.dart';

class ExperienceData {
  final String company;
  final String timeline;
  final List<String> description;

  ExperienceData(
      {@required this.company,
      @required this.timeline,
      @required this.description});
}

final experiences = [
  ExperienceData(
      company: 'Chat app - ChutApp',
      timeline: 'jul 2020 - aug 2020',
      description: ['Flutter, Firebase', 'Single person project', '-']),
  ExperienceData(
      company: 'Compilator AB Däckdata',
      timeline: 'feb 2007 - *',
      description: [
        'Webshops with REST services',
        'Frontend MVC and Web forms',
        'Scrum, Agile, Team of 10'
      ]),
  ExperienceData(
      company: 'Shop app',
      timeline: 'mar 2020 - june 2020',
      description: [
        'Microservices backend, Typescript, Node, Html 5',
        'Single person project',
        'Docker and Kubernetes'
      ]),
  ExperienceData(
      company: 'Starmind',
      timeline: 'feb 2006 - feb 2007',
      description: ['E-content CMS', '.NET', 'HTML, CSS, Javascript']),
];
