import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {
  final TextStyle? style;
  final String? fontFamily;
  final String? data;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? height;
  const CustomTextWidget({
    Key? key,
    this.style,
    this.fontFamily,
    this.data,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data!,
      style: GoogleFonts.getFont(
        fontFamily!,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        height: height,
      ),
    );
  }
}
