import 'package:flutter/material.dart';

class SimpleListview extends StatelessWidget {
  const SimpleListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple List View"),
      ),
      body: ListView(
        children: const [
          Text("item1"),
          Text("item2"),
          Text("item3"),
          Text("item4"),
          Text("item5"),
        ],
      ),
    );
  }
}
