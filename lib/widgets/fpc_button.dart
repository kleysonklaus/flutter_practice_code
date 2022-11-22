import 'package:flutter/material.dart';

class FpcButtom extends StatelessWidget {
  final String label;
  final void Function()? onTap;
  final double? textFontSize;
  final FontWeight? textFontWeight;
  final Color? backgroundColor;
  final double? maxWith;
  final double? mnaxHeight;
  const FpcButtom({
    Key? key,
    required this.label,
    this.onTap,
    this.textFontSize = 16.0,
    this.textFontWeight,
    this.backgroundColor = Colors.purple,
    this.maxWith = 250,
    this.mnaxHeight = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        label,
        style: TextStyle(
          fontSize: textFontSize,
          fontWeight: textFontWeight,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: backgroundColor,
        minimumSize: Size(maxWith!, mnaxHeight!),
      ),
    );
  }
}
