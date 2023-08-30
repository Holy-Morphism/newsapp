import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (!Platform.isIOS) {
      return const MaterialApp(
        home: Scaffold(
          body: Center(
              child: Text(
            'data',
          )),
        ),
      );
    } else {
      return const CupertinoApp();
    }
  }
}
