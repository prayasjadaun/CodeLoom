import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class DSAPage extends StatefulWidget {
  const DSAPage({super.key});

  @override
  State<DSAPage> createState() => _DSAPageState();
}

class _DSAPageState extends State<DSAPage> {
  late PdfControllerPinch pdfControllerPinch;


  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/notesPdf/DSA_CompleteNotes.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DSA Complete Notes'),
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
