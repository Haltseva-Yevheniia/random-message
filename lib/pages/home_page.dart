import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_message/components/texts.dart';
import 'package:random_message/pages/message_page.dart';



class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomePageAppBarTitle,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomePageBodyMainText,
            HomePageBodyMainText2,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Row(
          children: [
            Icon(Icons.navigate_next),
            HomePageButtonText,
          ],
        ),

          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>MessagePage()));
          }),
    );

  }

}