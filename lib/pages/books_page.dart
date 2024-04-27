import 'package:flutter/material.dart';
import 'package:pdf_notes_app/components/booksLink/java_book_page.dart';
import 'package:pdf_notes_app/components/booksLink/python_book_page.dart';

import 'courses_page.dart';
import 'home_page.dart';
import 'notes_page.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
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
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child: const Text(
                  '</> CodeWithPrayas',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 24,
                      fontWeight: FontWeight.w900),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple)),
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w900),
                  )),
            ],
          )),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    icon: const Icon(
                      Icons.home_filled,
                      color: Colors.deepPurple,
                    )),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const NotesPage()));
                  },
                  child: const Text('Notes',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const BooksPage()));
                  },
                  child: const Text('Books',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const CoursesPage()));
                  },
                  child: const Text('Courses',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      )),
                ),
                const Icon(
                  Icons.search,
                  color: Colors.deepPurple,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Books',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
                Icon(
                  Icons.search,
                ),
              ],
            ),
          ),
         const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 15),
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Image.asset(
                              'assets/images/booksImages/java_dummies.png')),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'JAVA',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IconButton(
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.grey[600],
                          ),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const JavaBooksPage()));
                          },
                          icon: const Icon(Icons.arrow_forward_outlined)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 15),
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child:
                          Image.asset('assets/images/booksImages/c#.png')),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'C#',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IconButton(
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.grey[600],
                          ),
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_outlined)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 15),
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Image.asset(
                              'assets/images/booksImages/python.png')),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Python\nProgramming',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IconButton(
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.grey[600],
                          ),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PythonBookPage()));
                          },
                          icon: const Icon(Icons.arrow_forward_outlined)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 15),
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child:
                          Image.asset('assets/images/booksImages/Algorithms.png')),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Algorithms',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IconButton(
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.grey[600],
                          ),
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_outlined)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 15),
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Image.asset(
                              'assets/images/booksImages/Android Programming.png')),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Android\nProgramming',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IconButton(
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.grey[600],
                          ),
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_outlined)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 15),
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child:
                          Image.asset('assets/images/booksImages/DSA.png')),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'DSA',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IconButton(
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.grey[600],
                          ),
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_outlined)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 15),
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Image.asset(
                              'assets/images/booksImages/Coding Interview.png')),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Coding Interview',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IconButton(
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.grey[600],
                          ),
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_outlined)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 15),
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child:
                          Image.asset('assets/images/booksImages/grokking Algo.png')),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Grokking Algorithms',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IconButton(
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.grey[600],
                          ),
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_outlined)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
