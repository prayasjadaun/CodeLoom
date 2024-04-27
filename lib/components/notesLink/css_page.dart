import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class CssPage extends StatefulWidget {
  const CssPage({super.key});

  @override
  State<CssPage> createState() => _CssPageState();
}

class _CssPageState extends State<CssPage> {
  late PdfControllerPinch pdfControllerPinch;


  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/notesPdf/CSS_Complete_Notes.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CSS Complete Notes'),
        ),
        body: _buildUI()
    );
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
