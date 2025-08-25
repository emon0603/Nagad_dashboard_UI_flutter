import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RedStatusBarWrapper extends StatelessWidget {
  final Widget child;

  const RedStatusBarWrapper({required this.child});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Color(0xFFD32F2F),        // লাল ব্যাকগ্রাউন্ড
        statusBarIconBrightness: Brightness.light, // Android-এ সাদা
        statusBarBrightness: Brightness.dark,      // iOS-এ সাদা
      ),
      child: child,
    );
  }
}
