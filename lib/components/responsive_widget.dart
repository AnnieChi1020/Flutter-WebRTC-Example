
import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget smallScreenComponent;
  final Widget largeScreenComponent;

  const ResponsiveWidget({
    Key? key,
    required this.smallScreenComponent,
    required this.largeScreenComponent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final screenWidth = constraints.maxWidth;
      final isDesktop = screenWidth > 600;

      if (isDesktop) {
        return largeScreenComponent;
      } else {
        return smallScreenComponent;
      }
    });
  }
}
