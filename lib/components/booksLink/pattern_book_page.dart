import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PatternBookPage extends StatefulWidget {
  const PatternBookPage({super.key});

  @override
  State<PatternBookPage> createState() => _PatternBookPageState();
}

class _PatternBookPageState extends State<PatternBookPage> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/booksPdf/PatternRecognitionandMachineLearning.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pattern Recognition and Machine Learning'),
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
