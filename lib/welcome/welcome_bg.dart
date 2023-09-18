import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class WelcomeBg extends StatelessWidget {
  final Widget child;
  const WelcomeBg({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            right: -50,
            child: Image.asset(
              'assets/images/asset-bg-1.png',
              width: size.width * 0.5,
            ).animate().fade(delay: 1.2.ms).slide(),
          ),
          Positioned(
            bottom: 120,
            left: -40,
            child: Image.asset(
              'assets/images/asset-bg-2.png',
              width: size.width * 0.5,
            ).animate().fade(delay: 1.3.ms).slide(),
          ),
          child,
        ],
      ),
    );
  }
}
