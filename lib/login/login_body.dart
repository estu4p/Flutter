import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:porter_app/constants.dart';
import 'package:porter_app/login/login_bg.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 8, top: 10),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: LoginBg(
        child: Container(
          width: double.infinity,
          height: size.height,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Expanded(
                flex: 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome back ',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ).animate().fade(delay: 1.ms).slide(),
                        const SizedBox(height: 8),
                        Text(
                          'Login kembali dengan akun anda untuk melanjutkan petualangan bersama kami.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ).animate().fade(delay: 1.1.ms).slide(),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Column(
                            children: [
                              const FormInput(
                                obscure: false,
                                text: 'Email',
                              ).animate().fade(delay: 1.3.ms).slide(),
                              const SizedBox(height: 15),
                              const FormInput(
                                obscure: true,
                                text: 'Password',
                              ).animate().fade(delay: 1.5.ms).slide(),
                              const SizedBox(height: 15),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Lupa password?',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: GlobalColors.secondGreen1,
                                  ),
                                ).animate().fade(delay: 1.4.ms).slide(),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: GlobalColors.primaryColor,
                            padding: const EdgeInsets.symmetric(vertical: 17),
                            elevation: 10,
                            shadowColor: GlobalColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 19,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).animate().fade(delay: 1.6.ms).slide(),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    const SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'don\'t have an account? ',
                          style: TextStyle(
                            fontSize: 15,
                            color: GlobalColors.secondGreen1,
                          ),
                        ),
                        Text(
                          'sign up',
                          style: TextStyle(
                            fontSize: 15,
                            color: GlobalColors.secondGreen1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ).animate().fade(delay: 1.3.ms).slide(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FormInput extends StatelessWidget {
  const FormInput({super.key, required this.obscure, required this.text});

  final bool obscure;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: Colors.grey[600],
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
