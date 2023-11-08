import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_message/list_of_messages.dart';
import 'dart:math';


class MessagePage extends StatefulWidget{
  MessagePage({super.key});

  State <MessagePage> createState() => _MessagePageState();}

  class _MessagePageState extends State<MessagePage>{
String firstMessage = 'You can choose to become more happy';

void changeMessage () {
  int index= Random().nextInt(100) + 1;
  String newMessage = messages[index];
  firstMessage=newMessage;

}

  @override
  Widget build (BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Message for You'),
      centerTitle: true,
    ),
    body: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Center(
        child: Text(firstMessage, textAlign: TextAlign.center, style: TextStyle(fontSize: 25),),

      ),
    ),

    floatingActionButton: FloatingActionButton(

      onPressed: (){
        setState(() {
          changeMessage();
        });

      },
        child: Icon(Icons.change_circle),
    ),
  );
  }

}