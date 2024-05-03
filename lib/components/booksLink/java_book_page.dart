import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class JavaBooksPage extends StatefulWidget {
  const JavaBooksPage({super.key});

  @override
  State<JavaBooksPage> createState() => _JavaBooksPageState();
}

class _JavaBooksPageState extends State<JavaBooksPage> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(document: PdfDocument.openAsset('assets/pdf/booksPdf/Java_For_Dummies.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Java For Dummies'),
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
