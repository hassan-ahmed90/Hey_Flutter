import 'package:flutter/material.dart';
import 'package:hey_flutter/view/refresh_list.dart';
import 'package:hey_flutter/view/streamBuilder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:StreamClass(),
    );
}}
