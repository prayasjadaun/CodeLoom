import 'package:flutter/material.dart';
import 'package:pdf_notes_app/pages/books_page.dart';
import 'package:pdf_notes_app/pages/notes_page.dart';


import 'home_page.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: Row(children: [
                  Icon(
                    Icons.menu_book_rounded,
                    color: Colors.deepPurple[900],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'CodeLoom',
                    style: TextStyle(
                        color: Colors.deepPurple[900],
                        fontSize: 24,
                        fontWeight: FontWeight.w900),
                  ),
                ]),
              ),
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/CodeLoom.png'),
              ),
            ],
          )),
      body:Center(child: Text('Under Construction'))
    );
  }
}
