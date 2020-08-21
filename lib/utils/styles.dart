import 'package:flutter/material.dart';

TextStyle textStyle({bool isBold, bool isGrey}) {
  return TextStyle(
    height: 1.3,
    fontSize: 20,
    fontWeight: isBold ?? false ? FontWeight.bold : FontWeight.normal,
    color: isGrey ?? false ? Colors.grey : Colors.black,
  );
}
