import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LoginBg extends StatelessWidget {
  const LoginBg({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Positioned(
            top: -50,
            right: -70,
            child: Image.asset(
              'assets/images/asset-login-1.png',
              width: size.width * 0.7,
            ).animate().fade(delay: 1.2.ms).slide(),
          ),
          Positioned(
            bottom: 200,
            left: -70,
            child: Image.asset(
              'assets/images/asset-login-2.png',
              width: size.width * 0.7,
            ),
          ).animate().fade(delay: 1.3.ms).slide(),
          child,
        ],
      ),
    );
  }
}
