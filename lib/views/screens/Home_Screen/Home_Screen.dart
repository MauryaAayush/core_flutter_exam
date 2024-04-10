import 'dart:io';

import 'package:core_flutter_exam/utils/Students_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Add_Screen/Add_screen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // TextEditingController txtname = TextEditingController();
          // TextEditingController txtgrid = TextEditingController();
          // TextEditingController txtstd = TextEditingController();
          // File? image;
          // Map tempMap = {
          //   'image': image,
          //   'studentGrid': txtgrid,
          //   'studentName': txtname,
          //   'studentStd': txtstd,
          // };
          // Student.add(tempMap);
          Navigator.of(context).pushNamed('/second');
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Students Page'),
      ),


      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

            ...List.generate(Student.length, (index) => InkWell(
               onTap: () {
                 setState(() {
                   Navigator.of(context).pushNamed('/third');
                 });
               },
                child: All_data(index)))

          ],
        ),
      ),
    );
  }

  Widget All_data(int index) {
    return Container(
      padding: EdgeInsets.all(15),
      alignment: Alignment.center,
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // SizedBox(width: 15,),
          Column(
            children: [
              CircleAvatar(
                foregroundColor: Colors.teal,
                radius: 25,
              ),
              Text('1')
            ],
          ),


          SizedBox(width: 20,),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text('Aayush'),
              Text('12'),
            ],
          ),

          SizedBox(width: 200,),


          GestureDetector(
               onTap: () {
                 setState(() {

                 });
               },
              child: Icon(Icons.edit)),

          SizedBox(width: 10,),

          GestureDetector(
              onTap: () {
                setState(() {
                  Student.removeAt(index);
                });
              },
              child: Icon(Icons.delete)),
        ],
      ),
    );
  }
}
