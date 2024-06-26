import 'package:exam_e_commerce/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'Screens/CartScreen.dart';
import 'Screens/DetailScreen.dart';

void main()
{
  runApp(MyApp(),);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home':(context) => HomePage(),
        '/detail':(context) => DetailPage(),
        '/cart':(context) => CartPage(),
      },
    );
  }
}

