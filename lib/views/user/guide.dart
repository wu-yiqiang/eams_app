import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';

class GuidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("操作指引")),
      // body: PDFView(
      //   filePath: 'assets/pdf/guide.pdf',
      //   enableSwipe: true,
      //   autoSpacing: false,
      //   pageFling: false,
      //   backgroundColor: Colors.grey,
      //   onError: (error) {
      //     print(error.toString());
      //   },
      //   onPageError: (page, error) {
      //     print('$page: ${error.toString()}');
      //   },
      // ),
    );
  }
}
