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
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      child: const Text("windows button"),
    );
  }
}

class HTMLButton implements Button {
  @override
  void onClick(int action) {}

  @override
  Widget onRender() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
      ),
      child: const Text("html button"),
    );
  }
}

class Factory extends StatelessWidget {
  const Factory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Dialog instance = WindowsDialog();
    // Dialog instance = WebDialog();
    return Scaffold(
      body: Center(
        child: instance.render(),
      ),
    );
  }
}
