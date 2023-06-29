import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practice Code',
      // theme: ThemeData(
      //   useMaterial3: true,
      //   primarySwatch: Colors.blue,
      // ),
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light, // O Brightness.dark para un tema oscuro
        // Otros ajustes de tema
      ),
      home: const Home(),
    );
  }
}
