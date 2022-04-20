import 'package:flutter/material.dart';
import 'package:test_app/simple_interest.dart';
import 'dashboard.dart';

import 'arithmetic_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => const Dashboard(),
        '/Screen1':(context) => MyScreen(),
        '/Screen2':(context) => Screen2(),
      },
    ),
  );
}

