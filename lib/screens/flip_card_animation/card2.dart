import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 20,
      color: Colors.yellow,
      child: const Center(
        child: Text("Texto Card 2, pero increiblemente extenso"),
      ),
    );
  }
}
