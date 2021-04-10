import 'package:flutter/material.dart';
import 'package:radency_task2/main.dart';

class ContactWidget extends StatefulWidget{
  final user;

  const ContactWidget({Key key, this.user}) : super(key: key);

  @override
  _ContactWidgetState createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  var user;

  @override
  void initState() {
    user = widget.user;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: Container(
            width: 30,
            height: 30,
            color: user["favourite"] ? Colors.green : Colors.red,
          ),
          onTap: (){
            setState(() {
              contacts.firstWhere((element) => user == element)["favourite"] = !(user["favourite"]);
            });
          },
        )
      ],
    );
  }
}