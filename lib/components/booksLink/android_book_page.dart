import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class AndroidBookPage extends StatefulWidget {
  const AndroidBookPage({super.key});

  @override
  State<AndroidBookPage> createState() => _AndroidBookPageState();
}

class _AndroidBookPageState extends State<AndroidBookPage> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/pdf/booksPdf/Android_Programming.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Android Programming'),
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
  }}