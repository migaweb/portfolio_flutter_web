import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (size.isMobile) return HeaderMobileView();
        return Container(
          height: height * 0.8,
          width: width * 0.8,
          child: Row(
            children: [
              Expanded(
                child: HeaderBody(isMobile: size.isMobile),
                flex: 1,
              ),
              Expanded(child: Logo()),
              //FlutterLogo(size: 300)
            ],
          ),
        );
      },
    );
  }
}

class Logo extends StatefulWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  @override
  void initState() {
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOutCubic,
    ).drive(Tween(begin: 0, end: 2));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller
          ..reset()
          ..forward();
      },
      child: RotationTransition(
        turns: animation,
        child: Stack(
          children: [
            Positioned.fill(
              child: Hero(
                tag: 'logo',
                child: Image.asset(
                  'assets/images/micke_transp.png',
                  fit: BoxFit.fitHeight,
                ),
              ), //FlutterLogo(),
            ),
          ],
        ),
      ),
    );
  }
}

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
          onPressed: () {},
        )
      ],
    );
  }
}

class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      //color: Colors.lightBlue,
      height: height * 0.9,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(0),
              width: double.infinity,
              color: Colors.white,
              child: Hero(
                tag: 'logo',
                child: Image.asset(
                  'assets/images/micke_transp.png',
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          Expanded(flex: 2, child: HeaderBody(isMobile: true)),
        ],
      ),
    );
  }
}
