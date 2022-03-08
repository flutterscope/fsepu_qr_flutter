import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class DynamicQRPage extends StatefulWidget {
  const DynamicQRPage({Key? key}) : super(key: key);

  @override
  State<DynamicQRPage> createState() => _DynamicQRPageState();
}

class _DynamicQRPageState extends State<DynamicQRPage> {
  String qrData = "FlutterScope Static QR Code";
  bool isQRCodeGenerated = false;
  final TextEditingController _qrDataTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget _generatedQRCodeWidget() {
      return SizedBox(
        child:
            QrImage(size: 300.0, backgroundColor: Colors.white, data: qrData),
      );
    }

    _generateQRCode() {
      setState(() {
        isQRCodeGenerated = true;
        qrData = _qrDataTextEditingController.text.toString();
        debugPrint(" ------------- QR Data ------------- ");
        debugPrint(qrData);
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic QR Code'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "QR Data",
                    hintText: "Enter your QR Data",
                  ),
                  controller: _qrDataTextEditingController,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                    onPressed: _generateQRCode,
                    child: const Text("Generate QR Code")),
                const SizedBox(
                  height: 10.0,
                ),
                Text(qrData),
                const SizedBox(
                  height: 10.0,
                ),
                isQRCodeGenerated ? _generatedQRCodeWidget() : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
