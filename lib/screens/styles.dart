import 'package:flutter/material.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';

class Styles extends StatefulWidget {
  @override
  _StylesState createState() => _StylesState();
}

class _StylesState extends State<Styles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Styles')),
      body: Card(
        child: ListView(
          children: <Widget>[
            ListTileMoreCustomizable(
              title: Text("CK"),
              subtitle: Text("Sizes : S, XL, XXL"),
              trailing: Text('21443'),
            ),
            Divider(),
            ListTileMoreCustomizable(
              title: Text("HEISSER"),
              subtitle: Text("Sizes : S, XL, XXL"),
              trailing: Text('21443'),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
