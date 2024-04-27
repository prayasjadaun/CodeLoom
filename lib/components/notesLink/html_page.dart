import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class HtmlPage extends StatefulWidget {
  const HtmlPage({super.key});

  @override
  State<HtmlPage> createState() => _HtmlPageState();
}

class _HtmlPageState extends State<HtmlPage> {
  late PdfControllerPinch pdfControllerPinch;


  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/notesPdf/HTML_Complete_Notes.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HTML Complete Notes'),
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
