import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class AndroidPage extends StatefulWidget {
  const AndroidPage({super.key});

  @override
  State<AndroidPage> createState() => _AndroidPageState();
}

class _AndroidPageState extends State<AndroidPage> {
  late PdfControllerPinch pdfControllerPinch;


  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/notesPdf/Android_CompleteNotes.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Android Complete Notes'),
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
