import 'package:flutter/material.dart';
import 'package:singletonapp/screen_one.dart';
import 'package:singletonapp/service_locator.dart';

import 'service_locator.dart';

void main() {
  setup();
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  ScreenOne(),
    );
  }
}


