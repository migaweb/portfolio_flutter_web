import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/models/project_item.dart';

class ProjectItemBody extends StatelessWidget {
  final ProjectItem item;

  const ProjectItemBody({this.item});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.grey,
            child: Icon(
              Icons.crop_original,
              color: Colors.black12,
              size: 300,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(item.title, style: theme.textTheme.headline4),
          SizedBox(
            height: 10.0,
          ),
          Text(
            item.description,
            style: TextStyle(fontSize: 17.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: item.technologies
                .map((c) => Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Chip(
                        label: Text(
                          c,
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.redAccent,
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
