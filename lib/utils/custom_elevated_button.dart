import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final ButtonStyle? style;
  final double height;
  final double width;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? color;
  const CustomElevatedButton({
    Key? key,
    this.onPressed,
    this.child,
    this.style,
    required this.height,
    required this.width,
    this.backgroundColor,
    this.foregroundColor,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          foregroundColor: MaterialStateProperty.all(foregroundColor),
        ),
        child: child,
      ),
    );
  }
}
