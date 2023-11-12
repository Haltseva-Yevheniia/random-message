import 'package:flutter/material.dart';
import 'package:random_message/components/texts.dart';
import 'package:random_message/pages/message_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: homePageAppBarTitle,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            homePageBodyMainText,
            homePageBodyMainText2,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Row(
            children: [
              const Icon(Icons.navigate_next),
              homePageButtonText,
            ],
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MessagePage()));
          }),
    );
  }
}
