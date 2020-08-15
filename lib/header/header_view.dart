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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: HeaderBody(),
              ),
              FlutterLogo(size: 250),
            ],
          ),
        );
      },
    );
  }
}

class HeaderBody extends StatelessWidget {
  const HeaderBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'I\'m a Systems',
          style: GoogleFonts.montserrat(fontSize: 40.0),
          textAlign: TextAlign.left,
        ),
        Text(
          'Developer < / >',
          style: GoogleFonts.montserrat(fontSize: 40.0),
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'I have 16 years of experience in development, building beautiful apps in .NET and Flutter',
          style: TextStyle(fontSize: 12.0),
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: 25,
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          color: Colors.redAccent,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 10,
            ),
            child: Text(
              'Contact me',
              style: TextStyle(
                fontSize: 12.0,
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
      height: height * 0.9,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          FlutterLogo(size: height * 0.3),
          //Spacer(),
          HeaderBody(),
        ],
      ),
    );
  }
}
