import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    @required this.onPressed,
    @required this.text,
  });

  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    bool isSmall = MediaQuery.of(context).size.width < 650;
    return Padding(
      padding: const EdgeInsets.only(left: 32.0),
      child: InkWell(
        onTap: onPressed,
        mouseCursor: MaterialStateMouseCursor.clickable,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Text(
          text,
          style: TextStyle(fontSize: isSmall ? 17 : 24),
        ),
      ),
    );
  }
}
