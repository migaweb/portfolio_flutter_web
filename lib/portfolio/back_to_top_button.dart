import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BackToTopButton extends StatelessWidget {
  final Function onNavigate;

  const BackToTopButton({this.onNavigate});

  @override
  Widget build(BuildContext context) {
    final scrollController = context.watch<ScrollController>();
    if (scrollController.isOffsetZero) return SizedBox();
    return FloatingActionButton(
      child: Icon(Icons.arrow_upward),
      onPressed: () {
        onNavigate(position: 0);
      },
    );
  }
}

extension on ScrollController {
  bool get isOffsetZero {
    return this.offset == 0;
  }
}
