import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:string_validator/string_validator.dart';

class AddStyle extends StatefulWidget {
  @override
  _AddStyleState createState() => _AddStyleState();
}

class _AddStyleState extends State<AddStyle> {
  final String url = "https://sillskill.herokuapp.com/style/add";
  final _formStyleKey = GlobalKey<FormState>();

  String styleNumber;
  String styleName;
  String styleSize;

  int _value = 1;

  @override
  Widget build(BuildContext context) {
    Map data = {
      "Style Number": styleNumber,
      "Style Name": styleName,
      "Style Size": styleSize,
    };

    String body = json.encode(data);

    Future addStyle(body) async {
      http.Response response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: body,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Style'),
      ),
      body: SingleChildScrollView(
        child: Form(
            key: _formStyleKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    bottom: 20,
                  ),
                  child: Text(
                    'Add New Style',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    validator: (val) =>
                        val.isEmpty ? 'Enter Style Number' : null,
                    onChanged: (val) {
                      setState(() {
                        styleNumber = val;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Enter Style Number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    validator: (val) => val.isEmpty ? 'Enter Style Name' : null,
                    onChanged: (val) {
                      setState(() {
                        styleName = val;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Enter Style Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Row(
                      children: [
                        DropdownButton(
                          isExpanded: false,
                          value: _value,
                          items: [
                            DropdownMenuItem(
                              child: Text("Enter Style Sizes"),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text("Small"),
                              value: 2,
                            ),
                            DropdownMenuItem(
                              child: Text("XL"),
                              value: 3,
                            ),
                            DropdownMenuItem(
                              child: Text("XXL"),
                              value: 4,
                            )
                          ],
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text('Add'),
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(33)),
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          addStyle(body);
                        });
                      },
                      child: Text(
                        'Add Style',
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
