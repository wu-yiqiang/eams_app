import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class GuidePage extends StatelessWidget {
  final pdfController = PdfControllerPinch(
    document: PdfDocument.openAsset('assets/pdf/guide.pdf'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("操作指引")),
      body: PdfViewPinch(controller: pdfController, scrollDirection: Axis.vertical),
    );
  }
}
