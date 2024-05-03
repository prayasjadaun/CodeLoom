import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class AlgorithmBookPage extends StatefulWidget {
  const AlgorithmBookPage({super.key});

  @override
  State<AlgorithmBookPage> createState() => _AlgorithmBookPageState();
}

class _AlgorithmBookPageState extends State<AlgorithmBookPage> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/booksPdf/Algorithms_4th_Edition.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Algorithms 4th Edition'),
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
