import 'package:pdfx/pdfx.dart';
import 'package:flutter/material.dart';

class JSPage extends StatefulWidget {
  const JSPage({super.key});

  @override
  State<JSPage> createState() => _JSPageState();
}

class _JSPageState extends State<JSPage> { late PdfControllerPinch pdfControllerPinch;


@override
void initState() {
  super.initState();
  pdfControllerPinch = PdfControllerPinch(
      document: PdfDocument.openAsset(
          'assets/pdf/notesPdf/JS_Chapterwise_Notes.pdf'));
}

@override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text('JS Complete Notes'),
      ),
      body: _buildUI()
  );
}

Widget _buildUI() {
  return Column(
    children: [
      _pdfView(),
    ],
  );
}

Widget _pdfView() {
  return Expanded(
      child: PdfViewPinch(
        controller: pdfControllerPinch,
      ));
}
}
