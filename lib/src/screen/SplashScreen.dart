import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:irukkaa/src/screen/DashboardScreen.dart';
import 'package:irukkaa/src/screen/LoginScreen.dart';

class SpalshScren extends StatefulWidget {
  const SpalshScren({super.key});

  @override
  State<SpalshScren> createState() => _SpalshScrenState();
}

class _SpalshScrenState extends State<SpalshScren> {
  @override
  void initState() {
    super.initState();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal,
        child: const Center(
            child: Text(
          "irukkaa",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white),
        )),
      ),
    );
  }
}
