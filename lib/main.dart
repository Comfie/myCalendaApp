import 'package:flutter/material.dart';
import 'LogIn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Calendar App Spaanify X DSC',
      theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.amber,
          accentColorBrightness: Brightness.dark
      ),
      home: LogIn(),
    );
  }
}
