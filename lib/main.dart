import 'package:core_flutter_exam/views/screens/Add_Screen/Add_screen.dart';
import 'package:core_flutter_exam/views/screens/Detail_Page/Detail_page.dart';
import 'package:core_flutter_exam/views/screens/Home_Screen/Home_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      initialRoute: '/',

      routes: {
          '/' : (context) => Home_Screen(),
          '/second' : (context) => Add_screen(),
          '/third' : (context) => Detail_Page(),

      },

    );
  }
}


