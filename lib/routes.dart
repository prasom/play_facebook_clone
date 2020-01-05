import 'package:flutter/material.dart';
import 'package:play_facebook_clone/screens/home/home.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/Home': (BuildContext context) => new Home()
  };

  Routes() {
    runApp(new MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      title: 'Flutter Demo',
      routes: routes,
      home: new Home(),
    ));
  }
}
