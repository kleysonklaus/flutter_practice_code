import 'dart:math';

import 'package:flutter/material.dart';

import '../flip_card_animation/card1.dart';
import '../flip_card_animation/card2.dart';

class FlipCardAnimationWithCurve extends StatelessWidget {
  const FlipCardAnimationWithCurve({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flip Card Animation with curve"),
      ),
      body: ListView(
        children: [
          _FlipCardWidgetWithCurve(
            // controller: controller, front: const Card1(), back: const Card2()
            front: Card1(),
            back: Card2(),
            // front: Image.asset('assets/images/primero.jpg'),
            // back: Image.asset('assets/images/tercero.png'),
          ),
          // ElevatedButton(
          //   onPressed: () async => controller.flipCard(),
          //   child: const Text("flip card"),
          // ),
        ],
      ),
    );
  }
}

class _FlipCardWidgetWithCurve extends StatefulWidget {
  final Widget front;
  final Widget back;
  // final Image front;
  // final Image back;
  const _FlipCardWidgetWithCurve({
    Key? key,
    required this.front,
    required this.back,
  }) : super(key: key);

  @override
  State<_FlipCardWidgetWithCurve> createState() =>
      _FlipCardWidgetWithCurveState();
}

class _FlipCardWidgetWithCurveState extends State<_FlipCardWidgetWithCurve>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  AnimationStatus _status = AnimationStatus.dismissed;
  bool isFront = true;
  double anglePlus = 0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );

    _animation = Tween(
      end: 1.0,
      begin: 0.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceIn,
      // curve: Curves.easeOut,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _status = status;
      });
  }

  Future flipCard() async {
    isFront = !isFront;
    if (_controller.isAnimating) return;
    await _controller.forward(from: 0).then((value) => anglePlus = pi);
    // if (isFront) {
    //   await controller.reverse();
    // } else {
    //   await controller.forward();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Builder(
          builder: (context) {
            double angle = _controller.value * pi;
            if (isFront) angle += anglePlus;

            return Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                // ..setEntry(2, 1, 0.0015)
                ..rotateY(angle),
              // ..rotateY(pi * _animation.value),
              child: Card(
                // child: _animation.value <= 0.5
                child: isFrontImage(angle.abs())
                    ? Container(
                        color: Colors.blue,
                        width: 350,
                        height: 500,
                        child: widget.front,
                      )
                    : Container(
                        color: Colors.grey,
                        width: 350,
                        height: 500,
                        child: Transform(
                          transform: Matrix4.identity()..rotateY(pi),
                          alignment: Alignment.center,
                          child: widget.back,
                        ),
                      ),
              ),
            );
          },
        ),
        // Transform(
        //   alignment: FractionalOffset.center,
        //   transform: Matrix4.identity()
        //     ..setEntry(2, 1, 0.0015)
        //     ..rotateY(pi * _animation.value),
        //   child: Card(
        //     child: _animation.value <= 0.5
        //         ? Container(
        //             color: Colors.blue,
        //             width: 350,
        //             height: 150,
        //             child: Center(child: Text('?')),
        //           )
        //         : Container(
        //             color: Colors.grey,
        //             width: 350,
        //             height: 150,
        //             child: Center(
        //               child: Text('hola como estas'),
        //             ),
        //           ),
        //   ),
        // ),
        ElevatedButton(
          onPressed: flipCard,
          // () {
          //   if (_status == AnimationStatus.dismissed) {
          //     _controller.forward();
          //   } else {
          //     _controller.reverse();
          //   }
          // },
          child: Text("go"),
        )
      ],
    );
  }

  bool isFrontImage(double angle) {
    final degress90 = pi / 2;
    final degress270 = 3 * pi / 2;
    return angle <= degress90 || angle >= degress270;
  }
}
