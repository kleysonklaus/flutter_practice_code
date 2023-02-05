import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      color: Colors.blue,
      child: Center(
        child: Text("Texto Card 2, pero increiblemente extenso"),
      ),
    );
  }
}
