import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PythonBookPage extends StatefulWidget {
  const PythonBookPage({super.key});

  @override
  State<PythonBookPage> createState() => _PythonBookPageState();
}

class _PythonBookPageState extends State<PythonBookPage> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/booksPdf/Python_Machine_Learning.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Python Machine Learning'),
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
