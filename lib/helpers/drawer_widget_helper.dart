import 'dart:async';

import 'package:flutter/material.dart';

class DrawerHelperWidget extends StatefulWidget {
  final darkThemeEnabled;
  final AsyncSnapshot snapshot;
  DrawerHelperWidget({this.darkThemeEnabled, this.snapshot});
  @override
  _DrawerHelperWidgetState createState() => _DrawerHelperWidgetState();
}

class _DrawerHelperWidgetState extends State<DrawerHelperWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Dark Mode Changer"),
            ),
            ListTile(
              title: Text("Dark Mode"),
              trailing: Switch(
                value: widget.snapshot.data,
                onChanged: bloc.changeTheme,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Bloc{
  final _themeController = StreamController<bool>();
  get changeTheme => _themeController.sink.add;
  get darkThemeEnabled => _themeController.stream;

}

final bloc = Bloc();
