import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class StatisticalBookPage extends StatefulWidget {
  const StatisticalBookPage({super.key});

  @override
  State<StatisticalBookPage> createState() => _StatisticalBookPageState();
}

class _StatisticalBookPageState extends State<StatisticalBookPage> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/booksPdf/TheElementsofStatisticalLearningDataMining.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('The Elements Of Statistical Learning DataMining'),
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
