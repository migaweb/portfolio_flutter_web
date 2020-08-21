import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_flutter_web/components/mobile_desktop_view_builder.dart';
import 'package:portfolio_flutter_web/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_flutter_web/utils/hover_extensions.dart';

class FooterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
      desktopView: FooterDesktopView(),
      mobileView: FooterMobileView(),
    );
  }
}

class FooterDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: double.infinity,
      padding: kScreenPaddingDesktop,
      child: Row(
        children: [
          Text('© Mikael Storman Gustavsson ${DateTime.now().year} -- '),
          InkWell(
            child: Text(
              'See the source code',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            mouseCursor: MaterialStateMouseCursor.clickable,
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              final String url =
                  'https://github.com/migaweb/portfolio_flutter_web';
              launch(url);
            },
          ),
          Spacer(),
          for (final social in socials)
            IconButton(
              icon: social.icon,
              color: Theme.of(context).primaryColor,
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () => launch(social.url),
            ).moveUpOnHover,
          SizedBox(
            width: 60,
          ),
        ],
      ),
    );
  }
}

class FooterMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: kScreenPaddingMobile,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (final social in socials)
                IconButton(
                  icon: social.icon,
                  color: Theme.of(context).primaryColor,
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () => launch(social.url),
                )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('© Mikael Storman Gustavsson ${DateTime.now().year} '),
          SizedBox(height: 20.0),
          InkWell(
            child: Text(
              'See the source code',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            mouseCursor: MaterialStateMouseCursor.clickable,
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              final String url =
                  'https://github.com/migaweb/portfolio_flutter_web';
              launch(url);
            },
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}

class SocialInfo {
  final Widget icon;
  final String url;

  SocialInfo({@required this.icon, @required this.url});
}

final List<SocialInfo> socials = [
  SocialInfo(
      icon: FaIcon(FontAwesomeIcons.facebook),
      url: 'https://www.facebook.com/mikael.gustavsson.334'),
  SocialInfo(
      icon: FaIcon(FontAwesomeIcons.instagram),
      url: 'https://www.instagram.com/miga02/'),
  SocialInfo(
      icon: FaIcon(FontAwesomeIcons.linkedin),
      url: 'https://www.linkedin.com/in/mikael-gustavsson-a7b9883/'),
  SocialInfo(
      icon: FaIcon(FontAwesomeIcons.twitter),
      url: 'https://twitter.com/devilbugs/'),
];
