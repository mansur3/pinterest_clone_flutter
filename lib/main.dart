import 'package:flutter/material.dart';
import './Pages/LoginPage/Login_page.dart';
import 'Pages/Home/Home.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pinterest",
      initialRoute: "/",
      routes : {
        "/" : (context) => LoginPage(),
        "/Home" : (context) => Home(),
      },
    );
  }
}
