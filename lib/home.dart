import 'package:flutter/material.dart';
import 'package:flutter_practice_code/screens/simple_list_view.dart';
import 'package:flutter_practice_code/widgets/fpc_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App Demo examples")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: Center(
          child: Column(
            children: [
              FpcButtom(
                label: "Simple List View",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const SimpleListview(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 5),
              FpcButtom(
                label: "Simple List View 2",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const SimpleListview(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
