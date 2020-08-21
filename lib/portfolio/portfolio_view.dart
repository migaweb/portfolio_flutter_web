import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/blog/blog_view.dart';
import 'package:portfolio_flutter_web/drawer/drawer_view.dart';
import 'package:portfolio_flutter_web/experience/experience_view.dart';
import 'package:portfolio_flutter_web/footer/footer_view.dart';
import 'package:portfolio_flutter_web/header/header_view.dart';
import 'package:portfolio_flutter_web/navigation_bar/navigation_bar_view.dart';
import 'package:portfolio_flutter_web/navigation_bar/navigation_item.dart';
import 'package:portfolio_flutter_web/projects/projects_view.dart';
import 'package:portfolio_flutter_web/skills/skills_view.dart';
import 'package:provider/provider.dart';

import 'package:portfolio_flutter_web/portfolio/back_to_top_button.dart';

class PortfolioView extends StatelessWidget {
  final scrollController = ScrollController(initialScrollOffset: 3700);

  static var kNavigationItems = [
    NavigationItem(text: 'Projects', key: GlobalKey()),
    NavigationItem(text: 'Skills', key: GlobalKey()),
    NavigationItem(text: 'Experience', key: GlobalKey()),
    NavigationItem(text: 'Blog', key: GlobalKey()),
  ];

  double _getPositions(GlobalKey key) {
    final RenderBox renderBox = key.currentContext.findRenderObject();
    final position = renderBox.localToGlobal(Offset.zero);
    final scrollOffset = position.dy;

    return scrollOffset;
  }

  _navigate({GlobalKey key, double position}) {
    if (position != null) {
      scrollController.animateTo(position,
          duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
      return;
    }

    position = _getPositions(key);
    scrollController.animateTo(position,
        duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final height = media.size.height;
    final width = media.size.width;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ScrollController>(create: (_) {
          return scrollController;
        }),
      ],
      child: Scaffold(
        endDrawer: DrawerView(onNavigate: _navigate),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NavigationBarView(
                  height: height, width: width, onNavigate: _navigate),
              HeaderView(height: height, width: width),
              ProjectsView(kNavigationItems
                  .firstWhere((element) => element.text == 'Projects')
                  .key),
              SkillsView(kNavigationItems
                  .firstWhere((element) => element.text == 'Skills')
                  .key),
              SizedBox(
                height: 70,
              ),
              ExperienceView(kNavigationItems
                  .firstWhere((element) => element.text == 'Experience')
                  .key),
              SizedBox(
                height: 70,
              ),
              BlogView(kNavigationItems
                  .firstWhere((element) => element.text == 'Blog')
                  .key),
              SizedBox(
                height: 70,
              ),
              FooterView(),
            ],
          ),
        ),
        floatingActionButton: BackToTopButton(onNavigate: _navigate),
      ),
    );
  }
}
