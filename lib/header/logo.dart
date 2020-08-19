import 'package:flutter/material.dart';

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
