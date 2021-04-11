import 'package:flutter/material.dart';
import 'package:radency_task2/main.dart';
import 'package:radency_task2/model/contact.dart';

class ContactWidget extends StatefulWidget{
  final Contact user;

  const ContactWidget({Key key, this.user}) : super(key: key);

  @override
  _ContactWidgetState createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  Contact user;

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
            color: user.favourite ? Colors.green : Colors.red,
          ),
          onTap: (){
            setState(() {
              contacts.firstWhere((element) => user.id == element.id).favourite = !(user.favourite);
            });
          },
        )
      ],
    );
  }
}