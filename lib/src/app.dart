import 'package:dynamic_dark_mode/helpers/drawer_widget_helper.dart';
import 'package:dynamic_dark_mode/screens/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final bool darkThemeEnabled = false;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      stream: bloc.darkThemeEnabled,
      initialData: false,
      builder: (context, snapshot) {
        return MaterialApp(
          title: "Dynamic Dark Mode",
          theme: snapshot.data ? ThemeData.dark() : ThemeData.light(),
          home: Home(darkThemeEnabled: darkThemeEnabled, snapshot: snapshot,),
        );
      }
    );
  }
}