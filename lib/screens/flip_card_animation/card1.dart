import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // width: 200,
      color: Colors.red,
      child: const Center(
        child: Text("Texto Card 1"),
      ),
    );
  }
}
