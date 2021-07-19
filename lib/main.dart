import 'package:flutter/material.dart';
import 'package:spacex/presentation/pages/home_page.dart';
import 'package:spacex/services/service_locator.dart';

void main() {
  setupServices();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SpaceX Missions',
      theme: ThemeData(
        primaryColor: Colors.cyan,
        textTheme: TextTheme(
          headline6: TextStyle(fontSize: 18.0, color: Colors.cyan),
          bodyText2: TextStyle(fontSize: 14.0,fontStyle: FontStyle.italic),
    ),
      ),
      home: HomePage(),
    );
  }
}
