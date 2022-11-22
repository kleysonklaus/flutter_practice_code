import 'package:flutter/material.dart';
import 'package:flutter_practice_code/widgets/fpc_button.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Demo")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              FpcButtom(
                label: "primera parte",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
