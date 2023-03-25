import 'package:flutter/material.dart';

import 'home_page.dart';

main() => runApp(MonApp());

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomePage(),
      title: 'Quiz',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.pink),
    );
  }
}