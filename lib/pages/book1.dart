import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
class PDFViewerPage extends StatelessWidget {
  static String id = "pdf";
  final String pdfAsset = "assets/pdf/ruxsatnoma.pdf"; // PDF fayl manzili

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF Viewer"),
      ),
      body: Center(
        child: PDFView(
          filePath: pdfAsset, // PDF fayl manzili
          enableSwipe: true, // Chiziqcha orqali sayohatni yoqish
          swipeHorizontal: true, // Ishi orqali sayohat qilishni yoqish
          autoSpacing: false, // Otomatik farq qilishni yoqish
          pageSnap: true, // Betlar orasida sug'urishni yoqish
          onRender: (pages) {
            print("Sahifalar soni: $pages");
          },
          onError: (error) {
            print("Xato yuz berdi: $error");
          },
        ),
      ),
    );
  }
}
