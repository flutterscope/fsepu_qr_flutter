import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class StaticQRPage extends StatefulWidget {
  const StaticQRPage({Key? key}) : super(key: key);

  @override
  State<StaticQRPage> createState() => _StaticQRPageState();
}

class _StaticQRPageState extends State<StaticQRPage> {
  String qrData = "FlutterScope Static QR Code";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Static QR Code'),
      ),
      body: Center(
        child: QrImage(
          data: qrData,
          version: QrVersions.auto,
          size: 200.0,
        ),
      ),
    );
  }
}
