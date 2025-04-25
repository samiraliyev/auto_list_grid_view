import 'package:flutter/material.dart';

class AutoListGridView extends StatelessWidget {
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final double breakpoint;
  final int gridCrossAxisCount;
  final EdgeInsetsGeometry? padding;
  final double spacing;

  const AutoListGridView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.breakpoint = 600,
    this.gridCrossAxisCount = 2,
    this.padding,
    this.spacing = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < breakpoint) {
      return ListView.builder(
        padding: padding,
        itemCount: itemCount,
        itemBuilder: itemBuilder,
      );
    } else {
      return GridView.builder(
        padding: padding,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridCrossAxisCount,
          mainAxisSpacing: spacing,
          crossAxisSpacing: spacing,
          childAspectRatio: 1,
        ),
        itemBuilder: itemBuilder,
      );
    }
  }
}
