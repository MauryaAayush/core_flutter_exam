import 'package:flutter/material.dart';

class Detail_Page extends StatefulWidget {
  const Detail_Page({super.key});

  @override
  State<Detail_Page> createState() => _Detail_PageState();
}

class _Detail_PageState extends State<Detail_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Student Detail'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 60,
              foregroundColor: Colors.cyan,
            ),
            Text('Grid : 1'),

            SizedBox(height: 30,),
            Text('Name : Aayush'),
            SizedBox(height: 30,),
            Text('Std : 12')
          ],
        ),
      ),
    );
  }
}
