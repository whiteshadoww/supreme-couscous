import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_utility/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white70, // navigation bar color
      statusBarColor: Colors.white70, // status bar color
    ));

    return MaterialApp(
      title: 'iPay',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColorDark: Colors.white,
          primaryColor: Colors.white),
      home: HomePage(),
    );
  }
}
