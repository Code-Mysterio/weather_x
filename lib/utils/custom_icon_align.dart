import 'package:flutter/material.dart';

class CustomIconAlign extends StatelessWidget {
  final Alignment? alignment;
  final Widget? child;
  final double? x;
  final double? y;
  final double? radius;
  const CustomIconAlign({
    Key? key,
    this.alignment,
    this.child,
    this.x,
    this.y,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(x!, y!),
      child: CircleAvatar(
        radius: 50.0,
        backgroundColor: Colors.transparent,
        child: child,
      ),
    );
  }
}
