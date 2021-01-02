import 'package:flutter/material.dart';

//our widgets
import 'package:contador/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: HomePage(),
        ));
  }
}
