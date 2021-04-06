import 'package:flutter/material.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';

class MyStudies extends StatefulWidget {
  @override
  _MyStudiesState createState() => _MyStudiesState();
}

class _MyStudiesState extends State<MyStudies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Studies')),
      body: Card(
        child: ListView(
          children: <Widget>[
            ListTileMoreCustomizable(
              leading: Icon(Icons.account_circle),
              title: Row(children: [Text("Kasun Jayalath"), Text(" 21243")]),
              subtitle: Row(children: [
                Text("CK : 2123"),
                Text(' XL '),
                Text(' Molding')
              ]),
              trailing: Icon(
                Icons.brightness_1,
                color: Colors.red,
              ),
              onTap: (details) {
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(
                    details.globalPosition.dx,
                    details.globalPosition.dy,
                    details.globalPosition.dx,
                    details.globalPosition.dy,
                  ),
                  items: <PopupMenuEntry<int>>[
                    PopupMenuItem(
                      child: Text("SMV - 3.67"),
                    ),
                    PopupMenuItem(
                      child: Text("Efficiency - 20%"),
                    ),
                    PopupMenuItem(
                      child: Text("Approved By - Sudeera"),
                    ),
                    PopupMenuItem(
                      child: Text("2020 - 12 - 01"),
                    ),
                  ],
                );
              },
            ),
            Divider(),
           ListTileMoreCustomizable(
              leading: Icon(Icons.account_circle),
              title: Row(children: [Text("Nalaka Perera"), Text(" 21243")]),
              subtitle: Row(children: [
                Text("CK : 2123"),
                Text(' XL '),
                Text(' Molding')
              ]),
              trailing: Icon(
                Icons.brightness_1,
                color: Colors.yellow,
              ),
              onTap: (details) {
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(
                    details.globalPosition.dx,
                    details.globalPosition.dy,
                    details.globalPosition.dx,
                    details.globalPosition.dy,
                  ),
                  items: <PopupMenuEntry<int>>[
                    PopupMenuItem(
                      child: Text("SMV - 3.67"),
                    ),
                    PopupMenuItem(
                      child: Text("Efficiency - 20%"),
                    ),
                    PopupMenuItem(
                      child: Text("Approved By - Sudeera"),
                    ),
                    PopupMenuItem(
                      child: Text("2020 - 12 - 01"),
                    ),
                  ],
                );
              },
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
              trailing: Icon(
                Icons.brightness_1,
                color: Colors.green,
              ),
              onTap: (details) {
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(
                    details.globalPosition.dx,
                    details.globalPosition.dy,
                    details.globalPosition.dx,
                    details.globalPosition.dy,
                  ),
                  items: <PopupMenuEntry<int>>[
                    PopupMenuItem(
                      child: Text("SMV - 3.67"),
                    ),
                    PopupMenuItem(
                      child: Text("Efficiency - 20%"),
                    ),
                    PopupMenuItem(
                      child: Text("Approved By - Sudeera"),
                    ),
                    PopupMenuItem(
                      child: Text("2020 - 12 - 01"),
                    ),
                  ],
                );
              },
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
              trailing: Icon(
                Icons.brightness_1,
                color: Colors.red,
              ),
              onTap: (details) {
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(
                    details.globalPosition.dx,
                    details.globalPosition.dy,
                    details.globalPosition.dx,
                    details.globalPosition.dy,
                  ),
                  items: <PopupMenuEntry<int>>[
                    PopupMenuItem(
                      child: Text("SMV - 3.67"),
                    ),
                    PopupMenuItem(
                      child: Text("Efficiency - 20%"),
                    ),
                    PopupMenuItem(
                      child: Text("Approved By - Sudeera"),
                    ),
                    PopupMenuItem(
                      child: Text("2020 - 12 - 01"),
                    ),
                  ],
                );
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
