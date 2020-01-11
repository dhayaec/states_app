import 'package:flutter/material.dart';
import 'package:states_app/models/photos.dart';
import 'package:states_app/pages/home_page.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Injector(
      inject: [
        Inject<Photos>(() => Photos()),
      ],
      builder: (context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
