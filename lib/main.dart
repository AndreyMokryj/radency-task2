import 'package:flutter/material.dart';
import 'package:radency_task2/contact_widget.dart';
import 'package:radency_task2/model/contact.dart';
import 'package:radency_task2/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
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
    contacts.sort((el1, el2) => el1.getLastName().compareTo(el2.getLastName()));
    Map<String, List> contactsMap = <String, List>{};
    contacts.forEach((element) {
      String firstLetter = element.getLastNameLetter();
      if(contactsMap.containsKey(firstLetter)){
        contactsMap[firstLetter].add(element);
      } else {
        contactsMap[firstLetter] = [element];
      }
    });

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(title),
      //
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(child: Container())
          ] + contactsMap.entries.map((entry) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10
                ),
                child: Text(
                  entry.key,
                  style: letterStyle,
                )
              )
            ] + entry.value.map((element) => Container(
              margin: EdgeInsets.only(
                bottom: 10
              ),
              child: ContactWidget(
                  user: element,
                ),
            )).toList(),
          )).toList(),
        ),
      ),
    );
  }
}

List contacts = [
  Contact(
    name: "John Agnew",
    company : "Stanford Univercity",
    favourite : true,
  ),
  Contact(
    name : "Joshua Allison",
    company : "Hooli Inc.",
    favourite : true,
  ),
  Contact(
    name : "Sam Barnard",
    company : "UC Barkeley",
  ),
  Contact(
    name : "Megan Blakely",
    company : "Husky Energy",
  ),
  Contact(
    name : "Joel Cannon",
    company : "Hooli Inc.",
  ),
  Contact(
    name : "Kyle Dickenson",
    company : "Pied Piper",
    favourite : true,
  ),
  Contact(
    name : "Lauren Davis",
    company : "UC Barkeley",
  ),
];