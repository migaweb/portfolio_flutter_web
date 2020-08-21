import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webfeed/domain/rss_item.dart';
import 'package:intl/intl.dart';
import 'package:portfolio_flutter_web/utils/hover_extensions.dart';

class BlogCard extends StatelessWidget {
  final bool isMobile;
  final RssItem article;

  String _removeAllHtmlTags(String htmlText) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

    return htmlText.replaceAll(exp, '');
  }

  String _formatDate(DateTime date) {
    return DateFormat('d MMMM yyyy').format(date);
  }

  const BlogCard({this.article, this.isMobile});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: () => launch(article.link),
      child: Card(
        elevation: 3.0,
        margin: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: Colors.redAccent,
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: isMobile ?? false ? 20.0 : 40.0,
              ),
              child: Text(
                _removeAllHtmlTags(article.title),
                style: theme.textTheme.headline4.copyWith(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _formatDate(article.pubDate),
                    style: textStyle(isGrey: true),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    _removeAllHtmlTags(article.description),
                    style: textStyle(),
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ).moveUpOnHover,
    );
  }
}
