import 'package:flutter/material.dart';
import 'package:radency_task2/contact_widget.dart';

void main() {
  runApp(MyApp());
}

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
      home: MyHomePage(title: 'Contacts'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),

      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children:contacts.map((element) => ContactWidget(
            user: element,
          )).toList(),
        ),
      ),
    );
  }
}

List contacts = [
  {
    "name" : "John Agnew",
    "company" : "Stanford Univercity",
    "favourite" : true,
  },
  {
    "name" : "Joshua Allison",
    "company" : "Hooli Inc.",
    "favourite" : false,
  },
  {
    "name" : "Sam Barnard",
    "company" : "UC Barkeley",
    "favourite" : false,
  },
];