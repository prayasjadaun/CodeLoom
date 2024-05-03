import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class GrokkingAlgoBookPage extends StatefulWidget {
  const GrokkingAlgoBookPage({super.key});

  @override
  State<GrokkingAlgoBookPage> createState() => _GrokkingAlgoBookPageState();
}

class _GrokkingAlgoBookPageState extends State<GrokkingAlgoBookPage> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/booksPdf/Grokking_Algorithms.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grokking Algorithms'),
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

