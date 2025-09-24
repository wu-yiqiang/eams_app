import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class ContractPage extends StatelessWidget {
  final pdfController = PdfControllerPinch(
    document: PdfDocument.openAsset('assets/pdf/contract.pdf'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("个人合同")),
      body: PdfViewPinch(
        controller: pdfController,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
