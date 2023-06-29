import 'package:flutter/material.dart';

class ThemeDelSistema extends StatelessWidget {
  const ThemeDelSistema({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    print(_isDarkTheme);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 150,
        width: 150,
      ),
    );
  }
}
