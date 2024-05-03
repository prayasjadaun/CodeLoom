import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class IOSBookPage extends StatefulWidget {
  const IOSBookPage({super.key});

  @override
  State<IOSBookPage> createState() => _IOSBookPageState();
}

class _IOSBookPageState extends State<IOSBookPage> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/booksPdf/iOSProgramming_TheBigNerdRanchGuideEdition.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('iOS Programming_TheBigNerdRanch Guide 7th Edition'),
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

