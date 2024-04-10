import 'dart:io';
import 'package:core_flutter_exam/utils/Students_list.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Add_screen extends StatefulWidget {
  const Add_screen({Key? key}) : super(key: key);

  @override
  State<Add_screen> createState() => _Add_screenState();
}

class _Add_screenState extends State<Add_screen> {
  final ImagePicker picker = ImagePicker();
  XFile? image;

  void _getImage() async {
    image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Add Student Data'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          GestureDetector(
            onTap: _getImage,
            child: CircleAvatar(
              radius: 60,
              foregroundImage:
                  image != null ? FileImage(File(image!.path)) : null,

            ),
          ),
          InkWell(
              onTap: () {
                setState(() {
                  image = null;
                });

              },
              child: Text("Remove")),

          Student_data("Enter grid", txtgrid),
          Student_data("Enter name", txtname),
          Student_data("Enter Std", txtstd),
          SizedBox(height: 100),
          ElevatedButton(
            onPressed: () {

              setState(() {
                File? image;
                Map tempMap = {
                  'image': image,
                  'studentGrid': txtgrid,
                  'studentName': txtname,
                  'studentStd': txtstd,
                };
                Student.add(tempMap);

                Navigator.of(context).pushReplacementNamed('/');
              });


            },
            child: Text(
              'Submit',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container Student_data(String name, TextEditingController controller) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          labelText: name,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

TextEditingController txtname = TextEditingController();
TextEditingController txtgrid = TextEditingController();
TextEditingController txtstd = TextEditingController();


