import 'package:flutter/material.dart';

abstract class Dialog {
  Button createButton();

  Widget render() {
    Button okButton = createButton();

    okButton.onClick(2);
    return okButton.onRender();
  }
}

class WindowsDialog extends Dialog {
  @override
  Button createButton() {
    return WindowsButton();
  }
}

class WebDialog extends Dialog {
  @override
  Button createButton() {
    return HTMLButton();
  }
}

// ---------------------
abstract class Button {
  void onClick(int action);
  Widget onRender();
}

class WindowsButton implements Button {
  @override
  void onClick(int action) {}
  @override
  Widget onRender() {
    return ElevatedButton(
      child: Text("windows button"),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
    );
  }
}

class HTMLButton implements Button {
  @override
  void onClick(int action) {}

  @override
  Widget onRender() {
    return ElevatedButton(
      child: Text("html button"),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
      ),
    );
  }
}

class Factory extends StatelessWidget {
  const Factory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Dialog _instance = WindowsDialog();
    // Dialog _instance = WebDialog();
    return Scaffold(
      body: Center(
        child: _instance.render(),
      ),
    );
  }
}
