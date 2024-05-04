import 'package:flutter/material.dart';
import 'package:pdf_notes_app/components/booksLink/dsa_book_page.dart';
import 'package:pdf_notes_app/components/booksLink/java_book_page.dart';
import 'package:pdf_notes_app/components/notesLink/c_page.dart';
import 'package:pdf_notes_app/components/notesLink/python_page.dart';
import 'package:pdf_notes_app/pages/books_page.dart';
import 'package:pdf_notes_app/pages/courses_page.dart';
import 'package:pdf_notes_app/pages/notes_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                child: Text(
                  '</> CodeWithPrayas',
                  style: TextStyle(
                      color: Colors.deepPurple[900],
                      fontSize: 24,
                      fontWeight: FontWeight.w900),
                ),
              ),
             const CircleAvatar(
               radius: 30,
               backgroundImage: AssetImage('assets/images/CodeLoom.png'),
             ),
            ],
          )),
      body: ListView(
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
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => const HomePage()));
                    },
                    icon: Icon(
                      Icons.home_filled,
                      color: Colors.deepPurple[900],
                    )),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const NotesPage()));
                  },
                  child: Text('Notes',
                      style: TextStyle(
                        color: Colors.deepPurple[900],
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const BooksPage()));
                  },
                  child: Text('Books',
                      style: TextStyle(
                        color: Colors.deepPurple[900],
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const CoursesPage()));
                  },
                  child: Text('Courses',
                      style: TextStyle(
                        color: Colors.deepPurple[900],
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      )),
                ),
                 Icon(
                  Icons.search,
                  color: Colors.deepPurple[900],
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
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.deepPurple[900],
              borderRadius: BorderRadius.circular(30)
            ),
              child: const Center(child: Text('C O D E L O O M', style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w200),))),
          const SizedBox(height: 10,),
          Image.asset('assets/images/book.jpg'),
          //-----------------------FOR NOTES--------------------------------------------------------------------------------------------------------------------
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Handwritten Notes',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Text('by Code With Harry',style: TextStyle(color: Colors.grey, fontSize: 10),),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const NotesPage()));
                  },
                  child: const Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
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
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        child:
                            Image.asset('assets/images/logoImages/python.webp'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Python Notes',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const Text('See Notes Here'),
                      IconButton(
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.grey[600],
                          ),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const PythonPage()));
                          },
                          icon: const Icon(Icons.arrow_forward_outlined))
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 15),
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        child: Image.asset('assets/images/logoImages/c.webp'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'C Notes',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const Text('See Notes Here'),
                      IconButton(
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.grey[600],
                          ),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>const CPage()));
                          },
                          icon: const Icon(Icons.arrow_forward_outlined))
                    ],
                  ),
                ),
              ],
            ),
          ),
          //--------------------------FOR BOOKS-----------------------------------------------------------------------------------------------
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Top Books',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const BooksPage()));
                  },
                  child: const Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
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
                              'assets/images/booksImages/java.png')),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>const JavaBooksPage()));
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
                              Image.asset('assets/images/booksImages/DSA.png')),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Data Structure & Algorithms',
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>const DSABookPage()));
                          },
                          icon: const Icon(Icons.arrow_forward_outlined)),
                    ],
                  ),
                ),
              ],
            ),
          ),
//---------------------------------------------------FOR COURSES-------------------------------------------------------------------------------------------

          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Top Courses',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const CoursesPage()));
                  },
                  child: const Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
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
                              'assets/images/courseImages/neur.png')),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Neural Network',
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
                          child: Image.asset(
                              'assets/images/courseImages/python.png')),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '      Python\n Programming ',
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
