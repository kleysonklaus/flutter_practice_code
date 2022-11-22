import 'package:flutter/material.dart';

class FpcButtom extends StatelessWidget {
  final String label;
  final void Function()? onTap;
  const FpcButtom({
    Key? key,
    required this.label,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        label,
        style: TextStyle(),
      ),
    );
  }
}
