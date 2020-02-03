import 'package:flutter/material.dart';

import 'model/wariga.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: WarigaGemetScreen(),
    );
  }
}

class WarigaGemetScreen extends StatefulWidget {
  @override
  _WarigaGemetScreenState createState() => _WarigaGemetScreenState();
}

class _WarigaGemetScreenState extends State<WarigaGemetScreen> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => SearchWarigaScreen(),
            );
          },
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>['One', 'Two', 'Free', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              )
            ],
          ),
        ));
  }
}

class SearchWarigaScreen extends StatefulWidget {
  @override
  _SearchWarigaScreenState createState() => _SearchWarigaScreenState();
}

class _SearchWarigaScreenState extends State<SearchWarigaScreen> {
  String pancawaraValue = 'Umanis-Iswara';
  String saptawaraValue = 'Sukra';
  String sasihValue = 'Kasa';
  String tanggalValue = '1';
  List<Map<String, dynamic>> pancawara = Wariga().getPancawaraData;

  List<Map<String, dynamic>> saptawara = Wariga().getSaptawaraData;

  List<Map<String, dynamic>> sasih = Wariga().getSasihData;

  List<Map<String, dynamic>> tanggal = Wariga().getTanggalData;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Pancawara'),
              DropdownButton<String>(
                isExpanded: true,
                value: pancawaraValue,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (newValue) {
                  setState(() {
                    pancawaraValue = newValue;
                  });
                },
                items: pancawara.map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem<String>(
                    value: value['nama'],
                    child: Text(value['nama']),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Text('Saptawara'),
              DropdownButton<String>(
                isExpanded: true,
                value: saptawaraValue,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (newValue) {
                  setState(() {
                    saptawaraValue = newValue;
                  });
                },
                items: saptawara.map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem<String>(
                    value: value['nama'],
                    child: Text(value['nama']),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Text('Sasih'),
              DropdownButton<String>(
                isExpanded: true,
                value: sasihValue,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (newValue) {
                  setState(() {
                    sasihValue = newValue;
                  });
                },
                items: sasih.map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem<String>(
                    value: value['nama'],
                    child: Text(value['nama']),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Text('Tanggal'),
              DropdownButton<String>(
                isExpanded: true,
                value: tanggalValue,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (newValue) {
                  setState(() {
                    tanggalValue = newValue;
                  });
                },
                items: tanggal.map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem<String>(
                    value: value['nama'],
                    child: Text(value['nama']),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Cari',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
