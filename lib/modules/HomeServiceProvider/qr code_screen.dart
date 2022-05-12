import 'package:flutter/material.dart';

  import 'package:qr_flutter/qr_flutter.dart';
class QrCodeScreen extends StatefulWidget {

  @override
  _QrCodeScreenState createState() => _QrCodeScreenState();
}

class _QrCodeScreenState extends State<QrCodeScreen> {
  @override

  var controllre=TextEditingController();

  @override
  Widget build(BuildContext context) {
  return
    Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Center(
  child: QrImage(
  data: controllre.text,
  backgroundColor: Colors.white,
  size: 300.0,
  ),
  ),
  ],

  );
  }
}
