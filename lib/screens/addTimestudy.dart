import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddTimeStudy extends StatefulWidget {
  AddTimeStudy({Key key}) : super(key: key);

  @override
  _AddTimeStudyState createState() => _AddTimeStudyState();
}

class _AddTimeStudyState extends State<AddTimeStudy> {
  final String url = "https://sillskill.herokuapp.com/study/add";
  final _formTimestudyKey = GlobalKey<FormState>();

  String epf;
  String styleName;
  String styleSize;
  String operation;
  String capacity;
  String smv;
  String efficiency;
  String studyby;
  String approvedby;

  @override
  Widget build(BuildContext context) {
    Map data = {
      "epf": epf,
      "Style Name": styleName,
      "Style Size": styleSize,
      "Operation": operation,
      "Capacity": capacity,
      "SMV": smv,
      "Efficiency": efficiency,
      "Study By": studyby,
      "Approved by": approvedby,
    };

    String body = json.encode(data);

    Future addTimestudy(body) async {
      http.Response response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: body,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Time Study'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _formTimestudyKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
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
                padding: const EdgeInsets.all(10.0),
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
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (val) => val.isEmpty ? 'Enter Style Size' : null,
                  onChanged: (val) {
                    setState(() {
                      styleSize = val;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Style Size',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (val) => val.isEmpty ? 'Enter Operation' : null,
                  onChanged: (val) {
                    setState(() {
                      operation = val;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Operation',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (val) => val.isEmpty ? 'Enter Capcity' : null,
                  onChanged: (val) {
                    setState(() {
                      capacity = val;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Capacity',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (val) => val.isEmpty ? 'Enter SMV' : null,
                  onChanged: (val) {
                    setState(() {
                      smv = val;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter SMV',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (val) => val.isEmpty ? 'Enter Efficiency' : null,
                  onChanged: (val) {
                    setState(() {
                      efficiency = val;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Efficiency',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (val) =>
                      val.isEmpty ? 'Enter who approved the time study' : null,
                  onChanged: (val) {
                    setState(() {
                      approvedby = val;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Approved By',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, left: 130, bottom: 50, right: 20),
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
                        addTimestudy(body);
                      });
                    },
                    child: Text(
                      'Add Time Study',
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
