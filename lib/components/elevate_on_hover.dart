import 'package:flutter/material.dart';

class ElevateOnHover extends StatefulWidget {
  final Widget child;

  const ElevateOnHover({this.child});

  @override
  _ElevateOnHoverState createState() => _ElevateOnHoverState();
}

class _ElevateOnHoverState extends State<ElevateOnHover> {
  final nonHoverTransform = Matrix4.identity()..translate(0, 0, 0);
  final hoverTransform = Matrix4.identity()..translate(0, -10, 0);
  bool hovering = false;
  void _mouseEnter(bool hover) {
    setState(() {
      hovering = hover;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _mouseEnter(true),
      onExit: (event) => _mouseEnter(false),
      child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          transform: hovering ? hoverTransform : nonHoverTransform,
          child: widget.child),
    );
  }
}
