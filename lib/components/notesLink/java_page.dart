import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class JavaPage extends StatefulWidget {
  const JavaPage({super.key});

  @override
  State<JavaPage> createState() => _JavaPageState();
}

class _JavaPageState extends State<JavaPage> {
  late PdfControllerPinch pdfControllerPinch;


  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/notesPdf/Java_Complete_Notes.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Java Complete Notes'),
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
