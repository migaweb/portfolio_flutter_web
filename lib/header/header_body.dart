import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_flutter_web/utils/hover_extensions.dart';

class HeaderBody extends StatelessWidget {
  final bool isMobile;
  const HeaderBody({
    Key key,
    this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      mainAxisAlignment:
          isMobile ? MainAxisAlignment.start : MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'I\'m a Systems',
          style: theme.textTheme.headline3,
          textAlign: TextAlign.left,
          maxLines: 1,
        ),
        AutoSizeText(
          'Developer < / >',
          style: theme.textTheme.headline3,
          textAlign: TextAlign.left,
          maxLines: 1,
        ),
        SizedBox(
          height: isMobile ?? false ? 15 : 25,
        ),
        AutoSizeText(
          'I have 16 years of experience in development, building beautiful apps in .NET and Flutter',
          style: TextStyle(fontSize: 22.0),
          textAlign: TextAlign.left,
          maxLines: 3,
        ),
        SizedBox(
          height: isMobile ?? false ? 15 : 25,
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          color: Colors.redAccent,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ?? false ? 6 : 15,
              vertical: isMobile ?? false ? 8 : 17,
            ),
            child: Text(
              'Contact me',
              style: TextStyle(
                fontSize: isMobile ?? false ? 12.0 : 16.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          onPressed: () =>
              launch('mailto:miga02@gmail.com?subject=Contact me form'),
        ).moveUpOnHover
      ],
    );
  }
}
