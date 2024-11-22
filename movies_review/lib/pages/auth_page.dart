import 'package:flutter/material.dart';
import 'package:movies_review/components/auth_form.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 221, 221, 221),
          ),
          Container(
            height: deviceSize.height * 0.5,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 10, 10, 10),
                Color.fromARGB(255, 20, 20, 20),
                Color.fromARGB(255, 30, 30, 30),
                Color.fromARGB(255, 44, 44, 44),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          const SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
