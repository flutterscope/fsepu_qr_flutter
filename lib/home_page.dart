import 'package:flutter/material.dart';
import 'package:fsepu_qr_flutter/static_qr_page.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'dynamic_qr_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void goToStaticQRPage() async {
    await Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const StaticQRPage(),
      ),
      (route) => true,
    );
  }

  void goToDynamicQRPagePage() async {
    await Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const DynamicQRPage(),
      ),
      (route) => true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('qr_flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: goToStaticQRPage,
                child: const Text("Static QR Code")),
            ElevatedButton(
                onPressed: goToDynamicQRPagePage,
                child: const Text("Dynamic QR Code")),
          ],
        ),
      ),
    );
  }
}
