import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          child,
        ],
      ),
    );
  }
}
