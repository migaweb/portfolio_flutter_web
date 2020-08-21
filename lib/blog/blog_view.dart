import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/blog/blog_card.dart';
import 'package:provider/provider.dart';
import 'package:portfolio_flutter_web/components/desktop_view_builder.dart';
import 'package:portfolio_flutter_web/components/mobile_desktop_view_builder.dart';
import 'package:portfolio_flutter_web/components/mobile_view_builder.dart';

import 'package:webfeed/domain/rss_feed.dart';
import 'package:webfeed/domain/rss_item.dart';

class BlogView extends StatelessWidget {
  static const title = 'Blog';
  final Key key;
  BlogView(this.key) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureProvider<List<RssItem>>(
      create: (_) => getArticles(),
      child: MobileDesktopViewBuilder(
        mobileView: BlogMobileView(),
        desktopView: BlogDesktopView(),
      ),
    );
  }
}

class BlogDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final articles = context.watch<List<RssItem>>();
    if (articles == null) return CircularProgressIndicator();
    return DesktopViewBuilder(
      titleText: BlogView.title,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final article in articles)
              Expanded(child: BlogCard(article: article)),
          ],
        ),
        SizedBox(
          height: 100,
        ),
      ],
    );
  }
}

class BlogMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final articles = context.watch<List<RssItem>>();
    if (articles == null) return CircularProgressIndicator();
    return MobileViewBuilder(
      titleText: BlogView.title,
      children: [
        for (final article in articles)
          BlogCard(
            article: article,
            isMobile: true,
          ),
      ],
    );
  }
}

Future<List<RssItem>> getArticles() async {
  final url =
      'https://cors-anywhere.herokuapp.com/http://rss.cnn.com/rss/edition_technology.rss';
  final response = await http.get(url);
  final parsedResponse = RssFeed.parse(response.body);
  return parsedResponse.items.sublist(0, 3);
}
