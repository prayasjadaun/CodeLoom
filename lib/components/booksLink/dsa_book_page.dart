import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class DSABookPage extends StatefulWidget {
  const DSABookPage({super.key});

  @override
  State<DSABookPage> createState() => _DSABookPageState();
}

class _DSABookPageState extends State<DSABookPage> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/booksPdf/DSA.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Data Structure & Algorithms'),
        ),
        body: _buildUI());
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
