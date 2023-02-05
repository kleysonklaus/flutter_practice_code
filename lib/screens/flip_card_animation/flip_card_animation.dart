import 'package:flutter/material.dart';

class FlipCardAnimation extends StatelessWidget {
  const FlipCardAnimation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flip Card Animation"),
      ),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
