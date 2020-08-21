import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/components/elevate_on_hover.dart';

extension HoverExtension on Widget {
  Widget get moveUpOnHover {
    return ElevateOnHover(child: this);
  }
}
