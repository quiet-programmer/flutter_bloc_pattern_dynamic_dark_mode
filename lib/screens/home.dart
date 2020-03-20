import 'package:dynamic_dark_mode/helpers/drawer_widget_helper.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final darkThemeEnabled;
  final AsyncSnapshot snapshot;
  Home({this.darkThemeEnabled, this.snapshot});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dark Mode"),
      ),
      drawer: DrawerHelperWidget(darkThemeEnabled: widget.darkThemeEnabled, snapshot: widget.snapshot,),
      body: Center(
        child: Text("Dark Mode Here"),
      ),
    );
  }
}