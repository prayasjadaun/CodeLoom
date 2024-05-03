import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class CodingInterviewBookPage extends StatefulWidget {
  const CodingInterviewBookPage({super.key});

  @override
  State<CodingInterviewBookPage> createState() => _CodingInterviewBookPageState();
}

class _CodingInterviewBookPageState extends State<CodingInterviewBookPage> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/booksPdf/CrackingtheCodingInterview.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cracking the Coding Interview'),
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

