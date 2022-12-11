import 'package:flutter/material.dart';

class FpcButtom extends StatelessWidget {
  final String label;
  final void Function()? onTap;
  final double? textFontSize;
  final FontWeight? textFontWeight;
  final Color? backgroundColor;
  final Color? textColor;
  final double? maxWith;
  final double? mnaxHeight;
  const FpcButtom({
    Key? key,
    required this.label,
    this.onTap,
    this.textFontSize = 16.0,
    this.textFontWeight,
    this.backgroundColor = Colors.black,
    this.textColor = Colors.white,
    this.maxWith = 250,
    this.mnaxHeight = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(maxWith!, mnaxHeight!),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontSize: textFontSize,
          fontWeight: textFontWeight,
        ),
      ),
    );
  }
}
