import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/lastestRate.dart';
/*import 'package:flutter_application_1/screens/convert.dart';*/

void main() {
  runApp(MaterialApp(
    title: "Exchange Currency",
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Exchange Currency"),
      ),
      body: const LatestRate(),
    ),
  ));
}