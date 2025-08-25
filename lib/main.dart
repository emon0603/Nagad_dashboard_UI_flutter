import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nagad_ui/Home.dart';
import 'package:nagad_ui/util/RedStatusBarWrapper.dart';

void main() {




  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return RedStatusBarWrapper(child: child ?? SizedBox());
      },
      home: SafeArea(child: HomeActivity()),
    );
  }
}


