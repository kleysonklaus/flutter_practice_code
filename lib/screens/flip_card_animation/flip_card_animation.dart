import 'dart:math';

import 'package:flutter/material.dart';

import 'card1.dart';
import 'card2.dart';

class FlipCardAnimation extends StatelessWidget {
  const FlipCardAnimation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = FlipCardController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flip Card Animation"),
      ),
      body: ListView(
        children: [
          _FlipCardWidget(
              controller: controller, front: const Card1(), back: const Card2()
              // front: Image.asset('assets/images/primero.jpg'),
              // back: Image.asset('assets/images/tercero.png'),
              ),
          ElevatedButton(
            onPressed: () async => controller.flipCard(),
            child: const Text("flip card"),
          ),
        ],
      ),
    );
  }
}

class FlipCardController {
  _FlipCardWidgetState? _state;

  Future flipCard() async => _state?.flipCard();
}

class _FlipCardWidget extends StatefulWidget {
  final FlipCardController controller;
  final Widget front;
  final Widget back;
  // final Image front;
  // final Image back;
  const _FlipCardWidget({
    Key? key,
    required this.front,
    required this.back,
    required this.controller,
  }) : super(key: key);

  @override
  State<_FlipCardWidget> createState() => _FlipCardWidgetState();
}

class _FlipCardWidgetState extends State<_FlipCardWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool isFront = true;
  double anglePlus = 0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    widget.controller._state = this;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future flipCard() async {
    isFront = !isFront;
    if (controller.isAnimating) return;
    await controller.forward(from: 0).then((value) => anglePlus = pi);
    // if (isFront) {
    //   await controller.reverse();
    // } else {
    //   await controller.forward();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        double angle = controller.value * pi;
        if (isFront) angle += anglePlus;
        final transform = Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(angle);

        return Transform(
          transform: transform,
          alignment: Alignment.center,
          child: isFrontImage(angle.abs())
              ? widget.front
              : Transform(
                  transform: Matrix4.identity()..rotateY(pi),
                  alignment: Alignment.center,
                  child: widget.back,
                ),
        );
      },
    );
  }

  bool isFrontImage(double angle) {
    const double degress90 = pi / 2;
    const double degress270 = 3 * pi / 2;
    return angle <= degress90 || angle >= degress270;
  }
}
