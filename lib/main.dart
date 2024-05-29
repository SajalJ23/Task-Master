import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_master/pages/home_page.dart';

void main() async {
  // Init Hive
  await Hive.initFlutter();
  // Open a box
  // ignore: unused_local_variable
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primaryColor: Color(0x89abe3ff)),
      debugShowCheckedModeBanner: false,
    );
  }
}
