import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:porter_app/constants.dart';
import 'package:porter_app/login/login_body.dart';
import 'package:porter_app/welcome/welcome_bg.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: WelcomeBg(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 32, right: 32, top: 54, bottom: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/welcome.png',
                width: size.width * 1.2,
              ),
              Column(
                children: [
                  Text(
                    'Temani Petualangan Anda Bersama Porter Kami',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: GlobalColors.secondGreen1,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ).animate().fade(delay: 1.2.ms).slide(),
                  const SizedBox(height: 10),
                  Text(
                    'Jika petualangan Anda terasa berat, Kami adalah solusi Anda.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[500],
                    ),
                  ).animate().fade(delay: 1.3.ms).slide(),
                  const SizedBox(height: 30),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginBody()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: GlobalColors.primaryColor,
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      elevation: 7,
                      shadowColor: GlobalColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Mari Berpetualang',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 12),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 32,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ).animate().fade(delay: 1.3.ms).slide(),
            ],
          ),
        ),
      ),
    );
  }
}
