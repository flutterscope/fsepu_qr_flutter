import 'package:flutter/material.dart';

class DynamicQRPage extends StatefulWidget {
  const DynamicQRPage({Key? key}) : super(key: key);

  @override
  State<DynamicQRPage> createState() => _DynamicQRPageState();
}

class _DynamicQRPageState extends State<DynamicQRPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic QR Code'),
      ),
      body: Center(),
    );
  }
}
