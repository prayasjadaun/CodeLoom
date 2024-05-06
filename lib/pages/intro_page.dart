import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'C O D E L O O M',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 50,
                    fontWeight: FontWeight.w900),
              ),
              Image.asset(
                'assets/images/libar.jpg',
                height: 400,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Explore',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Your Library App',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.w200),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage())),
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.deepPurple),
                  padding: const EdgeInsets.all(18),
                  child: Center(
                    child: Text(
                      'Enter Library',
                      style: TextStyle(
                          color: Colors.grey.shade200,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
