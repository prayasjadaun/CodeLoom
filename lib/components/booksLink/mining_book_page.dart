import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class MiningBookPage extends StatefulWidget {
  const MiningBookPage({super.key});

  @override
  State<MiningBookPage> createState() => _MiningBookPageState();
}

class _MiningBookPageState extends State<MiningBookPage> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/booksPdf/MiningofMassiveDatasets.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mining of Massive Datasets (3rd Edition)'),
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
