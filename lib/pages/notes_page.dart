import 'package:flutter/material.dart';
import 'package:pdf_notes_app/components/notesLink/android_page.dart';
import 'package:pdf_notes_app/components/notesLink/c_page.dart';
import 'package:pdf_notes_app/components/notesLink/dsa_page.dart';
import 'package:pdf_notes_app/components/notesLink/java_page.dart';
import 'package:pdf_notes_app/components/notesLink/js_page.dart';
import 'package:pdf_notes_app/components/notesLink/python_page.dart';
import '../components/notesLink/css_page.dart';
import '../components/notesLink/html_page.dart';
import 'books_page.dart';
import 'courses_page.dart';
import 'home_page.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
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
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child:  const Text(
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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
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
            child:const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Handwritten Notes',style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),),
                Icon(Icons.search,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 20, bottom: 15),
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              child: Image.asset('assets/images/logoImages/python.webp'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('Python Notes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                            const Text('See Notes Here'),
                            IconButton(
                              iconSize: 40,
                              style: IconButton.styleFrom(backgroundColor: Colors.grey[600],),
                              color: Colors.white,
                                onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PythonPage()));
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
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              child: Image.asset('assets/images/logoImages/c.webp'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('C Notes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                            const Text('See Notes Here'),
                            IconButton(
                                iconSize: 40,
                                style: IconButton.styleFrom(backgroundColor: Colors.grey[600],),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>CPage()));
                                },
                                icon: const Icon(Icons.arrow_forward_outlined))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 20, bottom: 15),
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              child: Image.asset('assets/images/logoImages/android.webp'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('Android Notes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                            const Text('See Notes Here'),
                            IconButton(
                                iconSize: 40,
                                style: IconButton.styleFrom(backgroundColor: Colors.grey[600],),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AndroidPage()));
                                },
                                icon: const Icon(Icons.arrow_forward_outlined))
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 20, bottom: 15),
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              child: Image.asset('assets/images/logoImages/java.webp'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('Java Notes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                            const Text('See Notes Here'),
                            IconButton(
                                iconSize: 40,
                                style: IconButton.styleFrom(backgroundColor: Colors.grey[600],),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>JavaPage()));
                                },
                                icon: const Icon(Icons.arrow_forward_outlined))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 20, bottom: 15),
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              child: Image.asset('assets/images/logoImages/html.webp'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('HTML Notes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                            const Text('See Notes Here'),
                            IconButton(
                                iconSize: 40,
                                style: IconButton.styleFrom(backgroundColor:Colors.grey[600],),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HtmlPage()));
                                },
                                icon: const Icon(Icons.arrow_forward_outlined))
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 20, bottom: 15),
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              child: Image.asset('assets/images/logoImages/css.webp'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('CSS Notes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                            const Text('See Notes Here'),
                            IconButton(
                                iconSize: 40,
                                style: IconButton.styleFrom(backgroundColor:Colors.grey[600],),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> CssPage()));
                                },
                                icon: const Icon(Icons.arrow_forward_outlined))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 20, bottom: 15),
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              child: Image.asset('assets/images/logoImages/js.webp'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('JS Notes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                            const Text('See Notes Here'),
                            IconButton(
                                iconSize: 40,
                                style: IconButton.styleFrom(backgroundColor: Colors.grey[600],),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => JSPage()));
                                },
                                icon: const Icon(Icons.arrow_forward_outlined))
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 20, bottom: 15),
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              child: Image.asset('assets/images/logoImages/dsa.webp'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('DSA Notes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                            const Text('See Notes Here'),
                            IconButton(
                                iconSize: 40,
                                style: IconButton.styleFrom(backgroundColor: Colors.grey[600],),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DSAPage()));
                                },
                                icon: const Icon(Icons.arrow_forward_outlined))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            )
          )
        ],
      ),
    );
  }
}
