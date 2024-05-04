import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pdf_notes_app/pages/intro_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const IntroPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: const Center(
        child: CircleAvatar(
          radius: 200,
          backgroundImage: AssetImage('assets/images/CodeLoom.png'),
        ),
      ),
    );
  }
}
