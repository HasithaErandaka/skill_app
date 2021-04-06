import 'package:flutter/material.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';

class Members extends StatefulWidget {
  @override
  _MembersState createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Team Members'),
      ),
      body: Card(
        child: ListView(
          children: <Widget>[
            ListTileMoreCustomizable(
              leading: Icon(Icons.account_circle),
              title: Row(children: [Text("Kasun Jayalath"), Text(" 21243")]),
              subtitle:
                  Row(children: [Text("CK-2123,CK-1233"), Text(' Molding')]),
            ),
            Divider(),
            ListTileMoreCustomizable(
              leading: Icon(Icons.account_circle),
              title: Row(children: [Text("Nalaka Perera"), Text(" 21243")]),
              subtitle: Row(children: [Text("CK : 2123"), Text(' Molding')]),
            ),
            Divider(),
            ListTileMoreCustomizable(
              leading: Icon(Icons.account_circle),
              title: Row(children: [Text("Kasun Perera"), Text(" 21243")]),
              subtitle: Row(children: [
                Text("CK : 2123"),
                Text(' XL '),
                Text(' Molding')
              ]),
            ),
            Divider(),
            // A [ListTileMoreCustomizable] with [onTap],
            // [leading], [title], [trailing].
            ListTileMoreCustomizable(
              leading: Icon(Icons.account_circle),
              title: Row(children: [Text("Nimal Jayalath"), Text(" 21243")]),
              subtitle: Row(children: [
                Text("CK : 2123"),
                Text(' XL '),
                Text(' Molding')
              ]),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
