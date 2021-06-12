import 'package:flutter/material.dart';

class BluetoothAnimation extends StatefulWidget {
  @override
  _BluetoothAnimationState createState() => _BluetoothAnimationState();
}

class _BluetoothAnimationState extends State<BluetoothAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: false);

  late final Animation<double> _ScaleAnimation =
      Tween(begin: 0.4, end: 1.0).animate(_controller);

  late final Animation<double> _FadeAnimation =
      Tween(begin: 0.8, end: 0.4).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext contex) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ScaleTransition(
          scale: _ScaleAnimation,
          child: FadeTransition(
            opacity: _FadeAnimation,
            child: Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle),
            ),
          ),
        ),
        ScaleTransition(
          scale: _ScaleAnimation,
          child: FadeTransition(
            opacity: _FadeAnimation,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle),
            ),
          ),
        ),
        ScaleTransition(
          scale: _ScaleAnimation,
          child: FadeTransition(
            opacity: _FadeAnimation,
            child: Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle),
            ),
          ),
        ),
        Icon(Icons.bluetooth,
            size: 64,
            color: Theme.of(context).colorScheme.onPrimary,
            semanticLabel: "Ícone bluetooth"),
      ],
    );
  }
}
