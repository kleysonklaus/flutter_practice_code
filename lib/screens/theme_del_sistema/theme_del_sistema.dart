import 'package:flutter/material.dart';

class ThemeDelSistema extends StatelessWidget {
  const ThemeDelSistema({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    final dark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    print("dark es: $_isDarkTheme");
    print("dark es: $dark");
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 150,
        width: 150,
        color: dark ? Colors.white : Colors.black,
      ),
    );
  }
}
