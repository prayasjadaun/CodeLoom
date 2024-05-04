import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class MachineLearningBookPage extends StatefulWidget {
  const MachineLearningBookPage({super.key});

  @override
  State<MachineLearningBookPage> createState() => _MachineLearningBookPageState();
}

class _MachineLearningBookPageState extends State<MachineLearningBookPage> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/booksPdf/Hands-OnMachineLearningwithScikit-Learn,Keras.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hands-On Machine Learning with Scikit-Learn,Keras'),
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

