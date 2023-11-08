import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_message/pages/message_page.dart';



class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Message'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Let\'s try to make YOU HAPPY\n \nPress the button below',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Row(
          children: [
            Icon(Icons.navigate_next),
            Text('GO'),
          ],
        ),

          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>MessagePage()));
          }),
    );

  }

}