import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/constants.dart';
import 'package:portfolio_flutter_web/header/header_body.dart';

class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      //color: Colors.lightBlue,
      height: height * 0.9,
      width: double.infinity,
      padding: kScreenPaddingMobile,
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
