import 'package:flutter/material.dart';

class SpacedColumn extends StatelessWidget {
  final List<Widget> children;
  final double spacing;
  final CrossAxisAlignment crossAxisAlignment;

  const SpacedColumn({
    Key? key,
    required this.children,
    this.spacing = 30.0,
    this.crossAxisAlignment = CrossAxisAlignment.start, // default value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final spacedChildren = <Widget>[];
    for (int i = 0; i < children.length; i++) {
      spacedChildren.add(children[i]);
      if (i < children.length - 1) {
        spacedChildren.add(SizedBox(height: spacing));
      }
    }

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: spacedChildren,
    );
  }
}
