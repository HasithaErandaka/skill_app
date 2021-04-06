import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:string_validator/string_validator.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final String url = "https://sillskill.herokuapp.com/tm/add";
  final _formRegisterKey = GlobalKey<FormState>();

  String epf;
  String firstName;
  String lastName;
  String style;
  String operations;
  List<String> styles = [];

  int _value = 1;
  int _value2 = 1;

  int mystyle = 0;

  @override
  Widget build(BuildContext context) {
    Map data = {
      "epf": epf,
      "fname": firstName,
      "sname": lastName,
      "style": style,
      "operation": operations,
    };

    String body = json.encode(data);

    Future addData(body) async {
      http.Response response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: body,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _formRegisterKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 90),
                child: Text(
                  'Register an Employee',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 45,
                      backgroundColor: Colors.blueAccent,
                    ),
                    SizedBox(width: 50),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Upload Image',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  validator: (val) => val.isEmpty ? 'Enter EPF' : null,
                  onChanged: (val) {
                    setState(() {
                      epf = val;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter EPF Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  validator: (val) => val.isEmpty ? 'Enter FirstName' : null,
                  onChanged: (val) {
                    setState(() {
                      firstName = val;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter First Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  validator: (val) => val.isEmpty ? 'Enter Last Name' : null,
                  onChanged: (val) {
                    setState(() {
                      lastName = val;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Last Name',
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
                            child: Text("Enter Styles"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("ST679"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("ST671"),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text("ST672"),
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
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              // _value = styles[mystyle];
                              mystyle++;
                            });

                            print(mystyle.toString());
                            print(mystyle);
                          },
                          child: Text('Add'),
                          color: Colors.blue,
                        ),
                      )
                    ],
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
                        value: _value2,
                        items: [
                          DropdownMenuItem(
                            child: Text("Enter Operations"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Molding"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Dancing"),
                            value: 3,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value2 = value;
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
                padding: const EdgeInsets.only(
                    top: 40, left: 130, bottom: 50, right: 20),
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
                        addData(body);
                      });
                    },
                    child: Text(
                      'Add Employee',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
